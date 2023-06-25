import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_master_child_model.freezed.dart';
part 'category_master_child_model.g.dart';

@freezed
class CategoryMasterChildModel with _$CategoryMasterChildModel {
  const factory CategoryMasterChildModel({
    /* コード */
    @Default('') String code,
    /* 名前 */
    @Default('') String name,
    /* 順序 */
    @Default(0) int order,
  }) = _CategoryMasterChildModel;

  factory CategoryMasterChildModel.fromJson(Map<String, dynamic> json) => _$CategoryMasterChildModelFromJson(json);
}
