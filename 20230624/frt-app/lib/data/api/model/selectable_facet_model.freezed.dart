// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_facet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectableFacetModel _$SelectableFacetModelFromJson(Map<String, dynamic> json) {
  return _SelectableFacetModel.fromJson(json);
}

/// @nodoc
mixin _$SelectableFacetModel {
/* コード　以下のいずれかが設定される - カテゴリコード - 広告掲載日コード - 価格コード - メーカーコード - ブランドコード - 色コード - サイズコード - 内容量コード - 値引・ボーナスポイントコード */
  String get code =>
      throw _privateConstructorUsedError; /* 名称　以下のいずれかが設定される - カテゴリ名 - 広告掲載日名 - 価格名 - メーカー名 - ブランド名 - 色名 - サイズ名 - 内容量名 - 値引・ボーナスポイント名 */
  String get name =>
      throw _privateConstructorUsedError; /* 検索結果商品数 以下のいずれかの項目の検索ヒット数が設定される - カテゴリ - 広告掲載日 - 価格 - メーカー - ブランド - 色 - サイズ - 内容量 - 値引・ボーナスポイント */
  int get count => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectableFacetModelCopyWith<SelectableFacetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableFacetModelCopyWith<$Res> {
  factory $SelectableFacetModelCopyWith(SelectableFacetModel value,
          $Res Function(SelectableFacetModel) then) =
      _$SelectableFacetModelCopyWithImpl<$Res, SelectableFacetModel>;
  @useResult
  $Res call({String code, String name, int count});
}

/// @nodoc
class _$SelectableFacetModelCopyWithImpl<$Res,
        $Val extends SelectableFacetModel>
    implements $SelectableFacetModelCopyWith<$Res> {
  _$SelectableFacetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectableFacetModelCopyWith<$Res>
    implements $SelectableFacetModelCopyWith<$Res> {
  factory _$$_SelectableFacetModelCopyWith(_$_SelectableFacetModel value,
          $Res Function(_$_SelectableFacetModel) then) =
      __$$_SelectableFacetModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, int count});
}

/// @nodoc
class __$$_SelectableFacetModelCopyWithImpl<$Res>
    extends _$SelectableFacetModelCopyWithImpl<$Res, _$_SelectableFacetModel>
    implements _$$_SelectableFacetModelCopyWith<$Res> {
  __$$_SelectableFacetModelCopyWithImpl(_$_SelectableFacetModel _value,
      $Res Function(_$_SelectableFacetModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_$_SelectableFacetModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectableFacetModel implements _SelectableFacetModel {
  const _$_SelectableFacetModel(
      {this.code = '', this.name = '', this.count = 0});

  factory _$_SelectableFacetModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelectableFacetModelFromJson(json);

/* コード　以下のいずれかが設定される - カテゴリコード - 広告掲載日コード - 価格コード - メーカーコード - ブランドコード - 色コード - サイズコード - 内容量コード - 値引・ボーナスポイントコード */
  @override
  @JsonKey()
  final String code;
/* 名称　以下のいずれかが設定される - カテゴリ名 - 広告掲載日名 - 価格名 - メーカー名 - ブランド名 - 色名 - サイズ名 - 内容量名 - 値引・ボーナスポイント名 */
  @override
  @JsonKey()
  final String name;
/* 検索結果商品数 以下のいずれかの項目の検索ヒット数が設定される - カテゴリ - 広告掲載日 - 価格 - メーカー - ブランド - 色 - サイズ - 内容量 - 値引・ボーナスポイント */
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'SelectableFacetModel(code: $code, name: $name, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectableFacetModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectableFacetModelCopyWith<_$_SelectableFacetModel> get copyWith =>
      __$$_SelectableFacetModelCopyWithImpl<_$_SelectableFacetModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectableFacetModelToJson(
      this,
    );
  }
}

abstract class _SelectableFacetModel implements SelectableFacetModel {
  const factory _SelectableFacetModel(
      {final String code,
      final String name,
      final int count}) = _$_SelectableFacetModel;

  factory _SelectableFacetModel.fromJson(Map<String, dynamic> json) =
      _$_SelectableFacetModel.fromJson;

  @override /* コード　以下のいずれかが設定される - カテゴリコード - 広告掲載日コード - 価格コード - メーカーコード - ブランドコード - 色コード - サイズコード - 内容量コード - 値引・ボーナスポイントコード */
  String get code;
  @override /* 名称　以下のいずれかが設定される - カテゴリ名 - 広告掲載日名 - 価格名 - メーカー名 - ブランド名 - 色名 - サイズ名 - 内容量名 - 値引・ボーナスポイント名 */
  String get name;
  @override /* 検索結果商品数 以下のいずれかの項目の検索ヒット数が設定される - カテゴリ - 広告掲載日 - 価格 - メーカー - ブランド - 色 - サイズ - 内容量 - 値引・ボーナスポイント */
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$_SelectableFacetModelCopyWith<_$_SelectableFacetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
