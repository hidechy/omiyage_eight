// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_addresses_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryAddressesModel _$DeliveryAddressesModelFromJson(
    Map<String, dynamic> json) {
  return _DeliveryAddressesModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryAddressesModel {
/* 都道府県コード */
  String get prefectureCode => throw _privateConstructorUsedError; /* 市区町村コード */
  String get cityCode =>
      throw _privateConstructorUsedError; /* 通称コード  ``` 該当する通称コードが存在しない場合「000」を返却 ``` */
  String get townCode => throw _privateConstructorUsedError; /* 郵便番号 */
  String get postalNumber => throw _privateConstructorUsedError; /* 都道府県名 */
  String get prefectureName => throw _privateConstructorUsedError; /* 市区郡町村名 */
  String get cityName => throw _privateConstructorUsedError; /* 通称名 */
  String get townName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryAddressesModelCopyWith<DeliveryAddressesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryAddressesModelCopyWith<$Res> {
  factory $DeliveryAddressesModelCopyWith(DeliveryAddressesModel value,
          $Res Function(DeliveryAddressesModel) then) =
      _$DeliveryAddressesModelCopyWithImpl<$Res, DeliveryAddressesModel>;
  @useResult
  $Res call(
      {String prefectureCode,
      String cityCode,
      String townCode,
      String postalNumber,
      String prefectureName,
      String cityName,
      String townName});
}

/// @nodoc
class _$DeliveryAddressesModelCopyWithImpl<$Res,
        $Val extends DeliveryAddressesModel>
    implements $DeliveryAddressesModelCopyWith<$Res> {
  _$DeliveryAddressesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefectureCode = null,
    Object? cityCode = null,
    Object? townCode = null,
    Object? postalNumber = null,
    Object? prefectureName = null,
    Object? cityName = null,
    Object? townName = null,
  }) {
    return _then(_value.copyWith(
      prefectureCode: null == prefectureCode
          ? _value.prefectureCode
          : prefectureCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      townCode: null == townCode
          ? _value.townCode
          : townCode // ignore: cast_nullable_to_non_nullable
              as String,
      postalNumber: null == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureName: null == prefectureName
          ? _value.prefectureName
          : prefectureName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townName: null == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryAddressesModelCopyWith<$Res>
    implements $DeliveryAddressesModelCopyWith<$Res> {
  factory _$$_DeliveryAddressesModelCopyWith(_$_DeliveryAddressesModel value,
          $Res Function(_$_DeliveryAddressesModel) then) =
      __$$_DeliveryAddressesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String prefectureCode,
      String cityCode,
      String townCode,
      String postalNumber,
      String prefectureName,
      String cityName,
      String townName});
}

/// @nodoc
class __$$_DeliveryAddressesModelCopyWithImpl<$Res>
    extends _$DeliveryAddressesModelCopyWithImpl<$Res,
        _$_DeliveryAddressesModel>
    implements _$$_DeliveryAddressesModelCopyWith<$Res> {
  __$$_DeliveryAddressesModelCopyWithImpl(_$_DeliveryAddressesModel _value,
      $Res Function(_$_DeliveryAddressesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? prefectureCode = null,
    Object? cityCode = null,
    Object? townCode = null,
    Object? postalNumber = null,
    Object? prefectureName = null,
    Object? cityName = null,
    Object? townName = null,
  }) {
    return _then(_$_DeliveryAddressesModel(
      prefectureCode: null == prefectureCode
          ? _value.prefectureCode
          : prefectureCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      townCode: null == townCode
          ? _value.townCode
          : townCode // ignore: cast_nullable_to_non_nullable
              as String,
      postalNumber: null == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureName: null == prefectureName
          ? _value.prefectureName
          : prefectureName // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townName: null == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryAddressesModel implements _DeliveryAddressesModel {
  const _$_DeliveryAddressesModel(
      {this.prefectureCode = '',
      this.cityCode = '',
      this.townCode = '',
      this.postalNumber = '',
      this.prefectureName = '',
      this.cityName = '',
      this.townName = ''});

  factory _$_DeliveryAddressesModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryAddressesModelFromJson(json);

/* 都道府県コード */
  @override
  @JsonKey()
  final String prefectureCode;
/* 市区町村コード */
  @override
  @JsonKey()
  final String cityCode;
/* 通称コード  ``` 該当する通称コードが存在しない場合「000」を返却 ``` */
  @override
  @JsonKey()
  final String townCode;
/* 郵便番号 */
  @override
  @JsonKey()
  final String postalNumber;
/* 都道府県名 */
  @override
  @JsonKey()
  final String prefectureName;
/* 市区郡町村名 */
  @override
  @JsonKey()
  final String cityName;
/* 通称名 */
  @override
  @JsonKey()
  final String townName;

  @override
  String toString() {
    return 'DeliveryAddressesModel(prefectureCode: $prefectureCode, cityCode: $cityCode, townCode: $townCode, postalNumber: $postalNumber, prefectureName: $prefectureName, cityName: $cityName, townName: $townName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryAddressesModel &&
            (identical(other.prefectureCode, prefectureCode) ||
                other.prefectureCode == prefectureCode) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.townCode, townCode) ||
                other.townCode == townCode) &&
            (identical(other.postalNumber, postalNumber) ||
                other.postalNumber == postalNumber) &&
            (identical(other.prefectureName, prefectureName) ||
                other.prefectureName == prefectureName) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.townName, townName) ||
                other.townName == townName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, prefectureCode, cityCode,
      townCode, postalNumber, prefectureName, cityName, townName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryAddressesModelCopyWith<_$_DeliveryAddressesModel> get copyWith =>
      __$$_DeliveryAddressesModelCopyWithImpl<_$_DeliveryAddressesModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryAddressesModelToJson(
      this,
    );
  }
}

abstract class _DeliveryAddressesModel implements DeliveryAddressesModel {
  const factory _DeliveryAddressesModel(
      {final String prefectureCode,
      final String cityCode,
      final String townCode,
      final String postalNumber,
      final String prefectureName,
      final String cityName,
      final String townName}) = _$_DeliveryAddressesModel;

  factory _DeliveryAddressesModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryAddressesModel.fromJson;

  @override /* 都道府県コード */
  String get prefectureCode;
  @override /* 市区町村コード */
  String get cityCode;
  @override /* 通称コード  ``` 該当する通称コードが存在しない場合「000」を返却 ``` */
  String get townCode;
  @override /* 郵便番号 */
  String get postalNumber;
  @override /* 都道府県名 */
  String get prefectureName;
  @override /* 市区郡町村名 */
  String get cityName;
  @override /* 通称名 */
  String get townName;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryAddressesModelCopyWith<_$_DeliveryAddressesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
