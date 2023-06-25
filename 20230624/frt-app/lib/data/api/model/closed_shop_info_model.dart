import 'package:freezed_annotation/freezed_annotation.dart';

part 'closed_shop_info_model.freezed.dart';
part 'closed_shop_info_model.g.dart';

@freezed
class ClosedShopInfoModel with _$ClosedShopInfoModel {
  const ClosedShopInfoModel._();

  const factory ClosedShopInfoModel({
    /* 閉店予定の店舗コード */
    @Default('') String shopCode,
    /* 閉店内容 */
    @Default('') String text,
  }) = _ClosedShopInfoModel;

  factory ClosedShopInfoModel.fromJson(Map<String, dynamic> json) => _$ClosedShopInfoModelFromJson(json);
}
