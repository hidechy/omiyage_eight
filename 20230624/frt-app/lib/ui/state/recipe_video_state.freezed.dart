// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_video_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeVideoState {
  bool get isVideoControllerInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeVideoStateCopyWith<RecipeVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeVideoStateCopyWith<$Res> {
  factory $RecipeVideoStateCopyWith(
          RecipeVideoState value, $Res Function(RecipeVideoState) then) =
      _$RecipeVideoStateCopyWithImpl<$Res, RecipeVideoState>;
  @useResult
  $Res call({bool isVideoControllerInit});
}

/// @nodoc
class _$RecipeVideoStateCopyWithImpl<$Res, $Val extends RecipeVideoState>
    implements $RecipeVideoStateCopyWith<$Res> {
  _$RecipeVideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVideoControllerInit = null,
  }) {
    return _then(_value.copyWith(
      isVideoControllerInit: null == isVideoControllerInit
          ? _value.isVideoControllerInit
          : isVideoControllerInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeVideoStateCopyWith<$Res>
    implements $RecipeVideoStateCopyWith<$Res> {
  factory _$$_RecipeVideoStateCopyWith(
          _$_RecipeVideoState value, $Res Function(_$_RecipeVideoState) then) =
      __$$_RecipeVideoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isVideoControllerInit});
}

/// @nodoc
class __$$_RecipeVideoStateCopyWithImpl<$Res>
    extends _$RecipeVideoStateCopyWithImpl<$Res, _$_RecipeVideoState>
    implements _$$_RecipeVideoStateCopyWith<$Res> {
  __$$_RecipeVideoStateCopyWithImpl(
      _$_RecipeVideoState _value, $Res Function(_$_RecipeVideoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isVideoControllerInit = null,
  }) {
    return _then(_$_RecipeVideoState(
      isVideoControllerInit: null == isVideoControllerInit
          ? _value.isVideoControllerInit
          : isVideoControllerInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RecipeVideoState implements _RecipeVideoState {
  const _$_RecipeVideoState({this.isVideoControllerInit = false});

  @override
  @JsonKey()
  final bool isVideoControllerInit;

  @override
  String toString() {
    return 'RecipeVideoState(isVideoControllerInit: $isVideoControllerInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeVideoState &&
            (identical(other.isVideoControllerInit, isVideoControllerInit) ||
                other.isVideoControllerInit == isVideoControllerInit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isVideoControllerInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeVideoStateCopyWith<_$_RecipeVideoState> get copyWith =>
      __$$_RecipeVideoStateCopyWithImpl<_$_RecipeVideoState>(this, _$identity);
}

abstract class _RecipeVideoState implements RecipeVideoState {
  const factory _RecipeVideoState({final bool isVideoControllerInit}) =
      _$_RecipeVideoState;

  @override
  bool get isVideoControllerInit;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeVideoStateCopyWith<_$_RecipeVideoState> get copyWith =>
      throw _privateConstructorUsedError;
}
