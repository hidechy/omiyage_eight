// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shops_deliverables_get_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopsDeliverablesGetResponseModel _$ShopsDeliverablesGetResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ShopsDeliverablesGetResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ShopsDeliverablesGetResponseModel {
/* 配達可否  ``` true：配達可能 false：配達不可 ``` */
  bool get isDeliverable =>
      throw _privateConstructorUsedError; /* 店舗コード - 配達不可の場合、nullを返却 */
  String get shopCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopsDeliverablesGetResponseModelCopyWith<ShopsDeliverablesGetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopsDeliverablesGetResponseModelCopyWith<$Res> {
  factory $ShopsDeliverablesGetResponseModelCopyWith(
          ShopsDeliverablesGetResponseModel value,
          $Res Function(ShopsDeliverablesGetResponseModel) then) =
      _$ShopsDeliverablesGetResponseModelCopyWithImpl<$Res,
          ShopsDeliverablesGetResponseModel>;
  @useResult
  $Res call({bool isDeliverable, String shopCode});
}

/// @nodoc
class _$ShopsDeliverablesGetResponseModelCopyWithImpl<$Res,
        $Val extends ShopsDeliverablesGetResponseModel>
    implements $ShopsDeliverablesGetResponseModelCopyWith<$Res> {
  _$ShopsDeliverablesGetResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeliverable = null,
    Object? shopCode = null,
  }) {
    return _then(_value.copyWith(
      isDeliverable: null == isDeliverable
          ? _value.isDeliverable
          : isDeliverable // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopsDeliverablesGetResponseModelCopyWith<$Res>
    implements $ShopsDeliverablesGetResponseModelCopyWith<$Res> {
  factory _$$_ShopsDeliverablesGetResponseModelCopyWith(
          _$_ShopsDeliverablesGetResponseModel value,
          $Res Function(_$_ShopsDeliverablesGetResponseModel) then) =
      __$$_ShopsDeliverablesGetResponseModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDeliverable, String shopCode});
}

/// @nodoc
class __$$_ShopsDeliverablesGetResponseModelCopyWithImpl<$Res>
    extends _$ShopsDeliverablesGetResponseModelCopyWithImpl<$Res,
        _$_ShopsDeliverablesGetResponseModel>
    implements _$$_ShopsDeliverablesGetResponseModelCopyWith<$Res> {
  __$$_ShopsDeliverablesGetResponseModelCopyWithImpl(
      _$_ShopsDeliverablesGetResponseModel _value,
      $Res Function(_$_ShopsDeliverablesGetResponseModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeliverable = null,
    Object? shopCode = null,
  }) {
    return _then(_$_ShopsDeliverablesGetResponseModel(
      isDeliverable: null == isDeliverable
          ? _value.isDeliverable
          : isDeliverable // ignore: cast_nullable_to_non_nullable
              as bool,
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopsDeliverablesGetResponseModel
    implements _ShopsDeliverablesGetResponseModel {
  const _$_ShopsDeliverablesGetResponseModel(
      {this.isDeliverable = false, this.shopCode = ''});

  factory _$_ShopsDeliverablesGetResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$$_ShopsDeliverablesGetResponseModelFromJson(json);

/* 配達可否  ``` true：配達可能 false：配達不可 ``` */
  @override
  @JsonKey()
  final bool isDeliverable;
/* 店舗コード - 配達不可の場合、nullを返却 */
  @override
  @JsonKey()
  final String shopCode;

  @override
  String toString() {
    return 'ShopsDeliverablesGetResponseModel(isDeliverable: $isDeliverable, shopCode: $shopCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopsDeliverablesGetResponseModel &&
            (identical(other.isDeliverable, isDeliverable) ||
                other.isDeliverable == isDeliverable) &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isDeliverable, shopCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopsDeliverablesGetResponseModelCopyWith<
          _$_ShopsDeliverablesGetResponseModel>
      get copyWith => __$$_ShopsDeliverablesGetResponseModelCopyWithImpl<
          _$_ShopsDeliverablesGetResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopsDeliverablesGetResponseModelToJson(
      this,
    );
  }
}

abstract class _ShopsDeliverablesGetResponseModel
    implements ShopsDeliverablesGetResponseModel {
  const factory _ShopsDeliverablesGetResponseModel(
      {final bool isDeliverable,
      final String shopCode}) = _$_ShopsDeliverablesGetResponseModel;

  factory _ShopsDeliverablesGetResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$_ShopsDeliverablesGetResponseModel.fromJson;

  @override /* 配達可否  ``` true：配達可能 false：配達不可 ``` */
  bool get isDeliverable;
  @override /* 店舗コード - 配達不可の場合、nullを返却 */
  String get shopCode;
  @override
  @JsonKey(ignore: true)
  _$$_ShopsDeliverablesGetResponseModelCopyWith<
          _$_ShopsDeliverablesGetResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}
