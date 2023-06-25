// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_restriction_model_delivery_times.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryRestrictionModelDeliveryTimes
    _$DeliveryRestrictionModelDeliveryTimesFromJson(Map<String, dynamic> json) {
  return _DeliveryRestrictionModelDeliveryTimes.fromJson(json);
}

/// @nodoc
mixin _$DeliveryRestrictionModelDeliveryTimes {
/* 便締め時間　※hhmm */
  String get deliveryClosingTime =>
      throw _privateConstructorUsedError; /* 前日判定 - 便締め時間が前日のものであるか  - true：便締め時間が前日時間 - false：便締め時間が当日時間 */
  bool get isPreviousDay =>
      throw _privateConstructorUsedError; /* 配送開始時間（時分）　※hhmm */
  String get deliveryStartTime =>
      throw _privateConstructorUsedError; /* 配送終了時間（時分）　※hhmm */
  String get deliveryFinishTime =>
      throw _privateConstructorUsedError; /* 配送日リスト */
  List<DeliveryRestrictionModelDeliveryDates> get deliveryDates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryRestrictionModelDeliveryTimesCopyWith<
          DeliveryRestrictionModelDeliveryTimes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryRestrictionModelDeliveryTimesCopyWith<$Res> {
  factory $DeliveryRestrictionModelDeliveryTimesCopyWith(
          DeliveryRestrictionModelDeliveryTimes value,
          $Res Function(DeliveryRestrictionModelDeliveryTimes) then) =
      _$DeliveryRestrictionModelDeliveryTimesCopyWithImpl<$Res,
          DeliveryRestrictionModelDeliveryTimes>;
  @useResult
  $Res call(
      {String deliveryClosingTime,
      bool isPreviousDay,
      String deliveryStartTime,
      String deliveryFinishTime,
      List<DeliveryRestrictionModelDeliveryDates> deliveryDates});
}

/// @nodoc
class _$DeliveryRestrictionModelDeliveryTimesCopyWithImpl<$Res,
        $Val extends DeliveryRestrictionModelDeliveryTimes>
    implements $DeliveryRestrictionModelDeliveryTimesCopyWith<$Res> {
  _$DeliveryRestrictionModelDeliveryTimesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryClosingTime = null,
    Object? isPreviousDay = null,
    Object? deliveryStartTime = null,
    Object? deliveryFinishTime = null,
    Object? deliveryDates = null,
  }) {
    return _then(_value.copyWith(
      deliveryClosingTime: null == deliveryClosingTime
          ? _value.deliveryClosingTime
          : deliveryClosingTime // ignore: cast_nullable_to_non_nullable
              as String,
      isPreviousDay: null == isPreviousDay
          ? _value.isPreviousDay
          : isPreviousDay // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishTime: null == deliveryFinishTime
          ? _value.deliveryFinishTime
          : deliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDates: null == deliveryDates
          ? _value.deliveryDates
          : deliveryDates // ignore: cast_nullable_to_non_nullable
              as List<DeliveryRestrictionModelDeliveryDates>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryRestrictionModelDeliveryTimesCopyWith<$Res>
    implements $DeliveryRestrictionModelDeliveryTimesCopyWith<$Res> {
  factory _$$_DeliveryRestrictionModelDeliveryTimesCopyWith(
          _$_DeliveryRestrictionModelDeliveryTimes value,
          $Res Function(_$_DeliveryRestrictionModelDeliveryTimes) then) =
      __$$_DeliveryRestrictionModelDeliveryTimesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String deliveryClosingTime,
      bool isPreviousDay,
      String deliveryStartTime,
      String deliveryFinishTime,
      List<DeliveryRestrictionModelDeliveryDates> deliveryDates});
}

/// @nodoc
class __$$_DeliveryRestrictionModelDeliveryTimesCopyWithImpl<$Res>
    extends _$DeliveryRestrictionModelDeliveryTimesCopyWithImpl<$Res,
        _$_DeliveryRestrictionModelDeliveryTimes>
    implements _$$_DeliveryRestrictionModelDeliveryTimesCopyWith<$Res> {
  __$$_DeliveryRestrictionModelDeliveryTimesCopyWithImpl(
      _$_DeliveryRestrictionModelDeliveryTimes _value,
      $Res Function(_$_DeliveryRestrictionModelDeliveryTimes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryClosingTime = null,
    Object? isPreviousDay = null,
    Object? deliveryStartTime = null,
    Object? deliveryFinishTime = null,
    Object? deliveryDates = null,
  }) {
    return _then(_$_DeliveryRestrictionModelDeliveryTimes(
      deliveryClosingTime: null == deliveryClosingTime
          ? _value.deliveryClosingTime
          : deliveryClosingTime // ignore: cast_nullable_to_non_nullable
              as String,
      isPreviousDay: null == isPreviousDay
          ? _value.isPreviousDay
          : isPreviousDay // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryStartTime: null == deliveryStartTime
          ? _value.deliveryStartTime
          : deliveryStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFinishTime: null == deliveryFinishTime
          ? _value.deliveryFinishTime
          : deliveryFinishTime // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDates: null == deliveryDates
          ? _value._deliveryDates
          : deliveryDates // ignore: cast_nullable_to_non_nullable
              as List<DeliveryRestrictionModelDeliveryDates>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryRestrictionModelDeliveryTimes
    implements _DeliveryRestrictionModelDeliveryTimes {
  const _$_DeliveryRestrictionModelDeliveryTimes(
      {this.deliveryClosingTime = '',
      this.isPreviousDay = false,
      this.deliveryStartTime = '',
      this.deliveryFinishTime = '',
      final List<DeliveryRestrictionModelDeliveryDates> deliveryDates =
          const <DeliveryRestrictionModelDeliveryDates>[]})
      : _deliveryDates = deliveryDates;

  factory _$_DeliveryRestrictionModelDeliveryTimes.fromJson(
          Map<String, dynamic> json) =>
      _$$_DeliveryRestrictionModelDeliveryTimesFromJson(json);

/* 便締め時間　※hhmm */
  @override
  @JsonKey()
  final String deliveryClosingTime;
/* 前日判定 - 便締め時間が前日のものであるか  - true：便締め時間が前日時間 - false：便締め時間が当日時間 */
  @override
  @JsonKey()
  final bool isPreviousDay;
/* 配送開始時間（時分）　※hhmm */
  @override
  @JsonKey()
  final String deliveryStartTime;
/* 配送終了時間（時分）　※hhmm */
  @override
  @JsonKey()
  final String deliveryFinishTime;
/* 配送日リスト */
  final List<DeliveryRestrictionModelDeliveryDates> _deliveryDates;
/* 配送日リスト */
  @override
  @JsonKey()
  List<DeliveryRestrictionModelDeliveryDates> get deliveryDates {
    if (_deliveryDates is EqualUnmodifiableListView) return _deliveryDates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryDates);
  }

  @override
  String toString() {
    return 'DeliveryRestrictionModelDeliveryTimes(deliveryClosingTime: $deliveryClosingTime, isPreviousDay: $isPreviousDay, deliveryStartTime: $deliveryStartTime, deliveryFinishTime: $deliveryFinishTime, deliveryDates: $deliveryDates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryRestrictionModelDeliveryTimes &&
            (identical(other.deliveryClosingTime, deliveryClosingTime) ||
                other.deliveryClosingTime == deliveryClosingTime) &&
            (identical(other.isPreviousDay, isPreviousDay) ||
                other.isPreviousDay == isPreviousDay) &&
            (identical(other.deliveryStartTime, deliveryStartTime) ||
                other.deliveryStartTime == deliveryStartTime) &&
            (identical(other.deliveryFinishTime, deliveryFinishTime) ||
                other.deliveryFinishTime == deliveryFinishTime) &&
            const DeepCollectionEquality()
                .equals(other._deliveryDates, _deliveryDates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      deliveryClosingTime,
      isPreviousDay,
      deliveryStartTime,
      deliveryFinishTime,
      const DeepCollectionEquality().hash(_deliveryDates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryRestrictionModelDeliveryTimesCopyWith<
          _$_DeliveryRestrictionModelDeliveryTimes>
      get copyWith => __$$_DeliveryRestrictionModelDeliveryTimesCopyWithImpl<
          _$_DeliveryRestrictionModelDeliveryTimes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryRestrictionModelDeliveryTimesToJson(
      this,
    );
  }
}

abstract class _DeliveryRestrictionModelDeliveryTimes
    implements DeliveryRestrictionModelDeliveryTimes {
  const factory _DeliveryRestrictionModelDeliveryTimes(
          {final String deliveryClosingTime,
          final bool isPreviousDay,
          final String deliveryStartTime,
          final String deliveryFinishTime,
          final List<DeliveryRestrictionModelDeliveryDates> deliveryDates}) =
      _$_DeliveryRestrictionModelDeliveryTimes;

  factory _DeliveryRestrictionModelDeliveryTimes.fromJson(
          Map<String, dynamic> json) =
      _$_DeliveryRestrictionModelDeliveryTimes.fromJson;

  @override /* 便締め時間　※hhmm */
  String get deliveryClosingTime;
  @override /* 前日判定 - 便締め時間が前日のものであるか  - true：便締め時間が前日時間 - false：便締め時間が当日時間 */
  bool get isPreviousDay;
  @override /* 配送開始時間（時分）　※hhmm */
  String get deliveryStartTime;
  @override /* 配送終了時間（時分）　※hhmm */
  String get deliveryFinishTime;
  @override /* 配送日リスト */
  List<DeliveryRestrictionModelDeliveryDates> get deliveryDates;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryRestrictionModelDeliveryTimesCopyWith<
          _$_DeliveryRestrictionModelDeliveryTimes>
      get copyWith => throw _privateConstructorUsedError;
}
