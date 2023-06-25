// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pack_method_information_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackMethodInformationModel _$PackMethodInformationModelFromJson(
    Map<String, dynamic> json) {
  return _PackMethodInformationModel.fromJson(json);
}

/// @nodoc
mixin _$PackMethodInformationModel {
/* 梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) ``` */
  PackMethodType get packMethodType =>
      throw _privateConstructorUsedError; /* 梱包まとめ方法種別名称 */
  String get packMethodTypeName =>
      throw _privateConstructorUsedError; /* 梱包手数料割合 ``` 個別注文：0% 複数注文(注文毎に個別梱包する)：10% 複数注文(まとめて梱包する)：7% ``` */
  int get packingFeeRate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackMethodInformationModelCopyWith<PackMethodInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackMethodInformationModelCopyWith<$Res> {
  factory $PackMethodInformationModelCopyWith(PackMethodInformationModel value,
          $Res Function(PackMethodInformationModel) then) =
      _$PackMethodInformationModelCopyWithImpl<$Res,
          PackMethodInformationModel>;
  @useResult
  $Res call(
      {PackMethodType packMethodType,
      String packMethodTypeName,
      int packingFeeRate});
}

/// @nodoc
class _$PackMethodInformationModelCopyWithImpl<$Res,
        $Val extends PackMethodInformationModel>
    implements $PackMethodInformationModelCopyWith<$Res> {
  _$PackMethodInformationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packMethodType = null,
    Object? packMethodTypeName = null,
    Object? packingFeeRate = null,
  }) {
    return _then(_value.copyWith(
      packMethodType: null == packMethodType
          ? _value.packMethodType
          : packMethodType // ignore: cast_nullable_to_non_nullable
              as PackMethodType,
      packMethodTypeName: null == packMethodTypeName
          ? _value.packMethodTypeName
          : packMethodTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      packingFeeRate: null == packingFeeRate
          ? _value.packingFeeRate
          : packingFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PackMethodInformationModelCopyWith<$Res>
    implements $PackMethodInformationModelCopyWith<$Res> {
  factory _$$_PackMethodInformationModelCopyWith(
          _$_PackMethodInformationModel value,
          $Res Function(_$_PackMethodInformationModel) then) =
      __$$_PackMethodInformationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PackMethodType packMethodType,
      String packMethodTypeName,
      int packingFeeRate});
}

/// @nodoc
class __$$_PackMethodInformationModelCopyWithImpl<$Res>
    extends _$PackMethodInformationModelCopyWithImpl<$Res,
        _$_PackMethodInformationModel>
    implements _$$_PackMethodInformationModelCopyWith<$Res> {
  __$$_PackMethodInformationModelCopyWithImpl(
      _$_PackMethodInformationModel _value,
      $Res Function(_$_PackMethodInformationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packMethodType = null,
    Object? packMethodTypeName = null,
    Object? packingFeeRate = null,
  }) {
    return _then(_$_PackMethodInformationModel(
      packMethodType: null == packMethodType
          ? _value.packMethodType
          : packMethodType // ignore: cast_nullable_to_non_nullable
              as PackMethodType,
      packMethodTypeName: null == packMethodTypeName
          ? _value.packMethodTypeName
          : packMethodTypeName // ignore: cast_nullable_to_non_nullable
              as String,
      packingFeeRate: null == packingFeeRate
          ? _value.packingFeeRate
          : packingFeeRate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PackMethodInformationModel implements _PackMethodInformationModel {
  const _$_PackMethodInformationModel(
      {this.packMethodType = PackMethodType.individualOrder,
      this.packMethodTypeName = '',
      this.packingFeeRate = 0});

  factory _$_PackMethodInformationModel.fromJson(Map<String, dynamic> json) =>
      _$$_PackMethodInformationModelFromJson(json);

/* 梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) ``` */
  @override
  @JsonKey()
  final PackMethodType packMethodType;
/* 梱包まとめ方法種別名称 */
  @override
  @JsonKey()
  final String packMethodTypeName;
/* 梱包手数料割合 ``` 個別注文：0% 複数注文(注文毎に個別梱包する)：10% 複数注文(まとめて梱包する)：7% ``` */
  @override
  @JsonKey()
  final int packingFeeRate;

  @override
  String toString() {
    return 'PackMethodInformationModel(packMethodType: $packMethodType, packMethodTypeName: $packMethodTypeName, packingFeeRate: $packingFeeRate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PackMethodInformationModel &&
            (identical(other.packMethodType, packMethodType) ||
                other.packMethodType == packMethodType) &&
            (identical(other.packMethodTypeName, packMethodTypeName) ||
                other.packMethodTypeName == packMethodTypeName) &&
            (identical(other.packingFeeRate, packingFeeRate) ||
                other.packingFeeRate == packingFeeRate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, packMethodType, packMethodTypeName, packingFeeRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PackMethodInformationModelCopyWith<_$_PackMethodInformationModel>
      get copyWith => __$$_PackMethodInformationModelCopyWithImpl<
          _$_PackMethodInformationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PackMethodInformationModelToJson(
      this,
    );
  }
}

abstract class _PackMethodInformationModel
    implements PackMethodInformationModel {
  const factory _PackMethodInformationModel(
      {final PackMethodType packMethodType,
      final String packMethodTypeName,
      final int packingFeeRate}) = _$_PackMethodInformationModel;

  factory _PackMethodInformationModel.fromJson(Map<String, dynamic> json) =
      _$_PackMethodInformationModel.fromJson;

  @override /* 梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) ``` */
  PackMethodType get packMethodType;
  @override /* 梱包まとめ方法種別名称 */
  String get packMethodTypeName;
  @override /* 梱包手数料割合 ``` 個別注文：0% 複数注文(注文毎に個別梱包する)：10% 複数注文(まとめて梱包する)：7% ``` */
  int get packingFeeRate;
  @override
  @JsonKey(ignore: true)
  _$$_PackMethodInformationModelCopyWith<_$_PackMethodInformationModel>
      get copyWith => throw _privateConstructorUsedError;
}
