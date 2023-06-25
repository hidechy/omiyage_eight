// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerAddressModel _$CustomerAddressModelFromJson(Map<String, dynamic> json) {
  return _CustomerAddressModel.fromJson(json);
}

/// @nodoc
mixin _$CustomerAddressModel {
/* 郵便番号 - ハイフンなしの7桁 maxLength: 7 */
  String get postalNumber => throw _privateConstructorUsedError; /* 都道府県コード */
  String get prefectureCode => throw _privateConstructorUsedError; /* 都道府県名 */
  String get prefectureName =>
      throw _privateConstructorUsedError; /* 市区郡町村コード */
  String get cityCode => throw _privateConstructorUsedError; /* 市区郡町村名 */
  String get cityName => throw _privateConstructorUsedError; /* 通称コード */
  String get townCode => throw _privateConstructorUsedError; /* 通称名 */
  String get townName => throw _privateConstructorUsedError; /* 丁目コード */
  String get chomeCode => throw _privateConstructorUsedError; /* 丁目 */
  String get chomeName =>
      throw _privateConstructorUsedError; /* 詳細 - 番地、号 maxLength: 150 */
  String get addressDetail =>
      throw _privateConstructorUsedError; /* 詳細２ - 建物名、部屋番号 maxLength: 150 */
  String get addressDetail2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerAddressModelCopyWith<CustomerAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerAddressModelCopyWith<$Res> {
  factory $CustomerAddressModelCopyWith(CustomerAddressModel value,
          $Res Function(CustomerAddressModel) then) =
      _$CustomerAddressModelCopyWithImpl<$Res, CustomerAddressModel>;
  @useResult
  $Res call(
      {String postalNumber,
      String prefectureCode,
      String prefectureName,
      String cityCode,
      String cityName,
      String townCode,
      String townName,
      String chomeCode,
      String chomeName,
      String addressDetail,
      String addressDetail2});
}

/// @nodoc
class _$CustomerAddressModelCopyWithImpl<$Res,
        $Val extends CustomerAddressModel>
    implements $CustomerAddressModelCopyWith<$Res> {
  _$CustomerAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalNumber = null,
    Object? prefectureCode = null,
    Object? prefectureName = null,
    Object? cityCode = null,
    Object? cityName = null,
    Object? townCode = null,
    Object? townName = null,
    Object? chomeCode = null,
    Object? chomeName = null,
    Object? addressDetail = null,
    Object? addressDetail2 = null,
  }) {
    return _then(_value.copyWith(
      postalNumber: null == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureCode: null == prefectureCode
          ? _value.prefectureCode
          : prefectureCode // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureName: null == prefectureName
          ? _value.prefectureName
          : prefectureName // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townCode: null == townCode
          ? _value.townCode
          : townCode // ignore: cast_nullable_to_non_nullable
              as String,
      townName: null == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String,
      chomeCode: null == chomeCode
          ? _value.chomeCode
          : chomeCode // ignore: cast_nullable_to_non_nullable
              as String,
      chomeName: null == chomeName
          ? _value.chomeName
          : chomeName // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail2: null == addressDetail2
          ? _value.addressDetail2
          : addressDetail2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CustomerAddressModelCopyWith<$Res>
    implements $CustomerAddressModelCopyWith<$Res> {
  factory _$$_CustomerAddressModelCopyWith(_$_CustomerAddressModel value,
          $Res Function(_$_CustomerAddressModel) then) =
      __$$_CustomerAddressModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String postalNumber,
      String prefectureCode,
      String prefectureName,
      String cityCode,
      String cityName,
      String townCode,
      String townName,
      String chomeCode,
      String chomeName,
      String addressDetail,
      String addressDetail2});
}

/// @nodoc
class __$$_CustomerAddressModelCopyWithImpl<$Res>
    extends _$CustomerAddressModelCopyWithImpl<$Res, _$_CustomerAddressModel>
    implements _$$_CustomerAddressModelCopyWith<$Res> {
  __$$_CustomerAddressModelCopyWithImpl(_$_CustomerAddressModel _value,
      $Res Function(_$_CustomerAddressModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postalNumber = null,
    Object? prefectureCode = null,
    Object? prefectureName = null,
    Object? cityCode = null,
    Object? cityName = null,
    Object? townCode = null,
    Object? townName = null,
    Object? chomeCode = null,
    Object? chomeName = null,
    Object? addressDetail = null,
    Object? addressDetail2 = null,
  }) {
    return _then(_$_CustomerAddressModel(
      postalNumber: null == postalNumber
          ? _value.postalNumber
          : postalNumber // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureCode: null == prefectureCode
          ? _value.prefectureCode
          : prefectureCode // ignore: cast_nullable_to_non_nullable
              as String,
      prefectureName: null == prefectureName
          ? _value.prefectureName
          : prefectureName // ignore: cast_nullable_to_non_nullable
              as String,
      cityCode: null == cityCode
          ? _value.cityCode
          : cityCode // ignore: cast_nullable_to_non_nullable
              as String,
      cityName: null == cityName
          ? _value.cityName
          : cityName // ignore: cast_nullable_to_non_nullable
              as String,
      townCode: null == townCode
          ? _value.townCode
          : townCode // ignore: cast_nullable_to_non_nullable
              as String,
      townName: null == townName
          ? _value.townName
          : townName // ignore: cast_nullable_to_non_nullable
              as String,
      chomeCode: null == chomeCode
          ? _value.chomeCode
          : chomeCode // ignore: cast_nullable_to_non_nullable
              as String,
      chomeName: null == chomeName
          ? _value.chomeName
          : chomeName // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail: null == addressDetail
          ? _value.addressDetail
          : addressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      addressDetail2: null == addressDetail2
          ? _value.addressDetail2
          : addressDetail2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerAddressModel
    with BaseAddressModel
    implements _CustomerAddressModel {
  const _$_CustomerAddressModel(
      {this.postalNumber = '',
      this.prefectureCode = '',
      this.prefectureName = '',
      this.cityCode = '',
      this.cityName = '',
      this.townCode = '',
      this.townName = '',
      this.chomeCode = '',
      this.chomeName = '',
      this.addressDetail = '',
      this.addressDetail2 = ''});

  factory _$_CustomerAddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerAddressModelFromJson(json);

/* 郵便番号 - ハイフンなしの7桁 maxLength: 7 */
  @override
  @JsonKey()
  final String postalNumber;
/* 都道府県コード */
  @override
  @JsonKey()
  final String prefectureCode;
/* 都道府県名 */
  @override
  @JsonKey()
  final String prefectureName;
/* 市区郡町村コード */
  @override
  @JsonKey()
  final String cityCode;
/* 市区郡町村名 */
  @override
  @JsonKey()
  final String cityName;
/* 通称コード */
  @override
  @JsonKey()
  final String townCode;
/* 通称名 */
  @override
  @JsonKey()
  final String townName;
/* 丁目コード */
  @override
  @JsonKey()
  final String chomeCode;
/* 丁目 */
  @override
  @JsonKey()
  final String chomeName;
/* 詳細 - 番地、号 maxLength: 150 */
  @override
  @JsonKey()
  final String addressDetail;
/* 詳細２ - 建物名、部屋番号 maxLength: 150 */
  @override
  @JsonKey()
  final String addressDetail2;

  @override
  String toString() {
    return 'CustomerAddressModel(postalNumber: $postalNumber, prefectureCode: $prefectureCode, prefectureName: $prefectureName, cityCode: $cityCode, cityName: $cityName, townCode: $townCode, townName: $townName, chomeCode: $chomeCode, chomeName: $chomeName, addressDetail: $addressDetail, addressDetail2: $addressDetail2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerAddressModel &&
            (identical(other.postalNumber, postalNumber) ||
                other.postalNumber == postalNumber) &&
            (identical(other.prefectureCode, prefectureCode) ||
                other.prefectureCode == prefectureCode) &&
            (identical(other.prefectureName, prefectureName) ||
                other.prefectureName == prefectureName) &&
            (identical(other.cityCode, cityCode) ||
                other.cityCode == cityCode) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.townCode, townCode) ||
                other.townCode == townCode) &&
            (identical(other.townName, townName) ||
                other.townName == townName) &&
            (identical(other.chomeCode, chomeCode) ||
                other.chomeCode == chomeCode) &&
            (identical(other.chomeName, chomeName) ||
                other.chomeName == chomeName) &&
            (identical(other.addressDetail, addressDetail) ||
                other.addressDetail == addressDetail) &&
            (identical(other.addressDetail2, addressDetail2) ||
                other.addressDetail2 == addressDetail2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      postalNumber,
      prefectureCode,
      prefectureName,
      cityCode,
      cityName,
      townCode,
      townName,
      chomeCode,
      chomeName,
      addressDetail,
      addressDetail2);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CustomerAddressModelCopyWith<_$_CustomerAddressModel> get copyWith =>
      __$$_CustomerAddressModelCopyWithImpl<_$_CustomerAddressModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerAddressModelToJson(
      this,
    );
  }
}

abstract class _CustomerAddressModel
    implements CustomerAddressModel, BaseAddressModel {
  const factory _CustomerAddressModel(
      {final String postalNumber,
      final String prefectureCode,
      final String prefectureName,
      final String cityCode,
      final String cityName,
      final String townCode,
      final String townName,
      final String chomeCode,
      final String chomeName,
      final String addressDetail,
      final String addressDetail2}) = _$_CustomerAddressModel;

  factory _CustomerAddressModel.fromJson(Map<String, dynamic> json) =
      _$_CustomerAddressModel.fromJson;

  @override /* 郵便番号 - ハイフンなしの7桁 maxLength: 7 */
  String get postalNumber;
  @override /* 都道府県コード */
  String get prefectureCode;
  @override /* 都道府県名 */
  String get prefectureName;
  @override /* 市区郡町村コード */
  String get cityCode;
  @override /* 市区郡町村名 */
  String get cityName;
  @override /* 通称コード */
  String get townCode;
  @override /* 通称名 */
  String get townName;
  @override /* 丁目コード */
  String get chomeCode;
  @override /* 丁目 */
  String get chomeName;
  @override /* 詳細 - 番地、号 maxLength: 150 */
  String get addressDetail;
  @override /* 詳細２ - 建物名、部屋番号 maxLength: 150 */
  String get addressDetail2;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerAddressModelCopyWith<_$_CustomerAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
