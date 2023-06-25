import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../data/api/model/receipt_locations_model.dart';

part 'shop_selection_page_state.freezed.dart';

@freezed
class ShopSelectionPageState with _$ShopSelectionPageState {
  const factory ShopSelectionPageState({
    @Default(<ReceiptLocationsModel>[]) List<ReceiptLocationsModel> visibleShops,
    @Default('') String selectedMarkerId,
    @Default('') String selectedShopCode,
    @Default('') String selectedShopName,
    @Default(<ReceiptLocationsModel>[]) List<ReceiptLocationsModel> receiptPointInformationList,
    // 万が一nullの場合は木場店の座標を表示
    @Default(LatLng(35.666149, 139.8042)) LatLng currentLatLng,
  }) = _ShopSelectionPageState;
}
