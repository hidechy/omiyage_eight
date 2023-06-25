import 'package:freezed_annotation/freezed_annotation.dart';

import 'base_address_model.dart';

part 'customer_address_model.freezed.dart';
part 'customer_address_model.g.dart';

@freezed
class CustomerAddressModel with BaseAddressModel, _$CustomerAddressModel {
  @With<BaseAddressModel>()
  const factory CustomerAddressModel({
    /* 郵便番号 - ハイフンなしの7桁 maxLength: 7 */
    @Default('') String postalNumber,
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
/* 詳細 - 番地、号 maxLength: 150 */
    @Default('') String addressDetail,
/* 詳細２ - 建物名、部屋番号 maxLength: 150 */
    @Default('') String addressDetail2,
  }) = _CustomerAddressModel;

  factory CustomerAddressModel.fromJson(Map<String, dynamic> json) => _$CustomerAddressModelFromJson(json);
}
