// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'akachanhonpo_category_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AkachanhonpoCategoryInfoModel _$AkachanhonpoCategoryInfoModelFromJson(
    Map<String, dynamic> json) {
  return _AkachanhonpoCategoryInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AkachanhonpoCategoryInfoModel {
/* カテゴリコード */
  String get categoryCode => throw _privateConstructorUsedError; /* カテゴリ名 */
  String get categoryName => throw _privateConstructorUsedError; /* 画像ファイル名 */
  String get fileName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AkachanhonpoCategoryInfoModelCopyWith<AkachanhonpoCategoryInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AkachanhonpoCategoryInfoModelCopyWith<$Res> {
  factory $AkachanhonpoCategoryInfoModelCopyWith(
          AkachanhonpoCategoryInfoModel value,
          $Res Function(AkachanhonpoCategoryInfoModel) then) =
      _$AkachanhonpoCategoryInfoModelCopyWithImpl<$Res,
          AkachanhonpoCategoryInfoModel>;
  @useResult
  $Res call({String categoryCode, String categoryName, String fileName});
}

/// @nodoc
class _$AkachanhonpoCategoryInfoModelCopyWithImpl<$Res,
        $Val extends AkachanhonpoCategoryInfoModel>
    implements $AkachanhonpoCategoryInfoModelCopyWith<$Res> {
  _$AkachanhonpoCategoryInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? fileName = null,
  }) {
    return _then(_value.copyWith(
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AkachanhonpoCategoryInfoModelCopyWith<$Res>
    implements $AkachanhonpoCategoryInfoModelCopyWith<$Res> {
  factory _$$_AkachanhonpoCategoryInfoModelCopyWith(
          _$_AkachanhonpoCategoryInfoModel value,
          $Res Function(_$_AkachanhonpoCategoryInfoModel) then) =
      __$$_AkachanhonpoCategoryInfoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryCode, String categoryName, String fileName});
}

/// @nodoc
class __$$_AkachanhonpoCategoryInfoModelCopyWithImpl<$Res>
    extends _$AkachanhonpoCategoryInfoModelCopyWithImpl<$Res,
        _$_AkachanhonpoCategoryInfoModel>
    implements _$$_AkachanhonpoCategoryInfoModelCopyWith<$Res> {
  __$$_AkachanhonpoCategoryInfoModelCopyWithImpl(
      _$_AkachanhonpoCategoryInfoModel _value,
      $Res Function(_$_AkachanhonpoCategoryInfoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryCode = null,
    Object? categoryName = null,
    Object? fileName = null,
  }) {
    return _then(_$_AkachanhonpoCategoryInfoModel(
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AkachanhonpoCategoryInfoModel extends _AkachanhonpoCategoryInfoModel
    with BaseCategoryModel {
  const _$_AkachanhonpoCategoryInfoModel(
      {this.categoryCode = '', this.categoryName = '', this.fileName = ''})
      : super._();

  factory _$_AkachanhonpoCategoryInfoModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_AkachanhonpoCategoryInfoModelFromJson(json);

/* カテゴリコード */
  @override
  @JsonKey()
  final String categoryCode;
/* カテゴリ名 */
  @override
  @JsonKey()
  final String categoryName;
/* 画像ファイル名 */
  @override
  @JsonKey()
  final String fileName;

  @override
  String toString() {
    return 'AkachanhonpoCategoryInfoModel(categoryCode: $categoryCode, categoryName: $categoryName, fileName: $fileName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AkachanhonpoCategoryInfoModel &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryCode, categoryName, fileName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AkachanhonpoCategoryInfoModelCopyWith<_$_AkachanhonpoCategoryInfoModel>
      get copyWith => __$$_AkachanhonpoCategoryInfoModelCopyWithImpl<
          _$_AkachanhonpoCategoryInfoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AkachanhonpoCategoryInfoModelToJson(
      this,
    );
  }
}

abstract class _AkachanhonpoCategoryInfoModel
    extends AkachanhonpoCategoryInfoModel implements BaseCategoryModel {
  const factory _AkachanhonpoCategoryInfoModel(
      {final String categoryCode,
      final String categoryName,
      final String fileName}) = _$_AkachanhonpoCategoryInfoModel;
  const _AkachanhonpoCategoryInfoModel._() : super._();

  factory _AkachanhonpoCategoryInfoModel.fromJson(Map<String, dynamic> json) =
      _$_AkachanhonpoCategoryInfoModel.fromJson;

  @override /* カテゴリコード */
  String get categoryCode;
  @override /* カテゴリ名 */
  String get categoryName;
  @override /* 画像ファイル名 */
  String get fileName;
  @override
  @JsonKey(ignore: true)
  _$$_AkachanhonpoCategoryInfoModelCopyWith<_$_AkachanhonpoCategoryInfoModel>
      get copyWith => throw _privateConstructorUsedError;
}
