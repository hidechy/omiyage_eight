import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_category_model.freezed.dart';
part 'search_category_model.g.dart';

@freezed
class SearchCategoryModel with _$SearchCategoryModel {
  const SearchCategoryModel._();

  const factory SearchCategoryModel({
    /* 第１カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category1Code,
/* 第１カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category1Name,
/* 第２カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category2Code,
/* 第２カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category2Name,
/* 第３カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category3Code,
/* 第３カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category3Name,
/* 第４カテゴリコード - カテゴリ名または関連用語が設定されていない場合、nullを返 */
    @Default('') String category4Code,
/* 第４カテゴリ名 - カテゴリ名または関連用語が設定されていない場合、nullを返却 */
    @Default('') String category4Name,
/* 医薬品カテゴリ判定 ``` true：医薬品カテゴリ false：医薬品カテゴリでない ``` */
    @Default(false) bool isMedicineCategory,
/* カテゴリ配下の商品数 */
    @Default(0) int productCount,
  }) = _SearchCategoryModel;

  factory SearchCategoryModel.fromJson(Map<String, dynamic> json) => _$SearchCategoryModelFromJson(json);

  Map<String, String> get categoryMap => {
        if (category1Code.isNotEmpty) category1Code: category1Name,
        if (category2Code.isNotEmpty) category2Code: category2Name,
        if (category3Code.isNotEmpty) category3Code: category3Name,
        if (category4Code.isNotEmpty) category4Code: category4Name,
      };
}
