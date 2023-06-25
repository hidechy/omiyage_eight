// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'focus_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FocusState {
  bool get isFocused => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FocusStateCopyWith<FocusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FocusStateCopyWith<$Res> {
  factory $FocusStateCopyWith(
          FocusState value, $Res Function(FocusState) then) =
      _$FocusStateCopyWithImpl<$Res, FocusState>;
  @useResult
  $Res call({bool isFocused});
}

/// @nodoc
class _$FocusStateCopyWithImpl<$Res, $Val extends FocusState>
    implements $FocusStateCopyWith<$Res> {
  _$FocusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFocused = null,
  }) {
    return _then(_value.copyWith(
      isFocused: null == isFocused
          ? _value.isFocused
          : isFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FocusStateCopyWith<$Res>
    implements $FocusStateCopyWith<$Res> {
  factory _$$_FocusStateCopyWith(
          _$_FocusState value, $Res Function(_$_FocusState) then) =
      __$$_FocusStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFocused});
}

/// @nodoc
class __$$_FocusStateCopyWithImpl<$Res>
    extends _$FocusStateCopyWithImpl<$Res, _$_FocusState>
    implements _$$_FocusStateCopyWith<$Res> {
  __$$_FocusStateCopyWithImpl(
      _$_FocusState _value, $Res Function(_$_FocusState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFocused = null,
  }) {
    return _then(_$_FocusState(
      isFocused: null == isFocused
          ? _value.isFocused
          : isFocused // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FocusState implements _FocusState {
  _$_FocusState({this.isFocused = false});

  @override
  @JsonKey()
  final bool isFocused;

  @override
  String toString() {
    return 'FocusState(isFocused: $isFocused)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FocusState &&
            (identical(other.isFocused, isFocused) ||
                other.isFocused == isFocused));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFocused);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FocusStateCopyWith<_$_FocusState> get copyWith =>
      __$$_FocusStateCopyWithImpl<_$_FocusState>(this, _$identity);
}

abstract class _FocusState implements FocusState {
  factory _FocusState({final bool isFocused}) = _$_FocusState;

  @override
  bool get isFocused;
  @override
  @JsonKey(ignore: true)
  _$$_FocusStateCopyWith<_$_FocusState> get copyWith =>
      throw _privateConstructorUsedError;
}
