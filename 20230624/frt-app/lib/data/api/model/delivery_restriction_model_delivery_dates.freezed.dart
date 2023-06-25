// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_restriction_model_delivery_dates.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryRestrictionModelDeliveryDates
    _$DeliveryRestrictionModelDeliveryDatesFromJson(Map<String, dynamic> json) {
  return _DeliveryRestrictionModelDeliveryDates.fromJson(json);
}

/// @nodoc
mixin _$DeliveryRestrictionModelDeliveryDates {
/* 配達日 ※YYYYMMDD */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_date')
  int get epochDeliveryDate =>
      throw _privateConstructorUsedError; /* 配送遅延判定 - true：遅延あり - false：遅延なし */
  bool get isDeliveryDelay =>
      throw _privateConstructorUsedError; /* 配送休み判定  - true：配送休み - false：配送休み以外 */
  bool get isDeliveryClosed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryRestrictionModelDeliveryDatesCopyWith<
          DeliveryRestrictionModelDeliveryDates>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryRestrictionModelDeliveryDatesCopyWith<$Res> {
  factory $DeliveryRestrictionModelDeliveryDatesCopyWith(
          DeliveryRestrictionModelDeliveryDates value,
          $Res Function(DeliveryRestrictionModelDeliveryDates) then) =
      _$DeliveryRestrictionModelDeliveryDatesCopyWithImpl<$Res,
          DeliveryRestrictionModelDeliveryDates>;
  @useResult
  $Res call(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_date')
          int epochDeliveryDate,
      bool isDeliveryDelay,
      bool isDeliveryClosed});
}

/// @nodoc
class _$DeliveryRestrictionModelDeliveryDatesCopyWithImpl<$Res,
        $Val extends DeliveryRestrictionModelDeliveryDates>
    implements $DeliveryRestrictionModelDeliveryDatesCopyWith<$Res> {
  _$DeliveryRestrictionModelDeliveryDatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epochDeliveryDate = null,
    Object? isDeliveryDelay = null,
    Object? isDeliveryClosed = null,
  }) {
    return _then(_value.copyWith(
      epochDeliveryDate: null == epochDeliveryDate
          ? _value.epochDeliveryDate
          : epochDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int,
      isDeliveryDelay: null == isDeliveryDelay
          ? _value.isDeliveryDelay
          : isDeliveryDelay // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeliveryClosed: null == isDeliveryClosed
          ? _value.isDeliveryClosed
          : isDeliveryClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryRestrictionModelDeliveryDatesCopyWith<$Res>
    implements $DeliveryRestrictionModelDeliveryDatesCopyWith<$Res> {
  factory _$$_DeliveryRestrictionModelDeliveryDatesCopyWith(
          _$_DeliveryRestrictionModelDeliveryDates value,
          $Res Function(_$_DeliveryRestrictionModelDeliveryDates) then) =
      __$$_DeliveryRestrictionModelDeliveryDatesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_date')
          int epochDeliveryDate,
      bool isDeliveryDelay,
      bool isDeliveryClosed});
}

/// @nodoc
class __$$_DeliveryRestrictionModelDeliveryDatesCopyWithImpl<$Res>
    extends _$DeliveryRestrictionModelDeliveryDatesCopyWithImpl<$Res,
        _$_DeliveryRestrictionModelDeliveryDates>
    implements _$$_DeliveryRestrictionModelDeliveryDatesCopyWith<$Res> {
  __$$_DeliveryRestrictionModelDeliveryDatesCopyWithImpl(
      _$_DeliveryRestrictionModelDeliveryDates _value,
      $Res Function(_$_DeliveryRestrictionModelDeliveryDates) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? epochDeliveryDate = null,
    Object? isDeliveryDelay = null,
    Object? isDeliveryClosed = null,
  }) {
    return _then(_$_DeliveryRestrictionModelDeliveryDates(
      epochDeliveryDate: null == epochDeliveryDate
          ? _value.epochDeliveryDate
          : epochDeliveryDate // ignore: cast_nullable_to_non_nullable
              as int,
      isDeliveryDelay: null == isDeliveryDelay
          ? _value.isDeliveryDelay
          : isDeliveryDelay // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeliveryClosed: null == isDeliveryClosed
          ? _value.isDeliveryClosed
          : isDeliveryClosed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryRestrictionModelDeliveryDates
    extends _DeliveryRestrictionModelDeliveryDates {
  const _$_DeliveryRestrictionModelDeliveryDates(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_date')
          this.epochDeliveryDate = 0,
      this.isDeliveryDelay = false,
      this.isDeliveryClosed = false})
      : super._();

  factory _$_DeliveryRestrictionModelDeliveryDates.fromJson(
          Map<String, dynamic> json) =>
      _$$_DeliveryRestrictionModelDeliveryDatesFromJson(json);

/* 配達日 ※YYYYMMDD */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_date')
  final int epochDeliveryDate;
/* 配送遅延判定 - true：遅延あり - false：遅延なし */
  @override
  @JsonKey()
  final bool isDeliveryDelay;
/* 配送休み判定  - true：配送休み - false：配送休み以外 */
  @override
  @JsonKey()
  final bool isDeliveryClosed;

  @override
  String toString() {
    return 'DeliveryRestrictionModelDeliveryDates(epochDeliveryDate: $epochDeliveryDate, isDeliveryDelay: $isDeliveryDelay, isDeliveryClosed: $isDeliveryClosed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryRestrictionModelDeliveryDates &&
            (identical(other.epochDeliveryDate, epochDeliveryDate) ||
                other.epochDeliveryDate == epochDeliveryDate) &&
            (identical(other.isDeliveryDelay, isDeliveryDelay) ||
                other.isDeliveryDelay == isDeliveryDelay) &&
            (identical(other.isDeliveryClosed, isDeliveryClosed) ||
                other.isDeliveryClosed == isDeliveryClosed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, epochDeliveryDate, isDeliveryDelay, isDeliveryClosed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryRestrictionModelDeliveryDatesCopyWith<
          _$_DeliveryRestrictionModelDeliveryDates>
      get copyWith => __$$_DeliveryRestrictionModelDeliveryDatesCopyWithImpl<
          _$_DeliveryRestrictionModelDeliveryDates>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryRestrictionModelDeliveryDatesToJson(
      this,
    );
  }
}

abstract class _DeliveryRestrictionModelDeliveryDates
    extends DeliveryRestrictionModelDeliveryDates {
  const factory _DeliveryRestrictionModelDeliveryDates(
      {@StringToEpochTimeConverter()
      @JsonKey(name: 'delivery_date')
          final int epochDeliveryDate,
      final bool isDeliveryDelay,
      final bool isDeliveryClosed}) = _$_DeliveryRestrictionModelDeliveryDates;
  const _DeliveryRestrictionModelDeliveryDates._() : super._();

  factory _DeliveryRestrictionModelDeliveryDates.fromJson(
          Map<String, dynamic> json) =
      _$_DeliveryRestrictionModelDeliveryDates.fromJson;

  @override /* 配達日 ※YYYYMMDD */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'delivery_date')
  int get epochDeliveryDate;
  @override /* 配送遅延判定 - true：遅延あり - false：遅延なし */
  bool get isDeliveryDelay;
  @override /* 配送休み判定  - true：配送休み - false：配送休み以外 */
  bool get isDeliveryClosed;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryRestrictionModelDeliveryDatesCopyWith<
          _$_DeliveryRestrictionModelDeliveryDates>
      get copyWith => throw _privateConstructorUsedError;
}
