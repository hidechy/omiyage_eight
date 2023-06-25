// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductDiscountModel _$ProductDiscountModelFromJson(Map<String, dynamic> json) {
  return _ProductDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDiscountModel {
/* 累進割引商品一覧リンク表示判定 - true:累進割引 - false:非累進割引 */
  bool get isDisplayProgressiveDiscountLink =>
      throw _privateConstructorUsedError; /* セット値引ペア商品一覧リンク表示判定 - true：セット値引 - false:非セット値引 */
  bool get isDisplaySetDiscountLink =>
      throw _privateConstructorUsedError; /* ミックスマッチ商品一覧リンク表示判定 - true：ミックスマッチ割引 - false：非ミックスマッチ割引 */
  bool get isDisplayMixMatchLink =>
      throw _privateConstructorUsedError; /* セット販売商品一覧リンク表示判定 - true：セット販売商品 - false：非セット販売商品 */
  bool get isDisplaySetSaleDiscountLink =>
      throw _privateConstructorUsedError; /* 親累進割引コード - is_display_progressive_discount_link：trueの時必須 - is_display_progressive_discount_link：falseの場合、nullを返却*/
  String get parentProgressiveDiscountCode =>
      throw _privateConstructorUsedError; /* 企画グループコード - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  String get planningGroupCode =>
      throw _privateConstructorUsedError; /* もう片方のグループ枝番 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  String get planningGroupBranchNumber =>
      throw _privateConstructorUsedError; /* セット値引額 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  int get setDiscountPrice =>
      throw _privateConstructorUsedError; /* ミックスマッチコード - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  String get mixMatchCode =>
      throw _privateConstructorUsedError; /* ミックスマッチセット数 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  int get mixMatchSetNumber =>
      throw _privateConstructorUsedError; /* ミックスマッチセット価格 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  int get mixMatchSetPrice =>
      throw _privateConstructorUsedError; /* セット販売ID - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
  String get setSaleId =>
      throw _privateConstructorUsedError; /* セット販売名 - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
  String get setSaleName =>
      throw _privateConstructorUsedError; /* 売り切りセールコード - 売り切りセール対象外の場合、nullを返却 */
  String get sellingOffCode =>
      throw _privateConstructorUsedError; /* 売り切りセールコード  - 売り切りセール対象外の場合、nullを返却*/
  String get sellingOffName =>
      throw _privateConstructorUsedError; /* 売り切りセール価格 - 売り切りセール対象外の場合、nullを返却 */
  int get sellingOffPrice =>
      throw _privateConstructorUsedError; /* 売り切りセール本体価格 - 売り切りセール対象外の場合、nullを返却 */
  int get sellingOffBasePrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDiscountModelCopyWith<ProductDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDiscountModelCopyWith<$Res> {
  factory $ProductDiscountModelCopyWith(ProductDiscountModel value,
          $Res Function(ProductDiscountModel) then) =
      _$ProductDiscountModelCopyWithImpl<$Res, ProductDiscountModel>;
  @useResult
  $Res call(
      {bool isDisplayProgressiveDiscountLink,
      bool isDisplaySetDiscountLink,
      bool isDisplayMixMatchLink,
      bool isDisplaySetSaleDiscountLink,
      String parentProgressiveDiscountCode,
      String planningGroupCode,
      String planningGroupBranchNumber,
      int setDiscountPrice,
      String mixMatchCode,
      int mixMatchSetNumber,
      int mixMatchSetPrice,
      String setSaleId,
      String setSaleName,
      String sellingOffCode,
      String sellingOffName,
      int sellingOffPrice,
      int sellingOffBasePrice});
}

/// @nodoc
class _$ProductDiscountModelCopyWithImpl<$Res,
        $Val extends ProductDiscountModel>
    implements $ProductDiscountModelCopyWith<$Res> {
  _$ProductDiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisplayProgressiveDiscountLink = null,
    Object? isDisplaySetDiscountLink = null,
    Object? isDisplayMixMatchLink = null,
    Object? isDisplaySetSaleDiscountLink = null,
    Object? parentProgressiveDiscountCode = null,
    Object? planningGroupCode = null,
    Object? planningGroupBranchNumber = null,
    Object? setDiscountPrice = null,
    Object? mixMatchCode = null,
    Object? mixMatchSetNumber = null,
    Object? mixMatchSetPrice = null,
    Object? setSaleId = null,
    Object? setSaleName = null,
    Object? sellingOffCode = null,
    Object? sellingOffName = null,
    Object? sellingOffPrice = null,
    Object? sellingOffBasePrice = null,
  }) {
    return _then(_value.copyWith(
      isDisplayProgressiveDiscountLink: null == isDisplayProgressiveDiscountLink
          ? _value.isDisplayProgressiveDiscountLink
          : isDisplayProgressiveDiscountLink // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplaySetDiscountLink: null == isDisplaySetDiscountLink
          ? _value.isDisplaySetDiscountLink
          : isDisplaySetDiscountLink // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayMixMatchLink: null == isDisplayMixMatchLink
          ? _value.isDisplayMixMatchLink
          : isDisplayMixMatchLink // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplaySetSaleDiscountLink: null == isDisplaySetSaleDiscountLink
          ? _value.isDisplaySetSaleDiscountLink
          : isDisplaySetSaleDiscountLink // ignore: cast_nullable_to_non_nullable
              as bool,
      parentProgressiveDiscountCode: null == parentProgressiveDiscountCode
          ? _value.parentProgressiveDiscountCode
          : parentProgressiveDiscountCode // ignore: cast_nullable_to_non_nullable
              as String,
      planningGroupCode: null == planningGroupCode
          ? _value.planningGroupCode
          : planningGroupCode // ignore: cast_nullable_to_non_nullable
              as String,
      planningGroupBranchNumber: null == planningGroupBranchNumber
          ? _value.planningGroupBranchNumber
          : planningGroupBranchNumber // ignore: cast_nullable_to_non_nullable
              as String,
      setDiscountPrice: null == setDiscountPrice
          ? _value.setDiscountPrice
          : setDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      mixMatchCode: null == mixMatchCode
          ? _value.mixMatchCode
          : mixMatchCode // ignore: cast_nullable_to_non_nullable
              as String,
      mixMatchSetNumber: null == mixMatchSetNumber
          ? _value.mixMatchSetNumber
          : mixMatchSetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      mixMatchSetPrice: null == mixMatchSetPrice
          ? _value.mixMatchSetPrice
          : mixMatchSetPrice // ignore: cast_nullable_to_non_nullable
              as int,
      setSaleId: null == setSaleId
          ? _value.setSaleId
          : setSaleId // ignore: cast_nullable_to_non_nullable
              as String,
      setSaleName: null == setSaleName
          ? _value.setSaleName
          : setSaleName // ignore: cast_nullable_to_non_nullable
              as String,
      sellingOffCode: null == sellingOffCode
          ? _value.sellingOffCode
          : sellingOffCode // ignore: cast_nullable_to_non_nullable
              as String,
      sellingOffName: null == sellingOffName
          ? _value.sellingOffName
          : sellingOffName // ignore: cast_nullable_to_non_nullable
              as String,
      sellingOffPrice: null == sellingOffPrice
          ? _value.sellingOffPrice
          : sellingOffPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellingOffBasePrice: null == sellingOffBasePrice
          ? _value.sellingOffBasePrice
          : sellingOffBasePrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProductDiscountModelCopyWith<$Res>
    implements $ProductDiscountModelCopyWith<$Res> {
  factory _$$_ProductDiscountModelCopyWith(_$_ProductDiscountModel value,
          $Res Function(_$_ProductDiscountModel) then) =
      __$$_ProductDiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isDisplayProgressiveDiscountLink,
      bool isDisplaySetDiscountLink,
      bool isDisplayMixMatchLink,
      bool isDisplaySetSaleDiscountLink,
      String parentProgressiveDiscountCode,
      String planningGroupCode,
      String planningGroupBranchNumber,
      int setDiscountPrice,
      String mixMatchCode,
      int mixMatchSetNumber,
      int mixMatchSetPrice,
      String setSaleId,
      String setSaleName,
      String sellingOffCode,
      String sellingOffName,
      int sellingOffPrice,
      int sellingOffBasePrice});
}

/// @nodoc
class __$$_ProductDiscountModelCopyWithImpl<$Res>
    extends _$ProductDiscountModelCopyWithImpl<$Res, _$_ProductDiscountModel>
    implements _$$_ProductDiscountModelCopyWith<$Res> {
  __$$_ProductDiscountModelCopyWithImpl(_$_ProductDiscountModel _value,
      $Res Function(_$_ProductDiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDisplayProgressiveDiscountLink = null,
    Object? isDisplaySetDiscountLink = null,
    Object? isDisplayMixMatchLink = null,
    Object? isDisplaySetSaleDiscountLink = null,
    Object? parentProgressiveDiscountCode = null,
    Object? planningGroupCode = null,
    Object? planningGroupBranchNumber = null,
    Object? setDiscountPrice = null,
    Object? mixMatchCode = null,
    Object? mixMatchSetNumber = null,
    Object? mixMatchSetPrice = null,
    Object? setSaleId = null,
    Object? setSaleName = null,
    Object? sellingOffCode = null,
    Object? sellingOffName = null,
    Object? sellingOffPrice = null,
    Object? sellingOffBasePrice = null,
  }) {
    return _then(_$_ProductDiscountModel(
      isDisplayProgressiveDiscountLink: null == isDisplayProgressiveDiscountLink
          ? _value.isDisplayProgressiveDiscountLink
          : isDisplayProgressiveDiscountLink // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplaySetDiscountLink: null == isDisplaySetDiscountLink
          ? _value.isDisplaySetDiscountLink
          : isDisplaySetDiscountLink // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayMixMatchLink: null == isDisplayMixMatchLink
          ? _value.isDisplayMixMatchLink
          : isDisplayMixMatchLink // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplaySetSaleDiscountLink: null == isDisplaySetSaleDiscountLink
          ? _value.isDisplaySetSaleDiscountLink
          : isDisplaySetSaleDiscountLink // ignore: cast_nullable_to_non_nullable
              as bool,
      parentProgressiveDiscountCode: null == parentProgressiveDiscountCode
          ? _value.parentProgressiveDiscountCode
          : parentProgressiveDiscountCode // ignore: cast_nullable_to_non_nullable
              as String,
      planningGroupCode: null == planningGroupCode
          ? _value.planningGroupCode
          : planningGroupCode // ignore: cast_nullable_to_non_nullable
              as String,
      planningGroupBranchNumber: null == planningGroupBranchNumber
          ? _value.planningGroupBranchNumber
          : planningGroupBranchNumber // ignore: cast_nullable_to_non_nullable
              as String,
      setDiscountPrice: null == setDiscountPrice
          ? _value.setDiscountPrice
          : setDiscountPrice // ignore: cast_nullable_to_non_nullable
              as int,
      mixMatchCode: null == mixMatchCode
          ? _value.mixMatchCode
          : mixMatchCode // ignore: cast_nullable_to_non_nullable
              as String,
      mixMatchSetNumber: null == mixMatchSetNumber
          ? _value.mixMatchSetNumber
          : mixMatchSetNumber // ignore: cast_nullable_to_non_nullable
              as int,
      mixMatchSetPrice: null == mixMatchSetPrice
          ? _value.mixMatchSetPrice
          : mixMatchSetPrice // ignore: cast_nullable_to_non_nullable
              as int,
      setSaleId: null == setSaleId
          ? _value.setSaleId
          : setSaleId // ignore: cast_nullable_to_non_nullable
              as String,
      setSaleName: null == setSaleName
          ? _value.setSaleName
          : setSaleName // ignore: cast_nullable_to_non_nullable
              as String,
      sellingOffCode: null == sellingOffCode
          ? _value.sellingOffCode
          : sellingOffCode // ignore: cast_nullable_to_non_nullable
              as String,
      sellingOffName: null == sellingOffName
          ? _value.sellingOffName
          : sellingOffName // ignore: cast_nullable_to_non_nullable
              as String,
      sellingOffPrice: null == sellingOffPrice
          ? _value.sellingOffPrice
          : sellingOffPrice // ignore: cast_nullable_to_non_nullable
              as int,
      sellingOffBasePrice: null == sellingOffBasePrice
          ? _value.sellingOffBasePrice
          : sellingOffBasePrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductDiscountModel implements _ProductDiscountModel {
  const _$_ProductDiscountModel(
      {this.isDisplayProgressiveDiscountLink = false,
      this.isDisplaySetDiscountLink = false,
      this.isDisplayMixMatchLink = false,
      this.isDisplaySetSaleDiscountLink = false,
      this.parentProgressiveDiscountCode = '',
      this.planningGroupCode = '',
      this.planningGroupBranchNumber = '',
      this.setDiscountPrice = 0,
      this.mixMatchCode = '',
      this.mixMatchSetNumber = 0,
      this.mixMatchSetPrice = 0,
      this.setSaleId = '',
      this.setSaleName = '',
      this.sellingOffCode = '',
      this.sellingOffName = '',
      this.sellingOffPrice = 0,
      this.sellingOffBasePrice = 0});

  factory _$_ProductDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductDiscountModelFromJson(json);

/* 累進割引商品一覧リンク表示判定 - true:累進割引 - false:非累進割引 */
  @override
  @JsonKey()
  final bool isDisplayProgressiveDiscountLink;
/* セット値引ペア商品一覧リンク表示判定 - true：セット値引 - false:非セット値引 */
  @override
  @JsonKey()
  final bool isDisplaySetDiscountLink;
/* ミックスマッチ商品一覧リンク表示判定 - true：ミックスマッチ割引 - false：非ミックスマッチ割引 */
  @override
  @JsonKey()
  final bool isDisplayMixMatchLink;
/* セット販売商品一覧リンク表示判定 - true：セット販売商品 - false：非セット販売商品 */
  @override
  @JsonKey()
  final bool isDisplaySetSaleDiscountLink;
/* 親累進割引コード - is_display_progressive_discount_link：trueの時必須 - is_display_progressive_discount_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final String parentProgressiveDiscountCode;
/* 企画グループコード - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final String planningGroupCode;
/* もう片方のグループ枝番 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final String planningGroupBranchNumber;
/* セット値引額 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final int setDiscountPrice;
/* ミックスマッチコード - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final String mixMatchCode;
/* ミックスマッチセット数 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final int mixMatchSetNumber;
/* ミックスマッチセット価格 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final int mixMatchSetPrice;
/* セット販売ID - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final String setSaleId;
/* セット販売名 - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
  @override
  @JsonKey()
  final String setSaleName;
/* 売り切りセールコード - 売り切りセール対象外の場合、nullを返却 */
  @override
  @JsonKey()
  final String sellingOffCode;
/* 売り切りセールコード  - 売り切りセール対象外の場合、nullを返却*/
  @override
  @JsonKey()
  final String sellingOffName;
/* 売り切りセール価格 - 売り切りセール対象外の場合、nullを返却 */
  @override
  @JsonKey()
  final int sellingOffPrice;
/* 売り切りセール本体価格 - 売り切りセール対象外の場合、nullを返却 */
  @override
  @JsonKey()
  final int sellingOffBasePrice;

  @override
  String toString() {
    return 'ProductDiscountModel(isDisplayProgressiveDiscountLink: $isDisplayProgressiveDiscountLink, isDisplaySetDiscountLink: $isDisplaySetDiscountLink, isDisplayMixMatchLink: $isDisplayMixMatchLink, isDisplaySetSaleDiscountLink: $isDisplaySetSaleDiscountLink, parentProgressiveDiscountCode: $parentProgressiveDiscountCode, planningGroupCode: $planningGroupCode, planningGroupBranchNumber: $planningGroupBranchNumber, setDiscountPrice: $setDiscountPrice, mixMatchCode: $mixMatchCode, mixMatchSetNumber: $mixMatchSetNumber, mixMatchSetPrice: $mixMatchSetPrice, setSaleId: $setSaleId, setSaleName: $setSaleName, sellingOffCode: $sellingOffCode, sellingOffName: $sellingOffName, sellingOffPrice: $sellingOffPrice, sellingOffBasePrice: $sellingOffBasePrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductDiscountModel &&
            (identical(other.isDisplayProgressiveDiscountLink, isDisplayProgressiveDiscountLink) ||
                other.isDisplayProgressiveDiscountLink ==
                    isDisplayProgressiveDiscountLink) &&
            (identical(
                    other.isDisplaySetDiscountLink, isDisplaySetDiscountLink) ||
                other.isDisplaySetDiscountLink == isDisplaySetDiscountLink) &&
            (identical(other.isDisplayMixMatchLink, isDisplayMixMatchLink) ||
                other.isDisplayMixMatchLink == isDisplayMixMatchLink) &&
            (identical(other.isDisplaySetSaleDiscountLink, isDisplaySetSaleDiscountLink) ||
                other.isDisplaySetSaleDiscountLink ==
                    isDisplaySetSaleDiscountLink) &&
            (identical(other.parentProgressiveDiscountCode, parentProgressiveDiscountCode) ||
                other.parentProgressiveDiscountCode ==
                    parentProgressiveDiscountCode) &&
            (identical(other.planningGroupCode, planningGroupCode) ||
                other.planningGroupCode == planningGroupCode) &&
            (identical(other.planningGroupBranchNumber, planningGroupBranchNumber) ||
                other.planningGroupBranchNumber == planningGroupBranchNumber) &&
            (identical(other.setDiscountPrice, setDiscountPrice) ||
                other.setDiscountPrice == setDiscountPrice) &&
            (identical(other.mixMatchCode, mixMatchCode) ||
                other.mixMatchCode == mixMatchCode) &&
            (identical(other.mixMatchSetNumber, mixMatchSetNumber) ||
                other.mixMatchSetNumber == mixMatchSetNumber) &&
            (identical(other.mixMatchSetPrice, mixMatchSetPrice) ||
                other.mixMatchSetPrice == mixMatchSetPrice) &&
            (identical(other.setSaleId, setSaleId) ||
                other.setSaleId == setSaleId) &&
            (identical(other.setSaleName, setSaleName) ||
                other.setSaleName == setSaleName) &&
            (identical(other.sellingOffCode, sellingOffCode) ||
                other.sellingOffCode == sellingOffCode) &&
            (identical(other.sellingOffName, sellingOffName) ||
                other.sellingOffName == sellingOffName) &&
            (identical(other.sellingOffPrice, sellingOffPrice) ||
                other.sellingOffPrice == sellingOffPrice) &&
            (identical(other.sellingOffBasePrice, sellingOffBasePrice) ||
                other.sellingOffBasePrice == sellingOffBasePrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isDisplayProgressiveDiscountLink,
      isDisplaySetDiscountLink,
      isDisplayMixMatchLink,
      isDisplaySetSaleDiscountLink,
      parentProgressiveDiscountCode,
      planningGroupCode,
      planningGroupBranchNumber,
      setDiscountPrice,
      mixMatchCode,
      mixMatchSetNumber,
      mixMatchSetPrice,
      setSaleId,
      setSaleName,
      sellingOffCode,
      sellingOffName,
      sellingOffPrice,
      sellingOffBasePrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductDiscountModelCopyWith<_$_ProductDiscountModel> get copyWith =>
      __$$_ProductDiscountModelCopyWithImpl<_$_ProductDiscountModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductDiscountModelToJson(
      this,
    );
  }
}

abstract class _ProductDiscountModel implements ProductDiscountModel {
  const factory _ProductDiscountModel(
      {final bool isDisplayProgressiveDiscountLink,
      final bool isDisplaySetDiscountLink,
      final bool isDisplayMixMatchLink,
      final bool isDisplaySetSaleDiscountLink,
      final String parentProgressiveDiscountCode,
      final String planningGroupCode,
      final String planningGroupBranchNumber,
      final int setDiscountPrice,
      final String mixMatchCode,
      final int mixMatchSetNumber,
      final int mixMatchSetPrice,
      final String setSaleId,
      final String setSaleName,
      final String sellingOffCode,
      final String sellingOffName,
      final int sellingOffPrice,
      final int sellingOffBasePrice}) = _$_ProductDiscountModel;

  factory _ProductDiscountModel.fromJson(Map<String, dynamic> json) =
      _$_ProductDiscountModel.fromJson;

  @override /* 累進割引商品一覧リンク表示判定 - true:累進割引 - false:非累進割引 */
  bool get isDisplayProgressiveDiscountLink;
  @override /* セット値引ペア商品一覧リンク表示判定 - true：セット値引 - false:非セット値引 */
  bool get isDisplaySetDiscountLink;
  @override /* ミックスマッチ商品一覧リンク表示判定 - true：ミックスマッチ割引 - false：非ミックスマッチ割引 */
  bool get isDisplayMixMatchLink;
  @override /* セット販売商品一覧リンク表示判定 - true：セット販売商品 - false：非セット販売商品 */
  bool get isDisplaySetSaleDiscountLink;
  @override /* 親累進割引コード - is_display_progressive_discount_link：trueの時必須 - is_display_progressive_discount_link：falseの場合、nullを返却*/
  String get parentProgressiveDiscountCode;
  @override /* 企画グループコード - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  String get planningGroupCode;
  @override /* もう片方のグループ枝番 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  String get planningGroupBranchNumber;
  @override /* セット値引額 - is_display_set_discount_link：trueの時必須 - is_display_set_discount_link：falseの場合、nullを返却*/
  int get setDiscountPrice;
  @override /* ミックスマッチコード - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  String get mixMatchCode;
  @override /* ミックスマッチセット数 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  int get mixMatchSetNumber;
  @override /* ミックスマッチセット価格 - is_display_mix_match_link：trueの時必須 - is_display_mix_match_link：falseの場合、nullを返却*/
  int get mixMatchSetPrice;
  @override /* セット販売ID - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
  String get setSaleId;
  @override /* セット販売名 - is_display_set_sale_discount_link：trueの時必須 - is_display_set_sale_discount_link：falseの場合、nullを返却*/
  String get setSaleName;
  @override /* 売り切りセールコード - 売り切りセール対象外の場合、nullを返却 */
  String get sellingOffCode;
  @override /* 売り切りセールコード  - 売り切りセール対象外の場合、nullを返却*/
  String get sellingOffName;
  @override /* 売り切りセール価格 - 売り切りセール対象外の場合、nullを返却 */
  int get sellingOffPrice;
  @override /* 売り切りセール本体価格 - 売り切りセール対象外の場合、nullを返却 */
  int get sellingOffBasePrice;
  @override
  @JsonKey(ignore: true)
  _$$_ProductDiscountModelCopyWith<_$_ProductDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
