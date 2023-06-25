// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'medicine_confirmations_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MedicineConfirmationsPageState {
  bool get isExpanded => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MedicineConfirmationsPageStateCopyWith<MedicineConfirmationsPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MedicineConfirmationsPageStateCopyWith<$Res> {
  factory $MedicineConfirmationsPageStateCopyWith(
          MedicineConfirmationsPageState value,
          $Res Function(MedicineConfirmationsPageState) then) =
      _$MedicineConfirmationsPageStateCopyWithImpl<$Res,
          MedicineConfirmationsPageState>;
  @useResult
  $Res call({bool isExpanded, bool isActive});
}

/// @nodoc
class _$MedicineConfirmationsPageStateCopyWithImpl<$Res,
        $Val extends MedicineConfirmationsPageState>
    implements $MedicineConfirmationsPageStateCopyWith<$Res> {
  _$MedicineConfirmationsPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MedicineConfirmationsPageStateCopyWith<$Res>
    implements $MedicineConfirmationsPageStateCopyWith<$Res> {
  factory _$$_MedicineConfirmationsPageStateCopyWith(
          _$_MedicineConfirmationsPageState value,
          $Res Function(_$_MedicineConfirmationsPageState) then) =
      __$$_MedicineConfirmationsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isExpanded, bool isActive});
}

/// @nodoc
class __$$_MedicineConfirmationsPageStateCopyWithImpl<$Res>
    extends _$MedicineConfirmationsPageStateCopyWithImpl<$Res,
        _$_MedicineConfirmationsPageState>
    implements _$$_MedicineConfirmationsPageStateCopyWith<$Res> {
  __$$_MedicineConfirmationsPageStateCopyWithImpl(
      _$_MedicineConfirmationsPageState _value,
      $Res Function(_$_MedicineConfirmationsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isExpanded = null,
    Object? isActive = null,
  }) {
    return _then(_$_MedicineConfirmationsPageState(
      isExpanded: null == isExpanded
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MedicineConfirmationsPageState
    extends _MedicineConfirmationsPageState {
  _$_MedicineConfirmationsPageState(
      {this.isExpanded = false, this.isActive = false})
      : super._();

  @override
  @JsonKey()
  final bool isExpanded;
  @override
  @JsonKey()
  final bool isActive;

  @override
  String toString() {
    return 'MedicineConfirmationsPageState(isExpanded: $isExpanded, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MedicineConfirmationsPageState &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isExpanded, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MedicineConfirmationsPageStateCopyWith<_$_MedicineConfirmationsPageState>
      get copyWith => __$$_MedicineConfirmationsPageStateCopyWithImpl<
          _$_MedicineConfirmationsPageState>(this, _$identity);
}

abstract class _MedicineConfirmationsPageState
    extends MedicineConfirmationsPageState {
  factory _MedicineConfirmationsPageState(
      {final bool isExpanded,
      final bool isActive}) = _$_MedicineConfirmationsPageState;
  _MedicineConfirmationsPageState._() : super._();

  @override
  bool get isExpanded;
  @override
  bool get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_MedicineConfirmationsPageStateCopyWith<_$_MedicineConfirmationsPageState>
      get copyWith => throw _privateConstructorUsedError;
}
