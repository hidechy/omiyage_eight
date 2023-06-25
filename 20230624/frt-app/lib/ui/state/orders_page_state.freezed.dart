// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersPageState {
  int get loadCount => throw _privateConstructorUsedError;
  int get totalSize => throw _privateConstructorUsedError;
  List<OrderHistoryListModel> get ongoingOrders =>
      throw _privateConstructorUsedError;
  List<OrderHistoryListModel> get previousOrders =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersPageStateCopyWith<OrdersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersPageStateCopyWith<$Res> {
  factory $OrdersPageStateCopyWith(
          OrdersPageState value, $Res Function(OrdersPageState) then) =
      _$OrdersPageStateCopyWithImpl<$Res, OrdersPageState>;
  @useResult
  $Res call(
      {int loadCount,
      int totalSize,
      List<OrderHistoryListModel> ongoingOrders,
      List<OrderHistoryListModel> previousOrders});
}

/// @nodoc
class _$OrdersPageStateCopyWithImpl<$Res, $Val extends OrdersPageState>
    implements $OrdersPageStateCopyWith<$Res> {
  _$OrdersPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadCount = null,
    Object? totalSize = null,
    Object? ongoingOrders = null,
    Object? previousOrders = null,
  }) {
    return _then(_value.copyWith(
      loadCount: null == loadCount
          ? _value.loadCount
          : loadCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      ongoingOrders: null == ongoingOrders
          ? _value.ongoingOrders
          : ongoingOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryListModel>,
      previousOrders: null == previousOrders
          ? _value.previousOrders
          : previousOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrdersPageStateCopyWith<$Res>
    implements $OrdersPageStateCopyWith<$Res> {
  factory _$$_OrdersPageStateCopyWith(
          _$_OrdersPageState value, $Res Function(_$_OrdersPageState) then) =
      __$$_OrdersPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int loadCount,
      int totalSize,
      List<OrderHistoryListModel> ongoingOrders,
      List<OrderHistoryListModel> previousOrders});
}

/// @nodoc
class __$$_OrdersPageStateCopyWithImpl<$Res>
    extends _$OrdersPageStateCopyWithImpl<$Res, _$_OrdersPageState>
    implements _$$_OrdersPageStateCopyWith<$Res> {
  __$$_OrdersPageStateCopyWithImpl(
      _$_OrdersPageState _value, $Res Function(_$_OrdersPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadCount = null,
    Object? totalSize = null,
    Object? ongoingOrders = null,
    Object? previousOrders = null,
  }) {
    return _then(_$_OrdersPageState(
      loadCount: null == loadCount
          ? _value.loadCount
          : loadCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalSize: null == totalSize
          ? _value.totalSize
          : totalSize // ignore: cast_nullable_to_non_nullable
              as int,
      ongoingOrders: null == ongoingOrders
          ? _value._ongoingOrders
          : ongoingOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryListModel>,
      previousOrders: null == previousOrders
          ? _value._previousOrders
          : previousOrders // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryListModel>,
    ));
  }
}

/// @nodoc

class _$_OrdersPageState extends _OrdersPageState {
  const _$_OrdersPageState(
      {this.loadCount = 0,
      this.totalSize = 0,
      final List<OrderHistoryListModel> ongoingOrders =
          const <OrderHistoryListModel>[],
      final List<OrderHistoryListModel> previousOrders =
          const <OrderHistoryListModel>[]})
      : _ongoingOrders = ongoingOrders,
        _previousOrders = previousOrders,
        super._();

  @override
  @JsonKey()
  final int loadCount;
  @override
  @JsonKey()
  final int totalSize;
  final List<OrderHistoryListModel> _ongoingOrders;
  @override
  @JsonKey()
  List<OrderHistoryListModel> get ongoingOrders {
    if (_ongoingOrders is EqualUnmodifiableListView) return _ongoingOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ongoingOrders);
  }

  final List<OrderHistoryListModel> _previousOrders;
  @override
  @JsonKey()
  List<OrderHistoryListModel> get previousOrders {
    if (_previousOrders is EqualUnmodifiableListView) return _previousOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousOrders);
  }

  @override
  String toString() {
    return 'OrdersPageState(loadCount: $loadCount, totalSize: $totalSize, ongoingOrders: $ongoingOrders, previousOrders: $previousOrders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersPageState &&
            (identical(other.loadCount, loadCount) ||
                other.loadCount == loadCount) &&
            (identical(other.totalSize, totalSize) ||
                other.totalSize == totalSize) &&
            const DeepCollectionEquality()
                .equals(other._ongoingOrders, _ongoingOrders) &&
            const DeepCollectionEquality()
                .equals(other._previousOrders, _previousOrders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loadCount,
      totalSize,
      const DeepCollectionEquality().hash(_ongoingOrders),
      const DeepCollectionEquality().hash(_previousOrders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersPageStateCopyWith<_$_OrdersPageState> get copyWith =>
      __$$_OrdersPageStateCopyWithImpl<_$_OrdersPageState>(this, _$identity);
}

abstract class _OrdersPageState extends OrdersPageState {
  const factory _OrdersPageState(
      {final int loadCount,
      final int totalSize,
      final List<OrderHistoryListModel> ongoingOrders,
      final List<OrderHistoryListModel> previousOrders}) = _$_OrdersPageState;
  const _OrdersPageState._() : super._();

  @override
  int get loadCount;
  @override
  int get totalSize;
  @override
  List<OrderHistoryListModel> get ongoingOrders;
  @override
  List<OrderHistoryListModel> get previousOrders;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersPageStateCopyWith<_$_OrdersPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
