import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/delivery_addresses_model.dart';
import '../../data/api/model/selectable_address_model.dart';

part 'delivery_address_change_page_state.freezed.dart';

@freezed
class DeliveryAddressChangePageState with _$DeliveryAddressChangePageState {
  factory DeliveryAddressChangePageState({
    @Default('') String inputPostalNumber,
    @Default(true) bool isExistPostalNumber,
    @Default('') String selectedPrefecture,
    @Default('') String selectedCite,
    @Default('') String selectedTown,
    @Default('') String selectedChome,
    @Default(true) bool isExistAddressDetail1,
    @Default(true) bool isValidInputAddressDetail1,
    @Default(true) bool isExistAddressDetail2,
    @Default(true) bool isValidInputAddressDetail2,
    DeliveryShop? deliveryShop,
    @Default(true) bool isExistDeliveryShop,
    @Default(false) bool isAlert,
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> prefectures,
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> cites,
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> towns,
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> chomes,
    @Default(<DeliveryAddressesModel>[]) List<DeliveryAddressesModel> deliveryAddresses,
  }) = _DeliveryAddressChangePageState;
}

@immutable
class DeliveryShop {
  const DeliveryShop({
    required this.shopName,
    required this.shopDescription,
    required this.isValid,
    required this.shopCode,
    required this.isCenterShop,
  });

  final String shopName;
  final String shopDescription;
  final bool isValid;
  final String shopCode;
  final bool isCenterShop;
}
