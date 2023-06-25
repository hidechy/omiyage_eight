import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:collection/collection.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../constants.dart';
import '../../data/api/model/receipt_locations_model.dart';
import '../../data/repository/delivery_repository.dart';
import '../../gen/assets.gen.dart';
import '../../util/cart_info_manager.dart';
import '../state/delivery_datetime_page_state.dart';
import '../state/shop_selection_page_state.dart';

enum IconType {
  unselectedStoreMarker,
  unselectedLockerMarker,
  selectedStoreMarker,
  selectedLockerMarker,
}

extension IconTypeExt on IconType {
  String get path {
    switch (this) {
      case IconType.unselectedStoreMarker:
        return Assets.images.unselectedStoreMarker.path;
      case IconType.unselectedLockerMarker:
        return Assets.images.unselectedLockerMarker.path;
      case IconType.selectedStoreMarker:
        return Assets.images.selectedStoreMarker.path;
      case IconType.selectedLockerMarker:
        return Assets.images.selectedLockerMarker.path;
    }
  }
}

class ShopSelectionPageViewModel extends StateNotifier<ShopSelectionPageState> with LocatorMixin {
  ShopSelectionPageViewModel({double? latitude, double? longitude})
      : super(latitude != null && longitude != null
            ? ShopSelectionPageState(currentLatLng: LatLng(latitude, longitude))
            : const ShopSelectionPageState());

  late final Map<IconType, Future<BitmapDescriptor> Function(BuildContext context)> _icons;
  GoogleMapController? _controller;
  final scrollController = ScrollController();
  final mapKey = GlobalKey();

  CartInfoManager get _cartInfoManager => read();

  @override
  void initState() {
    _icons = {
      for (final e in IconType.values)
        e: (context) => BitmapDescriptor.fromAssetImage(
              createLocalImageConfiguration(
                context,
                size: const Size(40, 41),
              ),
              e.path,
            ),
    };
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  // マップ作成時の挙動
  Future<void> onMapCreated(GoogleMapController controller) async {
    _controller = controller;
  }

  Future<bool> load() async {
    final cartModel = _cartInfoManager.info;
    final response = await GetIt.I<DeliveryRepository>().getShopAndLockerInfo();
    final receiptPointInformationList = response.data;
    // NS非対応店舗はリストおよび地図上に表示しない
    receiptPointInformationList.retainWhere((shop) => shop.hasReceptionType);
    final targetShops = receiptPointInformationList
        .where((shop) => shop.locationId == cartModel.receiptPointId || shop.shopCode == cartModel.shop.shopCode);
    var targetShop = targetShops.firstWhereOrNull((shop) => shop.locationId == cartModel.receiptPointId);
    // ここで会員の担当店舗の配達圏内のロッカーなどが選択される
    targetShop ??= targetShops.firstWhereOrNull((shop) => shop.shopCode == cartModel.shop.shopCode);
    if (targetShop == null) {
      // カートの店舗が店舗・ロッカー受け取りに対応していなかった場合
      state = state.copyWith(receiptPointInformationList: receiptPointInformationList);
      return false;
    }
    final initReceiptPointLatitude = targetShop.receiptPointLatitude;
    final initReceiptPointLongitude = targetShop.receiptPointLongitude;
    state = state.copyWith(
      receiptPointInformationList: receiptPointInformationList,
      currentLatLng: LatLng(initReceiptPointLatitude, initReceiptPointLongitude),
    );
    await updateVisibleShops();
    return true;
  }

  Future<void> onTap(int i) async {
    final tapped = state.visibleShops[i];
    final latitude = tapped.receiptPointLatitude;
    final longitude = tapped.receiptPointLongitude;
    state = state.copyWith(
      selectedMarkerId: tapped.locationId,
      selectedShopCode: tapped.shopCode,
      selectedShopName: tapped.receiptPointName,
    );
    scrollController.animateTo(0, duration: const Duration(milliseconds: 100), curve: Curves.linear);
    await updateCurrentLatLng(latitude, longitude);
  }

  Future<void> updateCurrentLatLng(double latitude, double longitude) async {
    state = state.copyWith(currentLatLng: LatLng(latitude, longitude));
    await _controller?.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(latitude, longitude),
          zoom: await _controller?.getZoomLevel() ?? 15,
        ),
      ),
    );
    await updateVisibleShops();
  }

  Future<void> search(String keyword) async {
    final packageInfo = await PackageInfo.fromPlatform();
    final GooglePlace googlePlace;

    // GoogleMap APIキーの空チェックはmain.dart(appMainメソッド)にて起動時に行われる。
    // 従って、本メソッド内では該当チェック処理は行わない。
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      final headers = {'X-ios-bundle-identifier': packageInfo.packageName};
      googlePlace = GooglePlace(dartEnvironmentValueIosGoogleMapApiKey, headers: headers);
    } else {
      googlePlace = GooglePlace(dartEnvironmentValueAndroidGoogleMapApiKey);
    }

    final result = await googlePlace.search.getFindPlace(
      keyword,
      InputType.TextQuery,
      language: 'ja',
      fields: 'name,geometry',
    );

    if (result?.status == 'OK') {
      final latitude = result?.candidates?.first.geometry?.location?.lat;
      final longitude = result?.candidates?.first.geometry?.location?.lng;

      if (latitude != null && longitude != null) {
        await updateCurrentLatLng(latitude, longitude);
      }
    }
  }

  // 有効範囲のshopの更新
  Future<void> updateVisibleShops() async {
    String selectedMarkerId = state.selectedMarkerId;
    String selectedShopCode = state.selectedShopCode;
    String selectedShopName = state.selectedShopName;

    final LatLngBounds? currentBounds = await _controller?.getVisibleRegion();
    if (currentBounds == null) {
      return;
    }

    // 表示するストア情報を抽出
    List<ReceiptLocationsModel> visibleShops = state.receiptPointInformationList.where((shop) {
      return currentBounds.contains(
        LatLng(
          shop.receiptPointLatitude,
          shop.receiptPointLongitude,
        ),
      );
    }).toList();

    // 距離順に並び替え
    visibleShops.sort(
      (ReceiptLocationsModel a, ReceiptLocationsModel b) => (Geolocator.distanceBetween(
        (currentBounds.northeast.latitude + currentBounds.southwest.latitude) / 2,
        (currentBounds.northeast.longitude + currentBounds.southwest.longitude) / 2,
        a.receiptPointLatitude,
        a.receiptPointLongitude,
      )).compareTo(
        ((Geolocator.distanceBetween(
          (currentBounds.northeast.latitude + currentBounds.southwest.latitude) / 2,
          (currentBounds.northeast.longitude + currentBounds.southwest.longitude) / 2,
          b.receiptPointLatitude,
          b.receiptPointLongitude,
        ))),
      ),
    );

    int index = visibleShops.indexWhere((shop) => shop.locationId == state.selectedMarkerId);

    // 選択済みのものを入れ替え
    if (index >= 0) {
      final selected = visibleShops.removeAt(index);
      visibleShops.insert(0, selected);
    } else {
      selectedMarkerId = '';
      selectedShopCode = '';
      selectedShopName = '';
    }

    state = state.copyWith(
      selectedMarkerId: selectedMarkerId,
      selectedShopCode: selectedShopCode,
      selectedShopName: selectedShopName,
      visibleShops: visibleShops,
    );
  }

  Future<Set<Marker>> createMarkers(BuildContext context, List<ReceiptLocationsModel> visibleShops) async {
    final markers = <Marker>{};
    for (var i = 0; i < visibleShops.length; ++i) {
      final shop = visibleShops[i];
      final BitmapDescriptor icon;
      switch (shop.iconType) {
        case LocationIconType.iy:
          icon = (state.selectedMarkerId != shop.locationId)
              ? await _icons[IconType.unselectedStoreMarker]!.call(context)
              : await _icons[IconType.selectedStoreMarker]!.call(context);
          break;
        case LocationIconType.sevenAndILocker:
          icon = (state.selectedMarkerId != shop.locationId)
              ? await _icons[IconType.unselectedLockerMarker]!.call(context)
              : await _icons[IconType.selectedLockerMarker]!.call(context);
          break;
      }
      markers.add(
        Marker(
          markerId: MarkerId(shop.locationId),
          position: LatLng(
            shop.receiptPointLatitude,
            shop.receiptPointLongitude,
          ),
          icon: icon,
          onTap: () async => await onTap(i),
        ),
      );
    }
    return markers;
  }

  SelectedShopInfo? setSelectedShopInfo() {
    if (state.selectedShopCode == '' || state.selectedMarkerId == '') {
      return null;
    }
    return SelectedShopInfo(
      shopCode: state.selectedShopCode,
      receiptPointName: state.selectedShopName,
      receiptPointId: state.selectedMarkerId,
    );
  }
}
