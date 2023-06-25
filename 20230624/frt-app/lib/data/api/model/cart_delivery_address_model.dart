import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_delivery_address_model.freezed.dart';
part 'cart_delivery_address_model.g.dart';

// 会員情報のDeliveryAddressModelとモデル名が重複したがモデル構図が異なっている為、
// モデル名をCartDeliveryAddressModelとする
@freezed
class CartDeliveryAddressModel with _$CartDeliveryAddressModel {
  const factory CartDeliveryAddressModel({
    /* 郵便番号 */
    @Default('') String separatedPostalNumber,
/* 都道府県コード */
    @Default('') String prefectureCode,
/* 都道府県名 */
    @Default('') String prefectureName,
/* 市区郡町村コード */
    @Default('') String cityCode,
/* 市区町村名 */
    @Default('') String cityName,
/* 通称コード */
    @Default('') String townCode,
/* 大字・通称名 */
    @Default('') String townName,
/* 丁目コード */
    @Default('') String chomeCode,
/* 字・丁目名 */
    @Default('') String chomeName,
/* 住所詳細 */
    @Default('') String addressDetail,
  }) = _CartDeliveryAddressModel;
  factory CartDeliveryAddressModel.fromJson(Map<String, dynamic> json) => _$CartDeliveryAddressModelFromJson(json);
}
