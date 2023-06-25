import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/shop_info_model.dart';
import '../../data/api/model/shops_medicine_confirms_model.dart';

part 'shop_info_state.freezed.dart';

@freezed
class ShopInfoState with _$ShopInfoState {
  const factory ShopInfoState({
    @Default(ShopInfoModel()) ShopInfoModel shopInfo,
    ShopsMedicineConfirmsModel? medicineConfirms,
  }) = _ShopInfoState;
}
