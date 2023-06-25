// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrdersModel _$OrdersModelFromJson(Map<String, dynamic> json) {
  return _OrdersModel.fromJson(json);
}

/// @nodoc
mixin _$OrdersModel {
  @JsonKey()
  OrderHistoryCustomersModel get customer => throw _privateConstructorUsedError;
  List<OrderHistoryListModel> get histories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrdersModelCopyWith<OrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersModelCopyWith<$Res> {
  factory $OrdersModelCopyWith(
          OrdersModel value, $Res Function(OrdersModel) then) =
      _$OrdersModelCopyWithImpl<$Res, OrdersModel>;
  @useResult
  $Res call(
      {@JsonKey() OrderHistoryCustomersModel customer,
      List<OrderHistoryListModel> histories});

  $OrderHistoryCustomersModelCopyWith<$Res> get customer;
}

/// @nodoc
class _$OrdersModelCopyWithImpl<$Res, $Val extends OrdersModel>
    implements $OrdersModelCopyWith<$Res> {
  _$OrdersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? histories = null,
  }) {
    return _then(_value.copyWith(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as OrderHistoryCustomersModel,
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryListModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderHistoryCustomersModelCopyWith<$Res> get customer {
    return $OrderHistoryCustomersModelCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrdersModelCopyWith<$Res>
    implements $OrdersModelCopyWith<$Res> {
  factory _$$_OrdersModelCopyWith(
          _$_OrdersModel value, $Res Function(_$_OrdersModel) then) =
      __$$_OrdersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey() OrderHistoryCustomersModel customer,
      List<OrderHistoryListModel> histories});

  @override
  $OrderHistoryCustomersModelCopyWith<$Res> get customer;
}

/// @nodoc
class __$$_OrdersModelCopyWithImpl<$Res>
    extends _$OrdersModelCopyWithImpl<$Res, _$_OrdersModel>
    implements _$$_OrdersModelCopyWith<$Res> {
  __$$_OrdersModelCopyWithImpl(
      _$_OrdersModel _value, $Res Function(_$_OrdersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer = null,
    Object? histories = null,
  }) {
    return _then(_$_OrdersModel(
      customer: null == customer
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as OrderHistoryCustomersModel,
      histories: null == histories
          ? _value._histories
          : histories // ignore: cast_nullable_to_non_nullable
              as List<OrderHistoryListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrdersModel implements _OrdersModel {
  const _$_OrdersModel(
      {@JsonKey() this.customer = const OrderHistoryCustomersModel(),
      final List<OrderHistoryListModel> histories =
          const <OrderHistoryListModel>[]})
      : _histories = histories;

  factory _$_OrdersModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrdersModelFromJson(json);

  @override
  @JsonKey()
  final OrderHistoryCustomersModel customer;
  final List<OrderHistoryListModel> _histories;
  @override
  @JsonKey()
  List<OrderHistoryListModel> get histories {
    if (_histories is EqualUnmodifiableListView) return _histories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_histories);
  }

  @override
  String toString() {
    return 'OrdersModel(customer: $customer, histories: $histories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrdersModel &&
            (identical(other.customer, customer) ||
                other.customer == customer) &&
            const DeepCollectionEquality()
                .equals(other._histories, _histories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, customer, const DeepCollectionEquality().hash(_histories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrdersModelCopyWith<_$_OrdersModel> get copyWith =>
      __$$_OrdersModelCopyWithImpl<_$_OrdersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrdersModelToJson(
      this,
    );
  }
}

abstract class _OrdersModel implements OrdersModel {
  const factory _OrdersModel(
      {@JsonKey() final OrderHistoryCustomersModel customer,
      final List<OrderHistoryListModel> histories}) = _$_OrdersModel;

  factory _OrdersModel.fromJson(Map<String, dynamic> json) =
      _$_OrdersModel.fromJson;

  @override
  @JsonKey()
  OrderHistoryCustomersModel get customer;
  @override
  List<OrderHistoryListModel> get histories;
  @override
  @JsonKey(ignore: true)
  _$$_OrdersModelCopyWith<_$_OrdersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
