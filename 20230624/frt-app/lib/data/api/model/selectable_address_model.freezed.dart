// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SelectableAddressModel _$SelectableAddressModelFromJson(
    Map<String, dynamic> json) {
  return _SelectableAddressModel.fromJson(json);
}

/// @nodoc
mixin _$SelectableAddressModel {
/* コード　以下のいずれかが設定される - 都道府県コード - 市区郡町村コード - 通称コード - 丁目コード */
  String get code =>
      throw _privateConstructorUsedError; /* 名称　以下のいずれかが設定される - 都道府県名 - 市区郡町村名 - 通称名 - 丁目 */
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectableAddressModelCopyWith<SelectableAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectableAddressModelCopyWith<$Res> {
  factory $SelectableAddressModelCopyWith(SelectableAddressModel value,
          $Res Function(SelectableAddressModel) then) =
      _$SelectableAddressModelCopyWithImpl<$Res, SelectableAddressModel>;
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class _$SelectableAddressModelCopyWithImpl<$Res,
        $Val extends SelectableAddressModel>
    implements $SelectableAddressModelCopyWith<$Res> {
  _$SelectableAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectableAddressModelCopyWith<$Res>
    implements $SelectableAddressModelCopyWith<$Res> {
  factory _$$_SelectableAddressModelCopyWith(_$_SelectableAddressModel value,
          $Res Function(_$_SelectableAddressModel) then) =
      __$$_SelectableAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name});
}

/// @nodoc
class __$$_SelectableAddressModelCopyWithImpl<$Res>
    extends _$SelectableAddressModelCopyWithImpl<$Res,
        _$_SelectableAddressModel>
    implements _$$_SelectableAddressModelCopyWith<$Res> {
  __$$_SelectableAddressModelCopyWithImpl(_$_SelectableAddressModel _value,
      $Res Function(_$_SelectableAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
  }) {
    return _then(_$_SelectableAddressModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SelectableAddressModel implements _SelectableAddressModel {
  const _$_SelectableAddressModel({this.code = '', this.name = 'なし'});

  factory _$_SelectableAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_SelectableAddressModelFromJson(json);

/* コード　以下のいずれかが設定される - 都道府県コード - 市区郡町村コード - 通称コード - 丁目コード */
  @override
  @JsonKey()
  final String code;
/* 名称　以下のいずれかが設定される - 都道府県名 - 市区郡町村名 - 通称名 - 丁目 */
  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'SelectableAddressModel(code: $code, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectableAddressModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectableAddressModelCopyWith<_$_SelectableAddressModel> get copyWith =>
      __$$_SelectableAddressModelCopyWithImpl<_$_SelectableAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SelectableAddressModelToJson(
      this,
    );
  }
}

abstract class _SelectableAddressModel implements SelectableAddressModel {
  const factory _SelectableAddressModel(
      {final String code, final String name}) = _$_SelectableAddressModel;

  factory _SelectableAddressModel.fromJson(Map<String, dynamic> json) =
      _$_SelectableAddressModel.fromJson;

  @override /* コード　以下のいずれかが設定される - 都道府県コード - 市区郡町村コード - 通称コード - 丁目コード */
  String get code;
  @override /* 名称　以下のいずれかが設定される - 都道府県名 - 市区郡町村名 - 通称名 - 丁目 */
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SelectableAddressModelCopyWith<_$_SelectableAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
