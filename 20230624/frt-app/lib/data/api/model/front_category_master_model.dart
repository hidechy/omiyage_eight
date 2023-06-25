import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_master_child_model.dart';

part 'front_category_master_model.freezed.dart';
part 'front_category_master_model.g.dart';

@freezed
class FrontCategoryMasterModel with _$FrontCategoryMasterModel {
  const factory FrontCategoryMasterModel({
    /* ルート名 */
    // ignore: invalid_annotation_target
    @Default('') @JsonKey(name: 'rootName') String rootName,
    /* 順序 */
    @Default(0) int order,
    /* 子要素 */
    @Default(<CategoryMasterChildModel>[]) List<CategoryMasterChildModel> children,
  }) = _FrontCategoryMasterModel;

  factory FrontCategoryMasterModel.fromJson(Map<String, dynamic> json) => _$FrontCategoryMasterModelFromJson(json);
}
