// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shop_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShopInfoState {
  ShopInfoModel get shopInfo => throw _privateConstructorUsedError;
  ShopsMedicineConfirmsModel? get medicineConfirms =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShopInfoStateCopyWith<ShopInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopInfoStateCopyWith<$Res> {
  factory $ShopInfoStateCopyWith(
          ShopInfoState value, $Res Function(ShopInfoState) then) =
      _$ShopInfoStateCopyWithImpl<$Res, ShopInfoState>;
  @useResult
  $Res call(
      {ShopInfoModel shopInfo, ShopsMedicineConfirmsModel? medicineConfirms});

  $ShopInfoModelCopyWith<$Res> get shopInfo;
  $ShopsMedicineConfirmsModelCopyWith<$Res>? get medicineConfirms;
}

/// @nodoc
class _$ShopInfoStateCopyWithImpl<$Res, $Val extends ShopInfoState>
    implements $ShopInfoStateCopyWith<$Res> {
  _$ShopInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopInfo = null,
    Object? medicineConfirms = freezed,
  }) {
    return _then(_value.copyWith(
      shopInfo: null == shopInfo
          ? _value.shopInfo
          : shopInfo // ignore: cast_nullable_to_non_nullable
              as ShopInfoModel,
      medicineConfirms: freezed == medicineConfirms
          ? _value.medicineConfirms
          : medicineConfirms // ignore: cast_nullable_to_non_nullable
              as ShopsMedicineConfirmsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopInfoModelCopyWith<$Res> get shopInfo {
    return $ShopInfoModelCopyWith<$Res>(_value.shopInfo, (value) {
      return _then(_value.copyWith(shopInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShopsMedicineConfirmsModelCopyWith<$Res>? get medicineConfirms {
    if (_value.medicineConfirms == null) {
      return null;
    }

    return $ShopsMedicineConfirmsModelCopyWith<$Res>(_value.medicineConfirms!,
        (value) {
      return _then(_value.copyWith(medicineConfirms: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShopInfoStateCopyWith<$Res>
    implements $ShopInfoStateCopyWith<$Res> {
  factory _$$_ShopInfoStateCopyWith(
          _$_ShopInfoState value, $Res Function(_$_ShopInfoState) then) =
      __$$_ShopInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ShopInfoModel shopInfo, ShopsMedicineConfirmsModel? medicineConfirms});

  @override
  $ShopInfoModelCopyWith<$Res> get shopInfo;
  @override
  $ShopsMedicineConfirmsModelCopyWith<$Res>? get medicineConfirms;
}

/// @nodoc
class __$$_ShopInfoStateCopyWithImpl<$Res>
    extends _$ShopInfoStateCopyWithImpl<$Res, _$_ShopInfoState>
    implements _$$_ShopInfoStateCopyWith<$Res> {
  __$$_ShopInfoStateCopyWithImpl(
      _$_ShopInfoState _value, $Res Function(_$_ShopInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopInfo = null,
    Object? medicineConfirms = freezed,
  }) {
    return _then(_$_ShopInfoState(
      shopInfo: null == shopInfo
          ? _value.shopInfo
          : shopInfo // ignore: cast_nullable_to_non_nullable
              as ShopInfoModel,
      medicineConfirms: freezed == medicineConfirms
          ? _value.medicineConfirms
          : medicineConfirms // ignore: cast_nullable_to_non_nullable
              as ShopsMedicineConfirmsModel?,
    ));
  }
}

/// @nodoc

class _$_ShopInfoState implements _ShopInfoState {
  const _$_ShopInfoState(
      {this.shopInfo = const ShopInfoModel(), this.medicineConfirms});

  @override
  @JsonKey()
  final ShopInfoModel shopInfo;
  @override
  final ShopsMedicineConfirmsModel? medicineConfirms;

  @override
  String toString() {
    return 'ShopInfoState(shopInfo: $shopInfo, medicineConfirms: $medicineConfirms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopInfoState &&
            (identical(other.shopInfo, shopInfo) ||
                other.shopInfo == shopInfo) &&
            (identical(other.medicineConfirms, medicineConfirms) ||
                other.medicineConfirms == medicineConfirms));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shopInfo, medicineConfirms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopInfoStateCopyWith<_$_ShopInfoState> get copyWith =>
      __$$_ShopInfoStateCopyWithImpl<_$_ShopInfoState>(this, _$identity);
}

abstract class _ShopInfoState implements ShopInfoState {
  const factory _ShopInfoState(
      {final ShopInfoModel shopInfo,
      final ShopsMedicineConfirmsModel? medicineConfirms}) = _$_ShopInfoState;

  @override
  ShopInfoModel get shopInfo;
  @override
  ShopsMedicineConfirmsModel? get medicineConfirms;
  @override
  @JsonKey(ignore: true)
  _$$_ShopInfoStateCopyWith<_$_ShopInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
