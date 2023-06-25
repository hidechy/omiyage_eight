import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/customers_repository.dart';
import '../../enum/mail_magazine_type.dart';
import '../../enum/mail_send_type.dart';
import '../../util/customer_manager.dart';
import '../state/delivery_address_change_confirm_page_state.dart';

class DeliveryAddressChangeConfirmViewModel extends StateNotifier<DeliveryAddressChangeConfirmPageState>
    with LocatorMixin {
  DeliveryAddressChangeConfirmViewModel() : super(DeliveryAddressChangeConfirmPageState());

  CustomerManager get _customerManager => read();

  String get mainMagazineType => state.mailMagazineType.index.toString();

  @override
  void initState() {
    super.initState();
    final mailMagazineType = _customerManager.info.member!.deliveryShop.first.mailMagazineType;
    state = state.copyWith(mailMagazineType: mailMagazineType);
    _initMagazineCheckboxState(mailMagazineType);
  }

  /// 初期表示際に、APIのデータにより、マガジンチェックボックス状態を設定
  void _initMagazineCheckboxState(MailMagazineType mailMagazineType) {
    state = state.copyWith(
        isCheckMainMail: mailMagazineType.value == '1' || mailMagazineType.value == '3',
        isCheckSubMail: mailMagazineType.value == '2' || mailMagazineType.value == '3');
  }

  Future<bool> load() async {
    // 会員情報取得APIを実行する
    return await _customerManager.getInfo(shouldGetCart: false);
  }

  // MailSendTypeの更新
  void handleRadio(MailSendType? value) {
    if (value != null) {
      state = state.copyWith(mailSendType: value);
    }
  }

  /// メイン、サブメールアドレスチェックボックス状態を切り替え
  void switchMailCheck(bool isMainMail) {
    state = isMainMail
        ? state.copyWith(isCheckMainMail: !state.isCheckMainMail)
        : state.copyWith(isCheckSubMail: !state.isCheckSubMail);
    // mailMagazineTypeの更新
    _updateMailMagazineType();
  }

  /// mailMagazineTypeの更新
  void _updateMailMagazineType() {
    if (state.isCheckMainMail && state.isCheckSubMail) {
      state = state.copyWith(mailMagazineType: MailMagazineType.both);
    } else if (state.isCheckMainMail) {
      state = state.copyWith(mailMagazineType: MailMagazineType.mainMailAddress);
    } else if (state.isCheckSubMail) {
      state = state.copyWith(mailMagazineType: MailMagazineType.subMailAddress);
    } else {
      state = state.copyWith(mailMagazineType: MailMagazineType.doNotSend);
    }
  }

  /// お届け先住所を更新
  Future<void> changeDeliveryAddress({
    required String shopCode,
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
    required String address,
    String? address2,
    required String mailMagazineType,
    required String mailSendType,
  }) async {
    await GetIt.I<CustomersRepository>().changeDeliveryAddress(
        shopCode: shopCode,
        prefectureCode: prefectureCode,
        cityCode: cityCode,
        townCode: townCode,
        chomeCode: chomeCode,
        address: address,
        address2: address2,
        mailMagazineType: mailMagazineType,
        mailSendType: mailSendType);
  }
}
