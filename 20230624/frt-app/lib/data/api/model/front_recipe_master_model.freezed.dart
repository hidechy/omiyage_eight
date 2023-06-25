// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'front_recipe_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrontRecipeMasterModel _$FrontRecipeMasterModelFromJson(
    Map<String, dynamic> json) {
  return _FrontRecipeMasterModel.fromJson(json);
}

/// @nodoc
mixin _$FrontRecipeMasterModel {
/* コード */
  String get code => throw _privateConstructorUsedError; /* 名前 */
  String get name => throw _privateConstructorUsedError; /* 順序 */
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrontRecipeMasterModelCopyWith<FrontRecipeMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontRecipeMasterModelCopyWith<$Res> {
  factory $FrontRecipeMasterModelCopyWith(FrontRecipeMasterModel value,
          $Res Function(FrontRecipeMasterModel) then) =
      _$FrontRecipeMasterModelCopyWithImpl<$Res, FrontRecipeMasterModel>;
  @useResult
  $Res call({String code, String name, int order});
}

/// @nodoc
class _$FrontRecipeMasterModelCopyWithImpl<$Res,
        $Val extends FrontRecipeMasterModel>
    implements $FrontRecipeMasterModelCopyWith<$Res> {
  _$FrontRecipeMasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? order = null,
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
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrontRecipeMasterModelCopyWith<$Res>
    implements $FrontRecipeMasterModelCopyWith<$Res> {
  factory _$$_FrontRecipeMasterModelCopyWith(_$_FrontRecipeMasterModel value,
          $Res Function(_$_FrontRecipeMasterModel) then) =
      __$$_FrontRecipeMasterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, int order});
}

/// @nodoc
class __$$_FrontRecipeMasterModelCopyWithImpl<$Res>
    extends _$FrontRecipeMasterModelCopyWithImpl<$Res,
        _$_FrontRecipeMasterModel>
    implements _$$_FrontRecipeMasterModelCopyWith<$Res> {
  __$$_FrontRecipeMasterModelCopyWithImpl(_$_FrontRecipeMasterModel _value,
      $Res Function(_$_FrontRecipeMasterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? order = null,
  }) {
    return _then(_$_FrontRecipeMasterModel(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrontRecipeMasterModel implements _FrontRecipeMasterModel {
  const _$_FrontRecipeMasterModel(
      {this.code = '', this.name = '', this.order = 0});

  factory _$_FrontRecipeMasterModel.fromJson(Map<String, dynamic> json) =>
      _$$_FrontRecipeMasterModelFromJson(json);

/* コード */
  @override
  @JsonKey()
  final String code;
/* 名前 */
  @override
  @JsonKey()
  final String name;
/* 順序 */
  @override
  @JsonKey()
  final int order;

  @override
  String toString() {
    return 'FrontRecipeMasterModel(code: $code, name: $name, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrontRecipeMasterModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, name, order);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrontRecipeMasterModelCopyWith<_$_FrontRecipeMasterModel> get copyWith =>
      __$$_FrontRecipeMasterModelCopyWithImpl<_$_FrontRecipeMasterModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrontRecipeMasterModelToJson(
      this,
    );
  }
}

abstract class _FrontRecipeMasterModel implements FrontRecipeMasterModel {
  const factory _FrontRecipeMasterModel(
      {final String code,
      final String name,
      final int order}) = _$_FrontRecipeMasterModel;

  factory _FrontRecipeMasterModel.fromJson(Map<String, dynamic> json) =
      _$_FrontRecipeMasterModel.fromJson;

  @override /* コード */
  String get code;
  @override /* 名前 */
  String get name;
  @override /* 順序 */
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_FrontRecipeMasterModelCopyWith<_$_FrontRecipeMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
