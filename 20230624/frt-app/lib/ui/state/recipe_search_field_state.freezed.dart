// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_search_field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeSearchFieldState {
  String get current => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeSearchFieldStateCopyWith<RecipeSearchFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeSearchFieldStateCopyWith<$Res> {
  factory $RecipeSearchFieldStateCopyWith(RecipeSearchFieldState value,
          $Res Function(RecipeSearchFieldState) then) =
      _$RecipeSearchFieldStateCopyWithImpl<$Res, RecipeSearchFieldState>;
  @useResult
  $Res call({String current});
}

/// @nodoc
class _$RecipeSearchFieldStateCopyWithImpl<$Res,
        $Val extends RecipeSearchFieldState>
    implements $RecipeSearchFieldStateCopyWith<$Res> {
  _$RecipeSearchFieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_value.copyWith(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeSearchFieldStateCopyWith<$Res>
    implements $RecipeSearchFieldStateCopyWith<$Res> {
  factory _$$_RecipeSearchFieldStateCopyWith(_$_RecipeSearchFieldState value,
          $Res Function(_$_RecipeSearchFieldState) then) =
      __$$_RecipeSearchFieldStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String current});
}

/// @nodoc
class __$$_RecipeSearchFieldStateCopyWithImpl<$Res>
    extends _$RecipeSearchFieldStateCopyWithImpl<$Res,
        _$_RecipeSearchFieldState>
    implements _$$_RecipeSearchFieldStateCopyWith<$Res> {
  __$$_RecipeSearchFieldStateCopyWithImpl(_$_RecipeSearchFieldState _value,
      $Res Function(_$_RecipeSearchFieldState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current = null,
  }) {
    return _then(_$_RecipeSearchFieldState(
      current: null == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RecipeSearchFieldState extends _RecipeSearchFieldState {
  const _$_RecipeSearchFieldState({this.current = ''}) : super._();

  @override
  @JsonKey()
  final String current;

  @override
  String toString() {
    return 'RecipeSearchFieldState(current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeSearchFieldState &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeSearchFieldStateCopyWith<_$_RecipeSearchFieldState> get copyWith =>
      __$$_RecipeSearchFieldStateCopyWithImpl<_$_RecipeSearchFieldState>(
          this, _$identity);
}

abstract class _RecipeSearchFieldState extends RecipeSearchFieldState {
  const factory _RecipeSearchFieldState({final String current}) =
      _$_RecipeSearchFieldState;
  const _RecipeSearchFieldState._() : super._();

  @override
  String get current;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeSearchFieldStateCopyWith<_$_RecipeSearchFieldState> get copyWith =>
      throw _privateConstructorUsedError;
}
