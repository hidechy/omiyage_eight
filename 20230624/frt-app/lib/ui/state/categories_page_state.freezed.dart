// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CategoriesPageState {
  Map<String, bool> get isOpenMap => throw _privateConstructorUsedError;
  List<FrontCategoriesModel> get frontCategoriesModel =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoriesPageStateCopyWith<CategoriesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesPageStateCopyWith<$Res> {
  factory $CategoriesPageStateCopyWith(
          CategoriesPageState value, $Res Function(CategoriesPageState) then) =
      _$CategoriesPageStateCopyWithImpl<$Res, CategoriesPageState>;
  @useResult
  $Res call(
      {Map<String, bool> isOpenMap,
      List<FrontCategoriesModel> frontCategoriesModel});
}

/// @nodoc
class _$CategoriesPageStateCopyWithImpl<$Res, $Val extends CategoriesPageState>
    implements $CategoriesPageStateCopyWith<$Res> {
  _$CategoriesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenMap = null,
    Object? frontCategoriesModel = null,
  }) {
    return _then(_value.copyWith(
      isOpenMap: null == isOpenMap
          ? _value.isOpenMap
          : isOpenMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      frontCategoriesModel: null == frontCategoriesModel
          ? _value.frontCategoriesModel
          : frontCategoriesModel // ignore: cast_nullable_to_non_nullable
              as List<FrontCategoriesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoriesPageStateCopyWith<$Res>
    implements $CategoriesPageStateCopyWith<$Res> {
  factory _$$_CategoriesPageStateCopyWith(_$_CategoriesPageState value,
          $Res Function(_$_CategoriesPageState) then) =
      __$$_CategoriesPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, bool> isOpenMap,
      List<FrontCategoriesModel> frontCategoriesModel});
}

/// @nodoc
class __$$_CategoriesPageStateCopyWithImpl<$Res>
    extends _$CategoriesPageStateCopyWithImpl<$Res, _$_CategoriesPageState>
    implements _$$_CategoriesPageStateCopyWith<$Res> {
  __$$_CategoriesPageStateCopyWithImpl(_$_CategoriesPageState _value,
      $Res Function(_$_CategoriesPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpenMap = null,
    Object? frontCategoriesModel = null,
  }) {
    return _then(_$_CategoriesPageState(
      isOpenMap: null == isOpenMap
          ? _value._isOpenMap
          : isOpenMap // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
      frontCategoriesModel: null == frontCategoriesModel
          ? _value._frontCategoriesModel
          : frontCategoriesModel // ignore: cast_nullable_to_non_nullable
              as List<FrontCategoriesModel>,
    ));
  }
}

/// @nodoc

class _$_CategoriesPageState extends _CategoriesPageState {
  _$_CategoriesPageState(
      {final Map<String, bool> isOpenMap = const <String, bool>{},
      final List<FrontCategoriesModel> frontCategoriesModel =
          const <FrontCategoriesModel>[]})
      : _isOpenMap = isOpenMap,
        _frontCategoriesModel = frontCategoriesModel,
        super._();

  final Map<String, bool> _isOpenMap;
  @override
  @JsonKey()
  Map<String, bool> get isOpenMap {
    if (_isOpenMap is EqualUnmodifiableMapView) return _isOpenMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_isOpenMap);
  }

  final List<FrontCategoriesModel> _frontCategoriesModel;
  @override
  @JsonKey()
  List<FrontCategoriesModel> get frontCategoriesModel {
    if (_frontCategoriesModel is EqualUnmodifiableListView)
      return _frontCategoriesModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frontCategoriesModel);
  }

  @override
  String toString() {
    return 'CategoriesPageState(isOpenMap: $isOpenMap, frontCategoriesModel: $frontCategoriesModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesPageState &&
            const DeepCollectionEquality()
                .equals(other._isOpenMap, _isOpenMap) &&
            const DeepCollectionEquality()
                .equals(other._frontCategoriesModel, _frontCategoriesModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_isOpenMap),
      const DeepCollectionEquality().hash(_frontCategoriesModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoriesPageStateCopyWith<_$_CategoriesPageState> get copyWith =>
      __$$_CategoriesPageStateCopyWithImpl<_$_CategoriesPageState>(
          this, _$identity);
}

abstract class _CategoriesPageState extends CategoriesPageState {
  factory _CategoriesPageState(
          {final Map<String, bool> isOpenMap,
          final List<FrontCategoriesModel> frontCategoriesModel}) =
      _$_CategoriesPageState;
  _CategoriesPageState._() : super._();

  @override
  Map<String, bool> get isOpenMap;
  @override
  List<FrontCategoriesModel> get frontCategoriesModel;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesPageStateCopyWith<_$_CategoriesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
