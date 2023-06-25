// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressModel _$AddressModelFromJson(Map<String, dynamic> json) {
  return _AddressModel.fromJson(json);
}

/// @nodoc
mixin _$AddressModel {
/* 郵便番号 - ハイフンなしの7桁 */
  String get postalNumber => throw _privateConstructorUsedError; /* 都道府県コード */
  String get prefectureCode => throw _privateConstructorUsedError; /* 都道府県名 */
  String get prefectureName =>
      throw _privateConstructorUsedError; /* 市区郡町村コード */
  String get cityCode => throw _privateConstructorUsedError; /* 市区郡町村名 */
  String get cityName => throw _privateConstructorUsedError; /* 通称コード */
  String get townCode => throw _privateConstructorUsedError; /* 通称名 */
  String get townName => throw _privateConstructorUsedError; /* 丁目コード */
  String get chomeCode => throw _privateConstructorUsedError; /* 丁目 */
  String get chomeName => throw _privateConstructorUsedError; /* 詳細 - 番地、号 */
  String get addressDetail =>
      throw _privateConstructorUsedError; /* 詳細２ - 建物名、部屋番号 */
  String get addressDetail2 =>
      throw _privateConstructorUsedError; /* 廃止住所フラグ  ``` true：廃止済み false：廃止していない ``` */
  bool get isAbolished => throw _privateConstructorUsedError; /* 都道府県情報リスト */
  List<SelectableAddressModel> get prefectures =>
      throw _privateConstructorUsedError; /* 市区町村郡情報リスト */
  List<SelectableAddressModel> get cities =>
      throw _privateConstructorUsedError; /* 通称情報リスト */
  List<SelectableAddressModel> get towns =>
      throw _privateConstructorUsedError; /* 丁目情報リスト */
  List<SelectableAddressModel> get chomes =>
      throw _privateConstructorUsedError; /* マンションID   オートロックマンションに住んでいない会員、   または住んでいるオートロックマンションが会員情報に紐づいていない場合null */
  String get mansionId =>
      throw _privateConstructorUsedError; /* お住まいステータス ~~~ null or 0：お住まい未確認 1：お住まい確認済み 2：お住まい確認中 ~~~ */
  LivingStatusType get livingStatus =>
      throw _privateConstructorUsedError; /* 置き配場所 ~~~ 1：玄関向かって右 2：玄関向かって左 3：インターフォン下 9：その他 null: 未指定 ~~~ */
  PackageDropPlace get packageDropPlace =>
      throw _privateConstructorUsedError; /* 置き配場所の詳細 ※置き配場所が「9:その他」の場合に設定される */
  String get packageDropPlaceDetail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressModelCopyWith<AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressModelCopyWith<$Res> {
  factory $AddressModelCopyWith(
          AddressModel value, $Res Function(AddressModel) then) =
      _$AddressModelCopyWithImpl<$Res, AddressModel>;
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
      String addressDetail2,
      bool isAbolished,
      List<SelectableAddressModel> prefectures,
      List<SelectableAddressModel> cities,
      List<SelectableAddressModel> towns,
      List<SelectableAddressModel> chomes,
      String mansionId,
      LivingStatusType livingStatus,
      PackageDropPlace packageDropPlace,
      String packageDropPlaceDetail});
}

/// @nodoc
class _$AddressModelCopyWithImpl<$Res, $Val extends AddressModel>
    implements $AddressModelCopyWith<$Res> {
  _$AddressModelCopyWithImpl(this._value, this._then);

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
    Object? isAbolished = null,
    Object? prefectures = null,
    Object? cities = null,
    Object? towns = null,
    Object? chomes = null,
    Object? mansionId = null,
    Object? livingStatus = null,
    Object? packageDropPlace = null,
    Object? packageDropPlaceDetail = null,
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
      isAbolished: null == isAbolished
          ? _value.isAbolished
          : isAbolished // ignore: cast_nullable_to_non_nullable
              as bool,
      prefectures: null == prefectures
          ? _value.prefectures
          : prefectures // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      cities: null == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      towns: null == towns
          ? _value.towns
          : towns // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      chomes: null == chomes
          ? _value.chomes
          : chomes // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      mansionId: null == mansionId
          ? _value.mansionId
          : mansionId // ignore: cast_nullable_to_non_nullable
              as String,
      livingStatus: null == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType,
      packageDropPlace: null == packageDropPlace
          ? _value.packageDropPlace
          : packageDropPlace // ignore: cast_nullable_to_non_nullable
              as PackageDropPlace,
      packageDropPlaceDetail: null == packageDropPlaceDetail
          ? _value.packageDropPlaceDetail
          : packageDropPlaceDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddressModelCopyWith<$Res>
    implements $AddressModelCopyWith<$Res> {
  factory _$$_AddressModelCopyWith(
          _$_AddressModel value, $Res Function(_$_AddressModel) then) =
      __$$_AddressModelCopyWithImpl<$Res>;
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
      String addressDetail2,
      bool isAbolished,
      List<SelectableAddressModel> prefectures,
      List<SelectableAddressModel> cities,
      List<SelectableAddressModel> towns,
      List<SelectableAddressModel> chomes,
      String mansionId,
      LivingStatusType livingStatus,
      PackageDropPlace packageDropPlace,
      String packageDropPlaceDetail});
}

/// @nodoc
class __$$_AddressModelCopyWithImpl<$Res>
    extends _$AddressModelCopyWithImpl<$Res, _$_AddressModel>
    implements _$$_AddressModelCopyWith<$Res> {
  __$$_AddressModelCopyWithImpl(
      _$_AddressModel _value, $Res Function(_$_AddressModel) _then)
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
    Object? isAbolished = null,
    Object? prefectures = null,
    Object? cities = null,
    Object? towns = null,
    Object? chomes = null,
    Object? mansionId = null,
    Object? livingStatus = null,
    Object? packageDropPlace = null,
    Object? packageDropPlaceDetail = null,
  }) {
    return _then(_$_AddressModel(
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
      isAbolished: null == isAbolished
          ? _value.isAbolished
          : isAbolished // ignore: cast_nullable_to_non_nullable
              as bool,
      prefectures: null == prefectures
          ? _value._prefectures
          : prefectures // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      cities: null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      towns: null == towns
          ? _value._towns
          : towns // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      chomes: null == chomes
          ? _value._chomes
          : chomes // ignore: cast_nullable_to_non_nullable
              as List<SelectableAddressModel>,
      mansionId: null == mansionId
          ? _value.mansionId
          : mansionId // ignore: cast_nullable_to_non_nullable
              as String,
      livingStatus: null == livingStatus
          ? _value.livingStatus
          : livingStatus // ignore: cast_nullable_to_non_nullable
              as LivingStatusType,
      packageDropPlace: null == packageDropPlace
          ? _value.packageDropPlace
          : packageDropPlace // ignore: cast_nullable_to_non_nullable
              as PackageDropPlace,
      packageDropPlaceDetail: null == packageDropPlaceDetail
          ? _value.packageDropPlaceDetail
          : packageDropPlaceDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddressModel with BaseAddressModel implements _AddressModel {
  const _$_AddressModel(
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
      this.addressDetail2 = '',
      this.isAbolished = false,
      final List<SelectableAddressModel> prefectures =
          const <SelectableAddressModel>[],
      final List<SelectableAddressModel> cities =
          const <SelectableAddressModel>[],
      final List<SelectableAddressModel> towns =
          const <SelectableAddressModel>[],
      final List<SelectableAddressModel> chomes =
          const <SelectableAddressModel>[],
      this.mansionId = '',
      this.livingStatus = LivingStatusType.unconfirmed,
      this.packageDropPlace = PackageDropPlace.notPackageDropPlace,
      this.packageDropPlaceDetail = ''})
      : _prefectures = prefectures,
        _cities = cities,
        _towns = towns,
        _chomes = chomes;

  factory _$_AddressModel.fromJson(Map<String, dynamic> json) =>
      _$$_AddressModelFromJson(json);

/* 郵便番号 - ハイフンなしの7桁 */
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
/* 詳細 - 番地、号 */
  @override
  @JsonKey()
  final String addressDetail;
/* 詳細２ - 建物名、部屋番号 */
  @override
  @JsonKey()
  final String addressDetail2;
/* 廃止住所フラグ  ``` true：廃止済み false：廃止していない ``` */
  @override
  @JsonKey()
  final bool isAbolished;
/* 都道府県情報リスト */
  final List<SelectableAddressModel> _prefectures;
/* 都道府県情報リスト */
  @override
  @JsonKey()
  List<SelectableAddressModel> get prefectures {
    if (_prefectures is EqualUnmodifiableListView) return _prefectures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_prefectures);
  }

/* 市区町村郡情報リスト */
  final List<SelectableAddressModel> _cities;
/* 市区町村郡情報リスト */
  @override
  @JsonKey()
  List<SelectableAddressModel> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

/* 通称情報リスト */
  final List<SelectableAddressModel> _towns;
/* 通称情報リスト */
  @override
  @JsonKey()
  List<SelectableAddressModel> get towns {
    if (_towns is EqualUnmodifiableListView) return _towns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_towns);
  }

/* 丁目情報リスト */
  final List<SelectableAddressModel> _chomes;
/* 丁目情報リスト */
  @override
  @JsonKey()
  List<SelectableAddressModel> get chomes {
    if (_chomes is EqualUnmodifiableListView) return _chomes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chomes);
  }

/* マンションID   オートロックマンションに住んでいない会員、   または住んでいるオートロックマンションが会員情報に紐づいていない場合null */
  @override
  @JsonKey()
  final String mansionId;
/* お住まいステータス ~~~ null or 0：お住まい未確認 1：お住まい確認済み 2：お住まい確認中 ~~~ */
  @override
  @JsonKey()
  final LivingStatusType livingStatus;
/* 置き配場所 ~~~ 1：玄関向かって右 2：玄関向かって左 3：インターフォン下 9：その他 null: 未指定 ~~~ */
  @override
  @JsonKey()
  final PackageDropPlace packageDropPlace;
/* 置き配場所の詳細 ※置き配場所が「9:その他」の場合に設定される */
  @override
  @JsonKey()
  final String packageDropPlaceDetail;

  @override
  String toString() {
    return 'AddressModel(postalNumber: $postalNumber, prefectureCode: $prefectureCode, prefectureName: $prefectureName, cityCode: $cityCode, cityName: $cityName, townCode: $townCode, townName: $townName, chomeCode: $chomeCode, chomeName: $chomeName, addressDetail: $addressDetail, addressDetail2: $addressDetail2, isAbolished: $isAbolished, prefectures: $prefectures, cities: $cities, towns: $towns, chomes: $chomes, mansionId: $mansionId, livingStatus: $livingStatus, packageDropPlace: $packageDropPlace, packageDropPlaceDetail: $packageDropPlaceDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressModel &&
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
                other.addressDetail2 == addressDetail2) &&
            (identical(other.isAbolished, isAbolished) ||
                other.isAbolished == isAbolished) &&
            const DeepCollectionEquality()
                .equals(other._prefectures, _prefectures) &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(other._towns, _towns) &&
            const DeepCollectionEquality().equals(other._chomes, _chomes) &&
            (identical(other.mansionId, mansionId) ||
                other.mansionId == mansionId) &&
            (identical(other.livingStatus, livingStatus) ||
                other.livingStatus == livingStatus) &&
            (identical(other.packageDropPlace, packageDropPlace) ||
                other.packageDropPlace == packageDropPlace) &&
            (identical(other.packageDropPlaceDetail, packageDropPlaceDetail) ||
                other.packageDropPlaceDetail == packageDropPlaceDetail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
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
        addressDetail2,
        isAbolished,
        const DeepCollectionEquality().hash(_prefectures),
        const DeepCollectionEquality().hash(_cities),
        const DeepCollectionEquality().hash(_towns),
        const DeepCollectionEquality().hash(_chomes),
        mansionId,
        livingStatus,
        packageDropPlace,
        packageDropPlaceDetail
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      __$$_AddressModelCopyWithImpl<_$_AddressModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddressModelToJson(
      this,
    );
  }
}

abstract class _AddressModel implements AddressModel, BaseAddressModel {
  const factory _AddressModel(
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
      final String addressDetail2,
      final bool isAbolished,
      final List<SelectableAddressModel> prefectures,
      final List<SelectableAddressModel> cities,
      final List<SelectableAddressModel> towns,
      final List<SelectableAddressModel> chomes,
      final String mansionId,
      final LivingStatusType livingStatus,
      final PackageDropPlace packageDropPlace,
      final String packageDropPlaceDetail}) = _$_AddressModel;

  factory _AddressModel.fromJson(Map<String, dynamic> json) =
      _$_AddressModel.fromJson;

  @override /* 郵便番号 - ハイフンなしの7桁 */
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
  @override /* 詳細 - 番地、号 */
  String get addressDetail;
  @override /* 詳細２ - 建物名、部屋番号 */
  String get addressDetail2;
  @override /* 廃止住所フラグ  ``` true：廃止済み false：廃止していない ``` */
  bool get isAbolished;
  @override /* 都道府県情報リスト */
  List<SelectableAddressModel> get prefectures;
  @override /* 市区町村郡情報リスト */
  List<SelectableAddressModel> get cities;
  @override /* 通称情報リスト */
  List<SelectableAddressModel> get towns;
  @override /* 丁目情報リスト */
  List<SelectableAddressModel> get chomes;
  @override /* マンションID   オートロックマンションに住んでいない会員、   または住んでいるオートロックマンションが会員情報に紐づいていない場合null */
  String get mansionId;
  @override /* お住まいステータス ~~~ null or 0：お住まい未確認 1：お住まい確認済み 2：お住まい確認中 ~~~ */
  LivingStatusType get livingStatus;
  @override /* 置き配場所 ~~~ 1：玄関向かって右 2：玄関向かって左 3：インターフォン下 9：その他 null: 未指定 ~~~ */
  PackageDropPlace get packageDropPlace;
  @override /* 置き配場所の詳細 ※置き配場所が「9:その他」の場合に設定される */
  String get packageDropPlaceDetail;
  @override
  @JsonKey(ignore: true)
  _$$_AddressModelCopyWith<_$_AddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}
