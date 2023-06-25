import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/address_model.dart';
import '../../data/api/model/base_address_model.dart';
import '../../data/api/model/delivery_shops_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/api/model/selectable_address_model.dart';
import '../../data/repository/closed_shop_repository.dart';
import '../../data/repository/delivery_repository.dart';
import '../../data/repository/front_repository.dart';
import '../../data/repository/shops_repository.dart';
import '../../util/datetime_formatter.dart';
import '../state/delivery_address_change_page_state.dart';

class DeliveryAddressChangePageViewModel extends StateNotifier<DeliveryAddressChangePageState> with LocatorMixin {
  DeliveryAddressChangePageViewModel() : super(DeliveryAddressChangePageState());

  static const _emptyName = 'なし';
  static const _withoutSelectName = '選択不要です';
  static const _withSelect = [SelectableAddressModel(code: '', name: '選択してください')];

  List<SelectableAddressModel> withoutSelect(String code) =>
      [SelectableAddressModel(code: code, name: _withoutSelectName)];
  final scrollController = ScrollController();
  final TextEditingController inputAddressDetail1Controller = TextEditingController(text: '');
  final TextEditingController inputAddressDetail2Controller = TextEditingController(text: '');

  @override
  void dispose() {
    scrollController.dispose();
    inputAddressDetail1Controller.dispose();
    inputAddressDetail2Controller.dispose();
    super.dispose();
  }

  set inputPostalNumber(String value) {
    state = state.copyWith(inputPostalNumber: value);
  }

  set isExistPostalNumber(bool value) {
    state = state.copyWith(isExistPostalNumber: value);
  }

  Future<bool> errorHandle(DioError error) async {
    // 配送先住所取得APIで検索結果なしの場合
    final httpStatus = error.response!.statusCode;
    if (httpStatus == HttpStatus.badRequest) {
      state = state.copyWith(isExistPostalNumber: false, isAlert: true);
      return true;
    }
    return false;
  }

  AddressModel get addressModel => AddressModel(
      postalNumber: state.inputPostalNumber,
      prefectureCode: state.selectedPrefecture,
      prefectureName: state.prefectures.firstWhere((e) => e.code == state.selectedPrefecture).name,
      cityCode: state.selectedCite,
      cityName: state.cites.firstWhere((e) => e.code == state.selectedCite).name,
      townCode: state.selectedTown,
      townName: _displayAddressName(state.towns.firstWhere((e) => e.code == state.selectedTown).name),
      chomeCode: state.selectedChome,
      chomeName: _displayAddressName(state.chomes.firstWhere((e) => e.code == state.selectedChome).name),
      addressDetail: inputAddressDetail1Controller.text,
      addressDetail2: inputAddressDetail2Controller.text);

  String _displayAddressName(String name) => name == _emptyName || name == _withoutSelectName ? '' : name;

  Future<bool> load(BaseAddressModel addressModel, bool firstRegister) async {
    final prefectures = await getPrefectures();
    // 初回利用登録以外に実行する
    if (!firstRegister) {
      try {
        final cites = await getCites(addressModel.prefectureCode);
        final towns = await getTowns(addressModel.prefectureCode, addressModel.cityCode);
        final chomes = await getChomes(addressModel.prefectureCode, addressModel.cityCode, addressModel.townCode);
        final deliveryShop = await getDeliverShopText(
            addressModel.prefectureCode, addressModel.cityCode, addressModel.townCode, addressModel.chomeCode);
        state = state.copyWith(
          prefectures: prefectures,
          cites: cites,
          towns: towns,
          chomes: chomes,
          inputPostalNumber: addressModel.postalNumber,
          selectedPrefecture: addressModel.prefectureCode,
          selectedCite: addressModel.cityCode,
          selectedTown: addressModel.townCode,
          selectedChome: addressModel.chomeCode,
          deliveryShop: deliveryShop,
        );
        inputAddressDetail1Controller.text = addressModel.addressDetail;
        inputAddressDetail2Controller.text = addressModel.addressDetail2;
      } on ServiceAreaException catch (_) {
        await _initInput();
        return true;
      }
    } else {
      state = state.copyWith(
        prefectures: prefectures,
        cites: _withSelect,
        towns: _withSelect,
        chomes: _withSelect,
      );
    }
    return true;
  }

  /// 都道府県一覧取得API
  Future<List<SelectableAddressModel>> getPrefectures() async {
    final response = await GetIt.I<DeliveryRepository>().getPrefectures();
    final prefectures = response.data;
    return [..._withSelect, ...prefectures];
  }

  /// 市区町村一覧取得API
  Future<List<SelectableAddressModel>> getCites(String prefectureCode) async {
    try {
      final response = await GetIt.I<DeliveryRepository>().getCites(prefectureCode: prefectureCode);
      final cites = response.data;
      return [..._withSelect, ...cites];
    } on DioError catch (error) {
      if (error.response!.statusCode == HttpStatus.badRequest) {
        throw ServiceAreaException();
      }
      rethrow;
    }
  }

  /// 通称一覧取得API
  Future<List<SelectableAddressModel>> getTowns(String prefectureCode, String cityCode) async {
    try {
      final response = await GetIt.I<DeliveryRepository>().getTowns(prefectureCode: prefectureCode, cityCode: cityCode);
      final towns = response.data;
      if (towns.length == 1 && towns[0].name == _emptyName) {
        return withoutSelect(towns[0].code);
      }
      return [..._withSelect, ...towns];
    } on DioError catch (error) {
      if (error.response!.statusCode == HttpStatus.badRequest) {
        throw ServiceAreaException();
      }
      rethrow;
    }
  }

  /// 丁目一覧取得API
  Future<List<SelectableAddressModel>> getChomes(String prefectureCode, String cityCode, String townCode) async {
    try {
      final response = await GetIt.I<DeliveryRepository>()
          .getChomes(prefectureCode: prefectureCode, cityCode: cityCode, townCode: townCode);
      final chomes = response.data;
      if (chomes.length == 1 && chomes[0].name == _emptyName) {
        return withoutSelect(chomes[0].code);
      }
      return [..._withSelect, ...chomes];
    } on DioError catch (error) {
      if (error.response!.statusCode == HttpStatus.badRequest) {
        throw ServiceAreaException();
      }
      rethrow;
    }
  }

  /// 配送先住所担当店舗取得API
  Future<DeliveryShopsModel> getDeliveryShops(
      String prefectureCode, String cityCode, String townCode, String chomeCode) async {
    try {
      final response = await GetIt.I<DeliveryRepository>().getDeliveryShops(
          prefectureCode: prefectureCode, cityCode: cityCode, townCode: townCode, chomeCode: chomeCode);
      return response.data.first;
    } on DioError catch (error) {
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final errorReasonCode =
          errorResponse.errorDetails.isNotEmpty ? errorResponse.errorDetails.first.errorReasonCode : '';
      if (errorReasonCode == '2100015') {
        throw ServiceAreaException();
      }
      rethrow;
    }
  }

  /// 機種依存チェックAPI
  Future<bool> checkPlatformCharacters(String target) async {
    final response = await GetIt.I<FrontRepository>().checkPlatformCharacters(target: target);
    return response.first.isValid;
  }

  /// 配送先住所取得(住所を自動入力ボタン押下時)
  Future<bool> getDeliveryAddresses(String postalNumber) async {
    final response = await GetIt.I<DeliveryRepository>().getDeliveryAddresses(postalNumber: postalNumber);
    final deliveryAddress = response.first;
    try {
      final cites = await getCites(deliveryAddress.prefectureCode);
      final towns = await getTowns(deliveryAddress.prefectureCode, deliveryAddress.cityCode);
      final chomes =
          await getChomes(deliveryAddress.prefectureCode, deliveryAddress.cityCode, deliveryAddress.townCode);
      state = state.copyWith(
        selectedPrefecture: deliveryAddress.prefectureCode,
        selectedCite: deliveryAddress.cityCode,
        selectedTown: deliveryAddress.townCode,
        selectedChome: chomes.first.code,
        cites: cites,
        towns: towns,
        chomes: chomes,
        isExistAddressDetail1: true,
        isValidInputAddressDetail1: true,
        isValidInputAddressDetail2: true,
        isExistPostalNumber: true,
        isExistDeliveryShop: true,
        isAlert: false,
      );
      // 店舗によっては丁目まで設定しないと配送先住所担当店舗取得APIの業務エラーが発生する（担当店舗が決まらない）為
      // 郵便番号検索による情報をプルダウンに設定したのちに、こちらの処理を実行する
      if (chomes.first.code != '') {
        final deliveryShop = await getDeliverShopText(
          deliveryAddress.prefectureCode,
          deliveryAddress.cityCode,
          deliveryAddress.townCode,
          chomes.first.code,
        );
        state = state.copyWith(deliveryShop: deliveryShop);
      } else {
        state = state.copyWith(deliveryShop: null);
      }
    } on ServiceAreaException catch (_) {
      await _initInput();
    }
    return true;
  }

  /// 確認するボタン押下時
  bool confirm() {
    // 全ての入力チェックがOKの場合Trueを返す
    return state.isExistAddressDetail1 && state.isValidInputAddressDetail1 && state.isValidInputAddressDetail2;
  }

  /// バリデーションチェック
  Future<void> validationCheck() async {
    final isExistAddressDetail1 = inputAddressDetail1Controller.text.isNotEmpty;
    final isValidInputAddressDetail1 = await checkPlatformCharacters(inputAddressDetail1Controller.text);
    final isValidInputAddressDetail2 = await checkPlatformCharacters(inputAddressDetail2Controller.text);
    final isAlert = !(state.isExistPostalNumber &&
        isExistAddressDetail1 &&
        state.isExistDeliveryShop &&
        isValidInputAddressDetail1 &&
        isValidInputAddressDetail2);
    state = state.copyWith(
      isExistAddressDetail1: isExistAddressDetail1,
      isValidInputAddressDetail1: isValidInputAddressDetail1,
      isValidInputAddressDetail2: isValidInputAddressDetail2,
      isAlert: isAlert,
    );
  }

  /// 画面トップにスクロール
  void topScrolled() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 1),
      curve: Curves.linear,
    );
  }

  /// 同一都道府県かどうかの判定
  bool isSamePrefecture(String value) {
    return state.selectedPrefecture == value;
  }

  /// 都道府県プルダウン変更
  Future<bool> changePrefecture(String value) async {
    if (value.isEmpty) {
      state = state.copyWith(
        selectedPrefecture: '',
        cites: _withSelect,
        selectedCite: '',
        towns: _withSelect,
        selectedTown: '',
        chomes: _withSelect,
        selectedChome: '',
        deliveryShop: null,
      );
      return true;
    }
    if (isSamePrefecture(value)) {
      return true;
    }
    try {
      final cites = await getCites(value);
      state = state.copyWith(
        selectedPrefecture: value,
        cites: cites,
        selectedCite: cites.first.code,
        towns: _withSelect,
        selectedTown: cites.first.code,
        chomes: _withSelect,
        selectedChome: cites.first.code,
        deliveryShop: null,
      );
    } on ServiceAreaException catch (_) {
      await _initInput();
    }
    return true;
  }

  /// 同一市区町村かどうかの判定
  bool isSameCite(String value) {
    return state.selectedCite == value;
  }

  /// 市区町村プルダウン変更
  Future<bool> changeCite(String value) async {
    if (value.isEmpty) {
      state = state.copyWith(
        selectedCite: '',
        towns: _withSelect,
        selectedTown: '',
        chomes: _withSelect,
        selectedChome: '',
        deliveryShop: null,
      );
      return true;
    }
    if (isSameCite(value)) {
      return true;
    }
    try {
      final towns = await getTowns(state.selectedPrefecture, value);
      final selectedTown = towns.length == 1 ? towns.first.code : '';
      state = state.copyWith(
        selectedCite: value,
        towns: towns,
        selectedTown: selectedTown,
        chomes: _withSelect,
        selectedChome: '',
        deliveryShop: null,
      );
      if (towns.first.name == _withoutSelectName) {
        return await changeTown(towns.first.code, townsWithoutSelect: true);
      }
    } on ServiceAreaException catch (_) {
      await _initInput();
    }
    return true;
  }

  /// 同一通称かどうかの判定
  bool isSameTown(String value) {
    return state.selectedTown == value;
  }

  /// 通称プルダウン変更
  Future<bool> changeTown(String value, {bool townsWithoutSelect = false}) async {
    if (value.isEmpty) {
      state = state.copyWith(
        selectedTown: '',
        chomes: _withSelect,
        selectedChome: '',
        deliveryShop: null,
      );
      return true;
    }
    if (!townsWithoutSelect && isSameTown(value)) {
      return true;
    }
    try {
      final chomes = await getChomes(state.selectedPrefecture, state.selectedCite, value);
      if (chomes.length == 1 && chomes.first.name == _withoutSelectName) {
        final deliveryShop = await getDeliverShopText(
          state.selectedPrefecture,
          state.selectedCite,
          value,
          chomes.first.code,
        );
        state = state.copyWith(
          selectedTown: value,
          chomes: withoutSelect(chomes.first.code),
          selectedChome: chomes.first.code,
          deliveryShop: deliveryShop,
          isExistDeliveryShop: true,
        );
        return true;
      }

      state = state.copyWith(
        selectedTown: value,
        chomes: chomes,
        selectedChome: chomes.length == 1 ? chomes.first.code : '',
      );
      if (chomes.first.name == _withoutSelectName) {
        return await changeChome(chomes.first.code);
      }
      state = state.copyWith(
        deliveryShop: null,
      );
    } on ServiceAreaException catch (_) {
      await _initInput();
    }
    return true;
  }

  /// 同一丁目かどうかの判定
  bool isSameChome(String value) {
    return state.selectedChome == value;
  }

  /// 丁目プルダウン変更
  Future<bool> changeChome(String value) async {
    if (value.isEmpty) {
      state = state.copyWith(
        selectedChome: '',
        deliveryShop: null,
      );
      return true;
    }
    if (isSameChome(value)) {
      return false;
    }
    try {
      final deliveryShop =
          await getDeliverShopText(state.selectedPrefecture, state.selectedCite, state.selectedTown, value);
      state = state.copyWith(
        selectedChome: value,
        deliveryShop: deliveryShop,
        isExistDeliveryShop: true,
      );
    } on ServiceAreaException catch (_) {
      await _initInput();
    }
    return true;
  }

  /// 担当店舗表示
  Future<DeliveryShop> getDeliverShopText(
    String prefectureCode,
    String cityCode,
    String townCode,
    String chomeCode,
  ) async {
    final closedShop = await GetIt.I<ClosedShopRepository>().fetchClosedShopInfo();
    final shopModel = await getDeliveryShops(prefectureCode, cityCode, townCode, chomeCode);
    final shopInfo = await GetIt.I<ShopsRepository>().getShopInfo(shopCode: shopModel.deliveryShopCode);
    final openDate = shopInfo.data.first.openDate;
    final isCenterShop = shopInfo.data.first.isCenterShop;

    // 閉店前の場合
    if (closedShop.isNotEmpty) {
      final closedShopModel = closedShop.firstWhereOrNull((e) => e.shopCode == shopModel.deliveryShopCode);
      if (closedShopModel != null) {
        return DeliveryShop(
          shopName: shopModel.deliveryShopName,
          shopDescription: '${shopModel.deliveryShopName}ネットスーパーは${closedShopModel.text}',
          isValid: true,
          shopCode: shopModel.deliveryShopCode,
          isCenterShop: isCenterShop,
        );
      }
    }

    // 開店予定の場合 - 表示時の日 < 営業日
    if (DateTime.now().isBefore(openDate)) {
      return DeliveryShop(
        shopName: shopModel.deliveryShopName,
        shopDescription: '${shopModel.deliveryShopName}ネットスーパーは${formatYearDayJaWithoutDayOfWeek(openDate)}オープン予定です。',
        isValid: false,
        shopCode: shopModel.deliveryShopCode,
        isCenterShop: isCenterShop,
      );
    } else {
      // 通常時
      return DeliveryShop(
        shopName: shopModel.deliveryShopName,
        shopDescription: '選択した住所は${shopModel.deliveryShopName}が担当です',
        isValid: true,
        shopCode: shopModel.deliveryShopCode,
        isCenterShop: isCenterShop,
      );
    }
  }

  // 変更画面の都道府県以下を全て初期化する
  Future<void> _initInput() async {
    final prefectures = await getPrefectures();
    state = state.copyWith(
      prefectures: prefectures,
      selectedPrefecture: '',
      cites: _withSelect,
      selectedCite: '',
      towns: _withSelect,
      selectedTown: '',
      chomes: _withSelect,
      selectedChome: '',
      deliveryShop: null,
      isAlert: false,
    );
    inputAddressDetail1Controller.text = '';
    inputAddressDetail2Controller.text = '';
  }
}

class ServiceAreaException implements Exception {}
