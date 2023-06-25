// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'front_category_master_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FrontCategoryMasterModel _$FrontCategoryMasterModelFromJson(
    Map<String, dynamic> json) {
  return _FrontCategoryMasterModel.fromJson(json);
}

/// @nodoc
mixin _$FrontCategoryMasterModel {
/* ルート名 */
// ignore: invalid_annotation_target
  @JsonKey(name: 'rootName')
  String get rootName => throw _privateConstructorUsedError; /* 順序 */
  int get order => throw _privateConstructorUsedError; /* 子要素 */
  List<CategoryMasterChildModel> get children =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FrontCategoryMasterModelCopyWith<FrontCategoryMasterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FrontCategoryMasterModelCopyWith<$Res> {
  factory $FrontCategoryMasterModelCopyWith(FrontCategoryMasterModel value,
          $Res Function(FrontCategoryMasterModel) then) =
      _$FrontCategoryMasterModelCopyWithImpl<$Res, FrontCategoryMasterModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rootName') String rootName,
      int order,
      List<CategoryMasterChildModel> children});
}

/// @nodoc
class _$FrontCategoryMasterModelCopyWithImpl<$Res,
        $Val extends FrontCategoryMasterModel>
    implements $FrontCategoryMasterModelCopyWith<$Res> {
  _$FrontCategoryMasterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootName = null,
    Object? order = null,
    Object? children = null,
  }) {
    return _then(_value.copyWith(
      rootName: null == rootName
          ? _value.rootName
          : rootName // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryMasterChildModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FrontCategoryMasterModelCopyWith<$Res>
    implements $FrontCategoryMasterModelCopyWith<$Res> {
  factory _$$_FrontCategoryMasterModelCopyWith(
          _$_FrontCategoryMasterModel value,
          $Res Function(_$_FrontCategoryMasterModel) then) =
      __$$_FrontCategoryMasterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rootName') String rootName,
      int order,
      List<CategoryMasterChildModel> children});
}

/// @nodoc
class __$$_FrontCategoryMasterModelCopyWithImpl<$Res>
    extends _$FrontCategoryMasterModelCopyWithImpl<$Res,
        _$_FrontCategoryMasterModel>
    implements _$$_FrontCategoryMasterModelCopyWith<$Res> {
  __$$_FrontCategoryMasterModelCopyWithImpl(_$_FrontCategoryMasterModel _value,
      $Res Function(_$_FrontCategoryMasterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootName = null,
    Object? order = null,
    Object? children = null,
  }) {
    return _then(_$_FrontCategoryMasterModel(
      rootName: null == rootName
          ? _value.rootName
          : rootName // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      children: null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<CategoryMasterChildModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FrontCategoryMasterModel implements _FrontCategoryMasterModel {
  const _$_FrontCategoryMasterModel(
      {@JsonKey(name: 'rootName') this.rootName = '',
      this.order = 0,
      final List<CategoryMasterChildModel> children =
          const <CategoryMasterChildModel>[]})
      : _children = children;

  factory _$_FrontCategoryMasterModel.fromJson(Map<String, dynamic> json) =>
      _$$_FrontCategoryMasterModelFromJson(json);

/* ルート名 */
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'rootName')
  final String rootName;
/* 順序 */
  @override
  @JsonKey()
  final int order;
/* 子要素 */
  final List<CategoryMasterChildModel> _children;
/* 子要素 */
  @override
  @JsonKey()
  List<CategoryMasterChildModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'FrontCategoryMasterModel(rootName: $rootName, order: $order, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FrontCategoryMasterModel &&
            (identical(other.rootName, rootName) ||
                other.rootName == rootName) &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rootName, order,
      const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FrontCategoryMasterModelCopyWith<_$_FrontCategoryMasterModel>
      get copyWith => __$$_FrontCategoryMasterModelCopyWithImpl<
          _$_FrontCategoryMasterModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FrontCategoryMasterModelToJson(
      this,
    );
  }
}

abstract class _FrontCategoryMasterModel implements FrontCategoryMasterModel {
  const factory _FrontCategoryMasterModel(
          {@JsonKey(name: 'rootName') final String rootName,
          final int order,
          final List<CategoryMasterChildModel> children}) =
      _$_FrontCategoryMasterModel;

  factory _FrontCategoryMasterModel.fromJson(Map<String, dynamic> json) =
      _$_FrontCategoryMasterModel.fromJson;

  @override /* ルート名 */
// ignore: invalid_annotation_target
  @JsonKey(name: 'rootName')
  String get rootName;
  @override /* 順序 */
  int get order;
  @override /* 子要素 */
  List<CategoryMasterChildModel> get children;
  @override
  @JsonKey(ignore: true)
  _$$_FrontCategoryMasterModelCopyWith<_$_FrontCategoryMasterModel>
      get copyWith => throw _privateConstructorUsedError;
}
