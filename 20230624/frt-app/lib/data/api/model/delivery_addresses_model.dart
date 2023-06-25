import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_addresses_model.freezed.dart';
part 'delivery_addresses_model.g.dart';

@freezed
class DeliveryAddressesModel with _$DeliveryAddressesModel {
  const factory DeliveryAddressesModel({
    /* 都道府県コード */
    @Default('') String prefectureCode,
    /* 市区町村コード */
    @Default('') String cityCode,
    /* 通称コード  ``` 該当する通称コードが存在しない場合「000」を返却 ``` */
    @Default('') String townCode,
    /* 郵便番号 */
    @Default('') String postalNumber,
    /* 都道府県名 */
    @Default('') String prefectureName,
    /* 市区郡町村名 */
    @Default('') String cityName,
    /* 通称名 */
    @Default('') String townName,
  }) = _DeliveryAddressesModel;

  factory DeliveryAddressesModel.fromJson(Map<String, dynamic> json) => _$DeliveryAddressesModelFromJson(json);
}
