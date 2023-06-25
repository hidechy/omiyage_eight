import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_address_model.freezed.dart';

part 'selectable_address_model.g.dart';

@freezed
class SelectableAddressModel with _$SelectableAddressModel {
  const factory SelectableAddressModel({
    /* コード　以下のいずれかが設定される - 都道府県コード - 市区郡町村コード - 通称コード - 丁目コード */
    @Default('') String code,
    /* 名称　以下のいずれかが設定される - 都道府県名 - 市区郡町村名 - 通称名 - 丁目 */
    @Default('なし') String name,
  }) = _SelectableAddressModel;

  factory SelectableAddressModel.fromJson(Map<String, dynamic> json) => _$SelectableAddressModelFromJson(json);
}
