import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_restriction_model_address.freezed.dart';
part 'delivery_restriction_model_address.g.dart';

@freezed
class DeliveryRestrictionModelAddress with _$DeliveryRestrictionModelAddress {
  const factory DeliveryRestrictionModelAddress({
    /* 都道府県コード */
    @Default('') String prefectureCode,
    /* 都道府県名 */
    @Default('') String prefectureName,
    /* 市区郡町村コード */
    @Default('') String cityCode,
    /* 市区郡町村名 */
    @Default('') String cityName,
    /* 通称コード */
    @Default('') String townCode,
    /* 通称名 */
    @Default('') String townName,
    /* 丁目コード */
    @Default('') String chomeCode,
    /* 丁目 */
    @Default('') String chomeName,
  }) = _DeliveryRestrictionModelAddress;

  factory DeliveryRestrictionModelAddress.fromJson(Map<String, dynamic> json) =>
      _$DeliveryRestrictionModelAddressFromJson(json);
}
