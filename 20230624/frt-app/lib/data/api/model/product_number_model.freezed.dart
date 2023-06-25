// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductNumberModel _$ProductNumberModelFromJson(Map<String, dynamic> json) {
  return _ProductNumberModel.fromJson(json);
}

/// @nodoc
mixin _$ProductNumberModel {
/* カラー名称 */
  String get colorName => throw _privateConstructorUsedError; /* サイズ名称 */
  String get sizeName => throw _privateConstructorUsedError; /* 商品PR文言 */
  String get iconPrWord => throw _privateConstructorUsedError; /* 広告アイコン画像パス */
  String get advertisingIconImagePath =>
      throw _privateConstructorUsedError; /* 広告アイコン画像ファイル名 */
  String get advertisingIconImageFileName =>
      throw _privateConstructorUsedError; /* nanaco販促ポイント対象商品判定 - true：nanaco販促ポイント対象である - false：nanaco販促ポイント対象でない */
  bool get isNanacoPromoteProduct =>
      throw _privateConstructorUsedError; /* 本体価格表示判定 - true：本体価格で表示する - false：本体価格で表示しない */
  bool get isDisplayNoTaxPriceView =>
      throw _privateConstructorUsedError; /* 前値 */
  String get previousValue => throw _privateConstructorUsedError; /* 期間割引商品判定 */
  bool get isPeriodDiscount =>
      throw _privateConstructorUsedError; /* セット販売商品一覧リンク表示判定 - true：セット販売商品一覧へリンク表示する - false：セット販売商品一覧へリンク表示しない */
  bool get isViewSetSaleLink => throw _privateConstructorUsedError;
  ProductModel get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductNumberModelCopyWith<ProductNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductNumberModelCopyWith<$Res> {
  factory $ProductNumberModelCopyWith(
          ProductNumberModel value, $Res Function(ProductNumberModel) then) =
      _$ProductNumberModelCopyWithImpl<$Res, ProductNumberModel>;
  @useResult
  $Res call(
      {String colorName,
      String sizeName,
      String iconPrWord,
      String advertisingIconImagePath,
      String advertisingIconImageFileName,
      bool isNanacoPromoteProduct,
      bool isDisplayNoTaxPriceView,
      String previousValue,
      bool isPeriodDiscount,
      bool isViewSetSaleLink,
      ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$ProductNumberModelCopyWithImpl<$Res, $Val extends ProductNumberModel>
    implements $ProductNumberModelCopyWith<$Res> {
  _$ProductNumberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? sizeName = null,
    Object? iconPrWord = null,
    Object? advertisingIconImagePath = null,
    Object? advertisingIconImageFileName = null,
    Object? isNanacoPromoteProduct = null,
    Object? isDisplayNoTaxPriceView = null,
    Object? previousValue = null,
    Object? isPeriodDiscount = null,
    Object? isViewSetSaleLink = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      colorName: null == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      sizeName: null == sizeName
          ? _value.sizeName
          : sizeName // ignore: cast_nullable_to_non_nullable
              as String,
      iconPrWord: null == iconPrWord
          ? _value.iconPrWord
          : iconPrWord // ignore: cast_nullable_to_non_nullable
              as String,
      advertisingIconImagePath: null == advertisingIconImagePath
          ? _value.advertisingIconImagePath
          : advertisingIconImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      advertisingIconImageFileName: null == advertisingIconImageFileName
          ? _value.advertisingIconImageFileName
          : advertisingIconImageFileName // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoPromoteProduct: null == isNanacoPromoteProduct
          ? _value.isNanacoPromoteProduct
          : isNanacoPromoteProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayNoTaxPriceView: null == isDisplayNoTaxPriceView
          ? _value.isDisplayNoTaxPriceView
          : isDisplayNoTaxPriceView // ignore: cast_nullable_to_non_nullable
              as bool,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as String,
      isPeriodDiscount: null == isPeriodDiscount
          ? _value.isPeriodDiscount
          : isPeriodDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewSetSaleLink: null == isViewSetSaleLink
          ? _value.isViewSetSaleLink
          : isViewSetSaleLink // ignore: cast_nullable_to_non_nullable
              as bool,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProductNumberModelCopyWith<$Res>
    implements $ProductNumberModelCopyWith<$Res> {
  factory _$$_ProductNumberModelCopyWith(_$_ProductNumberModel value,
          $Res Function(_$_ProductNumberModel) then) =
      __$$_ProductNumberModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String colorName,
      String sizeName,
      String iconPrWord,
      String advertisingIconImagePath,
      String advertisingIconImageFileName,
      bool isNanacoPromoteProduct,
      bool isDisplayNoTaxPriceView,
      String previousValue,
      bool isPeriodDiscount,
      bool isViewSetSaleLink,
      ProductModel product});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ProductNumberModelCopyWithImpl<$Res>
    extends _$ProductNumberModelCopyWithImpl<$Res, _$_ProductNumberModel>
    implements _$$_ProductNumberModelCopyWith<$Res> {
  __$$_ProductNumberModelCopyWithImpl(
      _$_ProductNumberModel _value, $Res Function(_$_ProductNumberModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? colorName = null,
    Object? sizeName = null,
    Object? iconPrWord = null,
    Object? advertisingIconImagePath = null,
    Object? advertisingIconImageFileName = null,
    Object? isNanacoPromoteProduct = null,
    Object? isDisplayNoTaxPriceView = null,
    Object? previousValue = null,
    Object? isPeriodDiscount = null,
    Object? isViewSetSaleLink = null,
    Object? product = null,
  }) {
    return _then(_$_ProductNumberModel(
      colorName: null == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String,
      sizeName: null == sizeName
          ? _value.sizeName
          : sizeName // ignore: cast_nullable_to_non_nullable
              as String,
      iconPrWord: null == iconPrWord
          ? _value.iconPrWord
          : iconPrWord // ignore: cast_nullable_to_non_nullable
              as String,
      advertisingIconImagePath: null == advertisingIconImagePath
          ? _value.advertisingIconImagePath
          : advertisingIconImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      advertisingIconImageFileName: null == advertisingIconImageFileName
          ? _value.advertisingIconImageFileName
          : advertisingIconImageFileName // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoPromoteProduct: null == isNanacoPromoteProduct
          ? _value.isNanacoPromoteProduct
          : isNanacoPromoteProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isDisplayNoTaxPriceView: null == isDisplayNoTaxPriceView
          ? _value.isDisplayNoTaxPriceView
          : isDisplayNoTaxPriceView // ignore: cast_nullable_to_non_nullable
              as bool,
      previousValue: null == previousValue
          ? _value.previousValue
          : previousValue // ignore: cast_nullable_to_non_nullable
              as String,
      isPeriodDiscount: null == isPeriodDiscount
          ? _value.isPeriodDiscount
          : isPeriodDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isViewSetSaleLink: null == isViewSetSaleLink
          ? _value.isViewSetSaleLink
          : isViewSetSaleLink // ignore: cast_nullable_to_non_nullable
              as bool,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductNumberModel implements _ProductNumberModel {
  const _$_ProductNumberModel(
      {this.colorName = '',
      this.sizeName = '',
      this.iconPrWord = '',
      this.advertisingIconImagePath = '',
      this.advertisingIconImageFileName = '',
      this.isNanacoPromoteProduct = false,
      this.isDisplayNoTaxPriceView = false,
      this.previousValue = '',
      this.isPeriodDiscount = false,
      this.isViewSetSaleLink = false,
      this.product = const ProductModel()});

  factory _$_ProductNumberModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProductNumberModelFromJson(json);

/* カラー名称 */
  @override
  @JsonKey()
  final String colorName;
/* サイズ名称 */
  @override
  @JsonKey()
  final String sizeName;
/* 商品PR文言 */
  @override
  @JsonKey()
  final String iconPrWord;
/* 広告アイコン画像パス */
  @override
  @JsonKey()
  final String advertisingIconImagePath;
/* 広告アイコン画像ファイル名 */
  @override
  @JsonKey()
  final String advertisingIconImageFileName;
/* nanaco販促ポイント対象商品判定 - true：nanaco販促ポイント対象である - false：nanaco販促ポイント対象でない */
  @override
  @JsonKey()
  final bool isNanacoPromoteProduct;
/* 本体価格表示判定 - true：本体価格で表示する - false：本体価格で表示しない */
  @override
  @JsonKey()
  final bool isDisplayNoTaxPriceView;
/* 前値 */
  @override
  @JsonKey()
  final String previousValue;
/* 期間割引商品判定 */
  @override
  @JsonKey()
  final bool isPeriodDiscount;
/* セット販売商品一覧リンク表示判定 - true：セット販売商品一覧へリンク表示する - false：セット販売商品一覧へリンク表示しない */
  @override
  @JsonKey()
  final bool isViewSetSaleLink;
  @override
  @JsonKey()
  final ProductModel product;

  @override
  String toString() {
    return 'ProductNumberModel(colorName: $colorName, sizeName: $sizeName, iconPrWord: $iconPrWord, advertisingIconImagePath: $advertisingIconImagePath, advertisingIconImageFileName: $advertisingIconImageFileName, isNanacoPromoteProduct: $isNanacoPromoteProduct, isDisplayNoTaxPriceView: $isDisplayNoTaxPriceView, previousValue: $previousValue, isPeriodDiscount: $isPeriodDiscount, isViewSetSaleLink: $isViewSetSaleLink, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductNumberModel &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.sizeName, sizeName) ||
                other.sizeName == sizeName) &&
            (identical(other.iconPrWord, iconPrWord) ||
                other.iconPrWord == iconPrWord) &&
            (identical(
                    other.advertisingIconImagePath, advertisingIconImagePath) ||
                other.advertisingIconImagePath == advertisingIconImagePath) &&
            (identical(other.advertisingIconImageFileName,
                    advertisingIconImageFileName) ||
                other.advertisingIconImageFileName ==
                    advertisingIconImageFileName) &&
            (identical(other.isNanacoPromoteProduct, isNanacoPromoteProduct) ||
                other.isNanacoPromoteProduct == isNanacoPromoteProduct) &&
            (identical(
                    other.isDisplayNoTaxPriceView, isDisplayNoTaxPriceView) ||
                other.isDisplayNoTaxPriceView == isDisplayNoTaxPriceView) &&
            (identical(other.previousValue, previousValue) ||
                other.previousValue == previousValue) &&
            (identical(other.isPeriodDiscount, isPeriodDiscount) ||
                other.isPeriodDiscount == isPeriodDiscount) &&
            (identical(other.isViewSetSaleLink, isViewSetSaleLink) ||
                other.isViewSetSaleLink == isViewSetSaleLink) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      colorName,
      sizeName,
      iconPrWord,
      advertisingIconImagePath,
      advertisingIconImageFileName,
      isNanacoPromoteProduct,
      isDisplayNoTaxPriceView,
      previousValue,
      isPeriodDiscount,
      isViewSetSaleLink,
      product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProductNumberModelCopyWith<_$_ProductNumberModel> get copyWith =>
      __$$_ProductNumberModelCopyWithImpl<_$_ProductNumberModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductNumberModelToJson(
      this,
    );
  }
}

abstract class _ProductNumberModel implements ProductNumberModel {
  const factory _ProductNumberModel(
      {final String colorName,
      final String sizeName,
      final String iconPrWord,
      final String advertisingIconImagePath,
      final String advertisingIconImageFileName,
      final bool isNanacoPromoteProduct,
      final bool isDisplayNoTaxPriceView,
      final String previousValue,
      final bool isPeriodDiscount,
      final bool isViewSetSaleLink,
      final ProductModel product}) = _$_ProductNumberModel;

  factory _ProductNumberModel.fromJson(Map<String, dynamic> json) =
      _$_ProductNumberModel.fromJson;

  @override /* カラー名称 */
  String get colorName;
  @override /* サイズ名称 */
  String get sizeName;
  @override /* 商品PR文言 */
  String get iconPrWord;
  @override /* 広告アイコン画像パス */
  String get advertisingIconImagePath;
  @override /* 広告アイコン画像ファイル名 */
  String get advertisingIconImageFileName;
  @override /* nanaco販促ポイント対象商品判定 - true：nanaco販促ポイント対象である - false：nanaco販促ポイント対象でない */
  bool get isNanacoPromoteProduct;
  @override /* 本体価格表示判定 - true：本体価格で表示する - false：本体価格で表示しない */
  bool get isDisplayNoTaxPriceView;
  @override /* 前値 */
  String get previousValue;
  @override /* 期間割引商品判定 */
  bool get isPeriodDiscount;
  @override /* セット販売商品一覧リンク表示判定 - true：セット販売商品一覧へリンク表示する - false：セット販売商品一覧へリンク表示しない */
  bool get isViewSetSaleLink;
  @override
  ProductModel get product;
  @override
  @JsonKey(ignore: true)
  _$$_ProductNumberModelCopyWith<_$_ProductNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}
