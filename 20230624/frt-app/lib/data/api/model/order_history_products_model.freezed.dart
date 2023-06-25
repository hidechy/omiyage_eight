// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_history_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderHistoryProductsModel _$OrderHistoryProductsModelFromJson(
    Map<String, dynamic> json) {
  return _OrderHistoryProductsModel.fromJson(json);
}

/// @nodoc
mixin _$OrderHistoryProductsModel {
/* 商品ID */
  String get productId => throw _privateConstructorUsedError; /* 商品名 */
  String get productName => throw _privateConstructorUsedError; /* 商品画像連携用パス */
  String get thumbnailImagePath =>
      throw _privateConstructorUsedError; /* 商品画像ファイル名 */
  String get thumbnailImageName =>
      throw _privateConstructorUsedError; /*
   ホワイト画像表示フラグ

     - 通常商品の場合
   true：「販促対象」かつ「画像なし」の商品​の場合
   false：「販促対象」かつ「画像なし」の商品​以外の場合
     - 予約商品の場合
   true：「画像なし」の商品​の場合
   false：「画像なし」の商品​以外の場合
*/
  bool get isDisplayWhiteImage =>
      throw _privateConstructorUsedError; /* 商品画像のフロント用フルパス - ファイルパスまたはファイル名が無い場合：null */
  String get frontThumbnailImageFullPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderHistoryProductsModelCopyWith<OrderHistoryProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderHistoryProductsModelCopyWith<$Res> {
  factory $OrderHistoryProductsModelCopyWith(OrderHistoryProductsModel value,
          $Res Function(OrderHistoryProductsModel) then) =
      _$OrderHistoryProductsModelCopyWithImpl<$Res, OrderHistoryProductsModel>;
  @useResult
  $Res call(
      {String productId,
      String productName,
      String thumbnailImagePath,
      String thumbnailImageName,
      bool isDisplayWhiteImage,
      String frontThumbnailImageFullPath});
}

/// @nodoc
class _$OrderHistoryProductsModelCopyWithImpl<$Res,
        $Val extends OrderHistoryProductsModel>
    implements $OrderHistoryProductsModelCopyWith<$Res> {
  _$OrderHistoryProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? thumbnailImagePath = null,
    Object? thumbnailImageName = null,
    Object? isDisplayWhiteImage = null,
    Object? frontThumbnailImageFullPath = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImageName: null == thumbnailImageName
          ? _value.thumbnailImageName
          : thumbnailImageName // ignore: cast_nullable_to_non_nullable
              as String,
      isDisplayWhiteImage: null == isDisplayWhiteImage
          ? _value.isDisplayWhiteImage
          : isDisplayWhiteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      frontThumbnailImageFullPath: null == frontThumbnailImageFullPath
          ? _value.frontThumbnailImageFullPath
          : frontThumbnailImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderHistoryProductsModelCopyWith<$Res>
    implements $OrderHistoryProductsModelCopyWith<$Res> {
  factory _$$_OrderHistoryProductsModelCopyWith(
          _$_OrderHistoryProductsModel value,
          $Res Function(_$_OrderHistoryProductsModel) then) =
      __$$_OrderHistoryProductsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String productId,
      String productName,
      String thumbnailImagePath,
      String thumbnailImageName,
      bool isDisplayWhiteImage,
      String frontThumbnailImageFullPath});
}

/// @nodoc
class __$$_OrderHistoryProductsModelCopyWithImpl<$Res>
    extends _$OrderHistoryProductsModelCopyWithImpl<$Res,
        _$_OrderHistoryProductsModel>
    implements _$$_OrderHistoryProductsModelCopyWith<$Res> {
  __$$_OrderHistoryProductsModelCopyWithImpl(
      _$_OrderHistoryProductsModel _value,
      $Res Function(_$_OrderHistoryProductsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? thumbnailImagePath = null,
    Object? thumbnailImageName = null,
    Object? isDisplayWhiteImage = null,
    Object? frontThumbnailImageFullPath = null,
  }) {
    return _then(_$_OrderHistoryProductsModel(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImageName: null == thumbnailImageName
          ? _value.thumbnailImageName
          : thumbnailImageName // ignore: cast_nullable_to_non_nullable
              as String,
      isDisplayWhiteImage: null == isDisplayWhiteImage
          ? _value.isDisplayWhiteImage
          : isDisplayWhiteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      frontThumbnailImageFullPath: null == frontThumbnailImageFullPath
          ? _value.frontThumbnailImageFullPath
          : frontThumbnailImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderHistoryProductsModel implements _OrderHistoryProductsModel {
  const _$_OrderHistoryProductsModel(
      {this.productId = '',
      this.productName = '',
      this.thumbnailImagePath = '',
      this.thumbnailImageName = '',
      this.isDisplayWhiteImage = false,
      this.frontThumbnailImageFullPath = ''});

  factory _$_OrderHistoryProductsModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderHistoryProductsModelFromJson(json);

/* 商品ID */
  @override
  @JsonKey()
  final String productId;
/* 商品名 */
  @override
  @JsonKey()
  final String productName;
/* 商品画像連携用パス */
  @override
  @JsonKey()
  final String thumbnailImagePath;
/* 商品画像ファイル名 */
  @override
  @JsonKey()
  final String thumbnailImageName;
/*
   ホワイト画像表示フラグ

     - 通常商品の場合
   true：「販促対象」かつ「画像なし」の商品​の場合
   false：「販促対象」かつ「画像なし」の商品​以外の場合
     - 予約商品の場合
   true：「画像なし」の商品​の場合
   false：「画像なし」の商品​以外の場合
*/
  @override
  @JsonKey()
  final bool isDisplayWhiteImage;
/* 商品画像のフロント用フルパス - ファイルパスまたはファイル名が無い場合：null */
  @override
  @JsonKey()
  final String frontThumbnailImageFullPath;

  @override
  String toString() {
    return 'OrderHistoryProductsModel(productId: $productId, productName: $productName, thumbnailImagePath: $thumbnailImagePath, thumbnailImageName: $thumbnailImageName, isDisplayWhiteImage: $isDisplayWhiteImage, frontThumbnailImageFullPath: $frontThumbnailImageFullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderHistoryProductsModel &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.thumbnailImagePath, thumbnailImagePath) ||
                other.thumbnailImagePath == thumbnailImagePath) &&
            (identical(other.thumbnailImageName, thumbnailImageName) ||
                other.thumbnailImageName == thumbnailImageName) &&
            (identical(other.isDisplayWhiteImage, isDisplayWhiteImage) ||
                other.isDisplayWhiteImage == isDisplayWhiteImage) &&
            (identical(other.frontThumbnailImageFullPath,
                    frontThumbnailImageFullPath) ||
                other.frontThumbnailImageFullPath ==
                    frontThumbnailImageFullPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productName,
      thumbnailImagePath,
      thumbnailImageName,
      isDisplayWhiteImage,
      frontThumbnailImageFullPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderHistoryProductsModelCopyWith<_$_OrderHistoryProductsModel>
      get copyWith => __$$_OrderHistoryProductsModelCopyWithImpl<
          _$_OrderHistoryProductsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderHistoryProductsModelToJson(
      this,
    );
  }
}

abstract class _OrderHistoryProductsModel implements OrderHistoryProductsModel {
  const factory _OrderHistoryProductsModel(
      {final String productId,
      final String productName,
      final String thumbnailImagePath,
      final String thumbnailImageName,
      final bool isDisplayWhiteImage,
      final String frontThumbnailImageFullPath}) = _$_OrderHistoryProductsModel;

  factory _OrderHistoryProductsModel.fromJson(Map<String, dynamic> json) =
      _$_OrderHistoryProductsModel.fromJson;

  @override /* 商品ID */
  String get productId;
  @override /* 商品名 */
  String get productName;
  @override /* 商品画像連携用パス */
  String get thumbnailImagePath;
  @override /* 商品画像ファイル名 */
  String get thumbnailImageName;
  @override /*
   ホワイト画像表示フラグ

     - 通常商品の場合
   true：「販促対象」かつ「画像なし」の商品​の場合
   false：「販促対象」かつ「画像なし」の商品​以外の場合
     - 予約商品の場合
   true：「画像なし」の商品​の場合
   false：「画像なし」の商品​以外の場合
*/
  bool get isDisplayWhiteImage;
  @override /* 商品画像のフロント用フルパス - ファイルパスまたはファイル名が無い場合：null */
  String get frontThumbnailImageFullPath;
  @override
  @JsonKey(ignore: true)
  _$$_OrderHistoryProductsModelCopyWith<_$_OrderHistoryProductsModel>
      get copyWith => throw _privateConstructorUsedError;
}
