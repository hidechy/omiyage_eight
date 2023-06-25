import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable_facet_model.freezed.dart';
part 'selectable_facet_model.g.dart';

@freezed
class SelectableFacetModel with _$SelectableFacetModel {
  const factory SelectableFacetModel({
    /* コード　以下のいずれかが設定される - カテゴリコード - 広告掲載日コード - 価格コード - メーカーコード - ブランドコード - 色コード - サイズコード - 内容量コード - 値引・ボーナスポイントコード */
    @Default('') String code,
/* 名称　以下のいずれかが設定される - カテゴリ名 - 広告掲載日名 - 価格名 - メーカー名 - ブランド名 - 色名 - サイズ名 - 内容量名 - 値引・ボーナスポイント名 */
    @Default('') String name,
/* 検索結果商品数 以下のいずれかの項目の検索ヒット数が設定される - カテゴリ - 広告掲載日 - 価格 - メーカー - ブランド - 色 - サイズ - 内容量 - 値引・ボーナスポイント */
    @Default(0) int count,
  }) = _SelectableFacetModel;

  factory SelectableFacetModel.fromJson(Map<String, dynamic> json) => _$SelectableFacetModelFromJson(json);
}
