// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TopPageState {
  String? get postalNumber => throw _privateConstructorUsedError;
  bool get isValidPostalNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopPageStateCopyWith<TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopPageStateCopyWith<$Res> {
  factory $TopPageStateCopyWith(
          TopPageState value, $Res Function(TopPageState) then) =
      _$TopPageStateCopyWithImpl<$Res, TopPageState>;
  @useResult
  $Res call({String? postalNumber, bool isValidPostalNumber});
}

/// @nodoc
class _$TopPageStateCopyWithImpl<$Res, $Val extends TopPageState>
    implements $TopPageStateCopyWith<$Res> {
  _$TopPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalNumber = freezed,
    Object? isValidPostalNumber = null,
  }) {
    return _then(_value.copyWith(
      postalNumber: freezed == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidPostalNumber: null == isValidPostalNumber
          ? _value.isValidPostalNumber
          : isValidPostalNumber // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TopPageStateCopyWith<$Res>
    implements $TopPageStateCopyWith<$Res> {
  factory _$$_TopPageStateCopyWith(
          _$_TopPageState value, $Res Function(_$_TopPageState) then) =
      __$$_TopPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? postalNumber, bool isValidPostalNumber});
}

/// @nodoc
class __$$_TopPageStateCopyWithImpl<$Res>
    extends _$TopPageStateCopyWithImpl<$Res, _$_TopPageState>
    implements _$$_TopPageStateCopyWith<$Res> {
  __$$_TopPageStateCopyWithImpl(
      _$_TopPageState _value, $Res Function(_$_TopPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalNumber = freezed,
    Object? isValidPostalNumber = null,
  }) {
    return _then(_$_TopPageState(
      postalNumber: freezed == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      isValidPostalNumber: null == isValidPostalNumber
          ? _value.isValidPostalNumber
          : isValidPostalNumber // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TopPageState implements _TopPageState {
  _$_TopPageState({this.postalNumber, this.isValidPostalNumber = false});

  @override
  final String? postalNumber;
  @override
  @JsonKey()
  final bool isValidPostalNumber;

  @override
  String toString() {
    return 'TopPageState(postalNumber: $postalNumber, isValidPostalNumber: $isValidPostalNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopPageState &&
            (identical(other.postalNumber, postalNumber) ||
                other.postalNumber == postalNumber) &&
            (identical(other.isValidPostalNumber, isValidPostalNumber) ||
                other.isValidPostalNumber == isValidPostalNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, postalNumber, isValidPostalNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TopPageStateCopyWith<_$_TopPageState> get copyWith =>
      __$$_TopPageStateCopyWithImpl<_$_TopPageState>(this, _$identity);
}

abstract class _TopPageState implements TopPageState {
  factory _TopPageState(
      {final String? postalNumber,
      final bool isValidPostalNumber}) = _$_TopPageState;

  @override
  String? get postalNumber;
  @override
  bool get isValidPostalNumber;
  @override
  @JsonKey(ignore: true)
  _$$_TopPageStateCopyWith<_$_TopPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
