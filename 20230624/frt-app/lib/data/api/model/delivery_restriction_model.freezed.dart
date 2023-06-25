// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_restriction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryRestrictionModel _$DeliveryRestrictionModelFromJson(
    Map<String, dynamic> json) {
  return _DeliveryRestrictionModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryRestrictionModel {
  DeliveryRestrictionModelAddress? get address =>
      throw _privateConstructorUsedError; /* 配送便一覧 */
  List<DeliveryRestrictionModelDeliveryTimes> get deliveryTimes =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryRestrictionModelCopyWith<DeliveryRestrictionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryRestrictionModelCopyWith<$Res> {
  factory $DeliveryRestrictionModelCopyWith(DeliveryRestrictionModel value,
          $Res Function(DeliveryRestrictionModel) then) =
      _$DeliveryRestrictionModelCopyWithImpl<$Res, DeliveryRestrictionModel>;
  @useResult
  $Res call(
      {DeliveryRestrictionModelAddress? address,
      List<DeliveryRestrictionModelDeliveryTimes> deliveryTimes});

  $DeliveryRestrictionModelAddressCopyWith<$Res>? get address;
}

/// @nodoc
class _$DeliveryRestrictionModelCopyWithImpl<$Res,
        $Val extends DeliveryRestrictionModel>
    implements $DeliveryRestrictionModelCopyWith<$Res> {
  _$DeliveryRestrictionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? deliveryTimes = null,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as DeliveryRestrictionModelAddress?,
      deliveryTimes: null == deliveryTimes
          ? _value.deliveryTimes
          : deliveryTimes // ignore: cast_nullable_to_non_nullable
              as List<DeliveryRestrictionModelDeliveryTimes>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryRestrictionModelAddressCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $DeliveryRestrictionModelAddressCopyWith<$Res>(_value.address!,
        (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryRestrictionModelCopyWith<$Res>
    implements $DeliveryRestrictionModelCopyWith<$Res> {
  factory _$$_DeliveryRestrictionModelCopyWith(
          _$_DeliveryRestrictionModel value,
          $Res Function(_$_DeliveryRestrictionModel) then) =
      __$$_DeliveryRestrictionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DeliveryRestrictionModelAddress? address,
      List<DeliveryRestrictionModelDeliveryTimes> deliveryTimes});

  @override
  $DeliveryRestrictionModelAddressCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_DeliveryRestrictionModelCopyWithImpl<$Res>
    extends _$DeliveryRestrictionModelCopyWithImpl<$Res,
        _$_DeliveryRestrictionModel>
    implements _$$_DeliveryRestrictionModelCopyWith<$Res> {
  __$$_DeliveryRestrictionModelCopyWithImpl(_$_DeliveryRestrictionModel _value,
      $Res Function(_$_DeliveryRestrictionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? deliveryTimes = null,
  }) {
    return _then(_$_DeliveryRestrictionModel(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as DeliveryRestrictionModelAddress?,
      deliveryTimes: null == deliveryTimes
          ? _value._deliveryTimes
          : deliveryTimes // ignore: cast_nullable_to_non_nullable
              as List<DeliveryRestrictionModelDeliveryTimes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryRestrictionModel implements _DeliveryRestrictionModel {
  const _$_DeliveryRestrictionModel(
      {this.address,
      final List<DeliveryRestrictionModelDeliveryTimes> deliveryTimes =
          const <DeliveryRestrictionModelDeliveryTimes>[]})
      : _deliveryTimes = deliveryTimes;

  factory _$_DeliveryRestrictionModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryRestrictionModelFromJson(json);

  @override
  final DeliveryRestrictionModelAddress? address;
/* 配送便一覧 */
  final List<DeliveryRestrictionModelDeliveryTimes> _deliveryTimes;
/* 配送便一覧 */
  @override
  @JsonKey()
  List<DeliveryRestrictionModelDeliveryTimes> get deliveryTimes {
    if (_deliveryTimes is EqualUnmodifiableListView) return _deliveryTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryTimes);
  }

  @override
  String toString() {
    return 'DeliveryRestrictionModel(address: $address, deliveryTimes: $deliveryTimes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryRestrictionModel &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._deliveryTimes, _deliveryTimes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address,
      const DeepCollectionEquality().hash(_deliveryTimes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryRestrictionModelCopyWith<_$_DeliveryRestrictionModel>
      get copyWith => __$$_DeliveryRestrictionModelCopyWithImpl<
          _$_DeliveryRestrictionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryRestrictionModelToJson(
      this,
    );
  }
}

abstract class _DeliveryRestrictionModel implements DeliveryRestrictionModel {
  const factory _DeliveryRestrictionModel(
          {final DeliveryRestrictionModelAddress? address,
          final List<DeliveryRestrictionModelDeliveryTimes> deliveryTimes}) =
      _$_DeliveryRestrictionModel;

  factory _DeliveryRestrictionModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryRestrictionModel.fromJson;

  @override
  DeliveryRestrictionModelAddress? get address;
  @override /* 配送便一覧 */
  List<DeliveryRestrictionModelDeliveryTimes> get deliveryTimes;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryRestrictionModelCopyWith<_$_DeliveryRestrictionModel>
      get copyWith => throw _privateConstructorUsedError;
}
