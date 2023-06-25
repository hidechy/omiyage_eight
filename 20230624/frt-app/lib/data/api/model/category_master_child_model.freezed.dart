// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_master_child_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryMasterChildModel _$CategoryMasterChildModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryMasterChildModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryMasterChildModel {
/* コード */
  String get code => throw _privateConstructorUsedError; /* 名前 */
  String get name => throw _privateConstructorUsedError; /* 順序 */
  int get order => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryMasterChildModelCopyWith<CategoryMasterChildModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryMasterChildModelCopyWith<$Res> {
  factory $CategoryMasterChildModelCopyWith(CategoryMasterChildModel value,
          $Res Function(CategoryMasterChildModel) then) =
      _$CategoryMasterChildModelCopyWithImpl<$Res, CategoryMasterChildModel>;
  @useResult
  $Res call({String code, String name, int order});
}

/// @nodoc
class _$CategoryMasterChildModelCopyWithImpl<$Res,
        $Val extends CategoryMasterChildModel>
    implements $CategoryMasterChildModelCopyWith<$Res> {
  _$CategoryMasterChildModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_CategoryMasterChildModelCopyWith<$Res>
    implements $CategoryMasterChildModelCopyWith<$Res> {
  factory _$$_CategoryMasterChildModelCopyWith(
          _$_CategoryMasterChildModel value,
          $Res Function(_$_CategoryMasterChildModel) then) =
      __$$_CategoryMasterChildModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String name, int order});
}

/// @nodoc
class __$$_CategoryMasterChildModelCopyWithImpl<$Res>
    extends _$CategoryMasterChildModelCopyWithImpl<$Res,
        _$_CategoryMasterChildModel>
    implements _$$_CategoryMasterChildModelCopyWith<$Res> {
  __$$_CategoryMasterChildModelCopyWithImpl(_$_CategoryMasterChildModel _value,
      $Res Function(_$_CategoryMasterChildModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? name = null,
    Object? order = null,
  }) {
    return _then(_$_CategoryMasterChildModel(
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
class _$_CategoryMasterChildModel implements _CategoryMasterChildModel {
  const _$_CategoryMasterChildModel(
      {this.code = '', this.name = '', this.order = 0});

  factory _$_CategoryMasterChildModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryMasterChildModelFromJson(json);

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
    return 'CategoryMasterChildModel(code: $code, name: $name, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryMasterChildModel &&
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
  _$$_CategoryMasterChildModelCopyWith<_$_CategoryMasterChildModel>
      get copyWith => __$$_CategoryMasterChildModelCopyWithImpl<
          _$_CategoryMasterChildModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryMasterChildModelToJson(
      this,
    );
  }
}

abstract class _CategoryMasterChildModel implements CategoryMasterChildModel {
  const factory _CategoryMasterChildModel(
      {final String code,
      final String name,
      final int order}) = _$_CategoryMasterChildModel;

  factory _CategoryMasterChildModel.fromJson(Map<String, dynamic> json) =
      _$_CategoryMasterChildModel.fromJson;

  @override /* コード */
  String get code;
  @override /* 名前 */
  String get name;
  @override /* 順序 */
  int get order;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryMasterChildModelCopyWith<_$_CategoryMasterChildModel>
      get copyWith => throw _privateConstructorUsedError;
}
