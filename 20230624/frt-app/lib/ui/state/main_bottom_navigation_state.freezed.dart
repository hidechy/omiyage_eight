// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bottom_navigation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainBottomNavigationState {
  int get index => throw _privateConstructorUsedError;
  List<bool> get initialized => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainBottomNavigationStateCopyWith<MainBottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainBottomNavigationStateCopyWith<$Res> {
  factory $MainBottomNavigationStateCopyWith(MainBottomNavigationState value,
          $Res Function(MainBottomNavigationState) then) =
      _$MainBottomNavigationStateCopyWithImpl<$Res, MainBottomNavigationState>;
  @useResult
  $Res call({int index, List<bool> initialized});
}

/// @nodoc
class _$MainBottomNavigationStateCopyWithImpl<$Res,
        $Val extends MainBottomNavigationState>
    implements $MainBottomNavigationStateCopyWith<$Res> {
  _$MainBottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? initialized = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      initialized: null == initialized
          ? _value.initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MainBottomNavigationStateCopyWith<$Res>
    implements $MainBottomNavigationStateCopyWith<$Res> {
  factory _$$_MainBottomNavigationStateCopyWith(
          _$_MainBottomNavigationState value,
          $Res Function(_$_MainBottomNavigationState) then) =
      __$$_MainBottomNavigationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<bool> initialized});
}

/// @nodoc
class __$$_MainBottomNavigationStateCopyWithImpl<$Res>
    extends _$MainBottomNavigationStateCopyWithImpl<$Res,
        _$_MainBottomNavigationState>
    implements _$$_MainBottomNavigationStateCopyWith<$Res> {
  __$$_MainBottomNavigationStateCopyWithImpl(
      _$_MainBottomNavigationState _value,
      $Res Function(_$_MainBottomNavigationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? initialized = null,
  }) {
    return _then(_$_MainBottomNavigationState(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      initialized: null == initialized
          ? _value._initialized
          : initialized // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$_MainBottomNavigationState implements _MainBottomNavigationState {
  const _$_MainBottomNavigationState(
      {this.index = 0, final List<bool> initialized = const <bool>[]})
      : _initialized = initialized;

  @override
  @JsonKey()
  final int index;
  final List<bool> _initialized;
  @override
  @JsonKey()
  List<bool> get initialized {
    if (_initialized is EqualUnmodifiableListView) return _initialized;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_initialized);
  }

  @override
  String toString() {
    return 'MainBottomNavigationState(index: $index, initialized: $initialized)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainBottomNavigationState &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._initialized, _initialized));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_initialized));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainBottomNavigationStateCopyWith<_$_MainBottomNavigationState>
      get copyWith => __$$_MainBottomNavigationStateCopyWithImpl<
          _$_MainBottomNavigationState>(this, _$identity);
}

abstract class _MainBottomNavigationState implements MainBottomNavigationState {
  const factory _MainBottomNavigationState(
      {final int index,
      final List<bool> initialized}) = _$_MainBottomNavigationState;

  @override
  int get index;
  @override
  List<bool> get initialized;
  @override
  @JsonKey(ignore: true)
  _$$_MainBottomNavigationStateCopyWith<_$_MainBottomNavigationState>
      get copyWith => throw _privateConstructorUsedError;
}
