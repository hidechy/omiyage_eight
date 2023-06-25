// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_shops_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryShopsModel _$DeliveryShopsModelFromJson(Map<String, dynamic> json) {
  return _DeliveryShopsModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryShopsModel {
/* 配送先住所担当店舗コード */
  String get deliveryShopCode =>
      throw _privateConstructorUsedError; /* 配送先住所担当店舗名 */
  String get deliveryShopName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryShopsModelCopyWith<DeliveryShopsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryShopsModelCopyWith<$Res> {
  factory $DeliveryShopsModelCopyWith(
          DeliveryShopsModel value, $Res Function(DeliveryShopsModel) then) =
      _$DeliveryShopsModelCopyWithImpl<$Res, DeliveryShopsModel>;
  @useResult
  $Res call({String deliveryShopCode, String deliveryShopName});
}

/// @nodoc
class _$DeliveryShopsModelCopyWithImpl<$Res, $Val extends DeliveryShopsModel>
    implements $DeliveryShopsModelCopyWith<$Res> {
  _$DeliveryShopsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryShopCode = null,
    Object? deliveryShopName = null,
  }) {
    return _then(_value.copyWith(
      deliveryShopCode: null == deliveryShopCode
          ? _value.deliveryShopCode
          : deliveryShopCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryShopName: null == deliveryShopName
          ? _value.deliveryShopName
          : deliveryShopName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryShopsModelCopyWith<$Res>
    implements $DeliveryShopsModelCopyWith<$Res> {
  factory _$$_DeliveryShopsModelCopyWith(_$_DeliveryShopsModel value,
          $Res Function(_$_DeliveryShopsModel) then) =
      __$$_DeliveryShopsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String deliveryShopCode, String deliveryShopName});
}

/// @nodoc
class __$$_DeliveryShopsModelCopyWithImpl<$Res>
    extends _$DeliveryShopsModelCopyWithImpl<$Res, _$_DeliveryShopsModel>
    implements _$$_DeliveryShopsModelCopyWith<$Res> {
  __$$_DeliveryShopsModelCopyWithImpl(
      _$_DeliveryShopsModel _value, $Res Function(_$_DeliveryShopsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliveryShopCode = null,
    Object? deliveryShopName = null,
  }) {
    return _then(_$_DeliveryShopsModel(
      deliveryShopCode: null == deliveryShopCode
          ? _value.deliveryShopCode
          : deliveryShopCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryShopName: null == deliveryShopName
          ? _value.deliveryShopName
          : deliveryShopName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryShopsModel implements _DeliveryShopsModel {
  const _$_DeliveryShopsModel(
      {this.deliveryShopCode = '', this.deliveryShopName = ''});

  factory _$_DeliveryShopsModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryShopsModelFromJson(json);

/* 配送先住所担当店舗コード */
  @override
  @JsonKey()
  final String deliveryShopCode;
/* 配送先住所担当店舗名 */
  @override
  @JsonKey()
  final String deliveryShopName;

  @override
  String toString() {
    return 'DeliveryShopsModel(deliveryShopCode: $deliveryShopCode, deliveryShopName: $deliveryShopName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryShopsModel &&
            (identical(other.deliveryShopCode, deliveryShopCode) ||
                other.deliveryShopCode == deliveryShopCode) &&
            (identical(other.deliveryShopName, deliveryShopName) ||
                other.deliveryShopName == deliveryShopName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, deliveryShopCode, deliveryShopName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryShopsModelCopyWith<_$_DeliveryShopsModel> get copyWith =>
      __$$_DeliveryShopsModelCopyWithImpl<_$_DeliveryShopsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryShopsModelToJson(
      this,
    );
  }
}

abstract class _DeliveryShopsModel implements DeliveryShopsModel {
  const factory _DeliveryShopsModel(
      {final String deliveryShopCode,
      final String deliveryShopName}) = _$_DeliveryShopsModel;

  factory _DeliveryShopsModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryShopsModel.fromJson;

  @override /* 配送先住所担当店舗コード */
  String get deliveryShopCode;
  @override /* 配送先住所担当店舗名 */
  String get deliveryShopName;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryShopsModelCopyWith<_$_DeliveryShopsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
