// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyboard_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KeyboardState {
  bool get visible => throw _privateConstructorUsedError;
  bool get hasFocus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KeyboardStateCopyWith<KeyboardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyboardStateCopyWith<$Res> {
  factory $KeyboardStateCopyWith(
          KeyboardState value, $Res Function(KeyboardState) then) =
      _$KeyboardStateCopyWithImpl<$Res, KeyboardState>;
  @useResult
  $Res call({bool visible, bool hasFocus});
}

/// @nodoc
class _$KeyboardStateCopyWithImpl<$Res, $Val extends KeyboardState>
    implements $KeyboardStateCopyWith<$Res> {
  _$KeyboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
    Object? hasFocus = null,
  }) {
    return _then(_value.copyWith(
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFocus: null == hasFocus
          ? _value.hasFocus
          : hasFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeyboardStateCopyWith<$Res>
    implements $KeyboardStateCopyWith<$Res> {
  factory _$$_KeyboardStateCopyWith(
          _$_KeyboardState value, $Res Function(_$_KeyboardState) then) =
      __$$_KeyboardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool visible, bool hasFocus});
}

/// @nodoc
class __$$_KeyboardStateCopyWithImpl<$Res>
    extends _$KeyboardStateCopyWithImpl<$Res, _$_KeyboardState>
    implements _$$_KeyboardStateCopyWith<$Res> {
  __$$_KeyboardStateCopyWithImpl(
      _$_KeyboardState _value, $Res Function(_$_KeyboardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? visible = null,
    Object? hasFocus = null,
  }) {
    return _then(_$_KeyboardState(
      visible: null == visible
          ? _value.visible
          : visible // ignore: cast_nullable_to_non_nullable
              as bool,
      hasFocus: null == hasFocus
          ? _value.hasFocus
          : hasFocus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_KeyboardState implements _KeyboardState {
  const _$_KeyboardState({this.visible = false, this.hasFocus = false});

  @override
  @JsonKey()
  final bool visible;
  @override
  @JsonKey()
  final bool hasFocus;

  @override
  String toString() {
    return 'KeyboardState(visible: $visible, hasFocus: $hasFocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyboardState &&
            (identical(other.visible, visible) || other.visible == visible) &&
            (identical(other.hasFocus, hasFocus) ||
                other.hasFocus == hasFocus));
  }

  @override
  int get hashCode => Object.hash(runtimeType, visible, hasFocus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyboardStateCopyWith<_$_KeyboardState> get copyWith =>
      __$$_KeyboardStateCopyWithImpl<_$_KeyboardState>(this, _$identity);
}

abstract class _KeyboardState implements KeyboardState {
  const factory _KeyboardState({final bool visible, final bool hasFocus}) =
      _$_KeyboardState;

  @override
  bool get visible;
  @override
  bool get hasFocus;
  @override
  @JsonKey(ignore: true)
  _$$_KeyboardStateCopyWith<_$_KeyboardState> get copyWith =>
      throw _privateConstructorUsedError;
}
