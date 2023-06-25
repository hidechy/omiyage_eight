import 'package:freezed_annotation/freezed_annotation.dart';

part 'shops_deliverables_get_response_model.freezed.dart';
part 'shops_deliverables_get_response_model.g.dart';

@freezed
class ShopsDeliverablesGetResponseModel with _$ShopsDeliverablesGetResponseModel {
  const factory ShopsDeliverablesGetResponseModel({
    /* 配達可否  ``` true：配達可能 false：配達不可 ``` */
    @Default(false) bool isDeliverable,
/* 店舗コード - 配達不可の場合、nullを返却 */
    @Default('') String shopCode,
  }) = _ShopsDeliverablesGetResponseModel;

  factory ShopsDeliverablesGetResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ShopsDeliverablesGetResponseModelFromJson(json);
}
