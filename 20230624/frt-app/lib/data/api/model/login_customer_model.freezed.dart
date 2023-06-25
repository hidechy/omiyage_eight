// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginCustomerModel _$LoginCustomerModelFromJson(Map<String, dynamic> json) {
  return _LoginCustomerModel.fromJson(json);
}

/// @nodoc
mixin _$LoginCustomerModel {
  /// 初回利用登録トークン
  @JsonKey(ignore: true)
  String? get firstUseToken =>
      throw _privateConstructorUsedError; /* 会員種別 ```1:7ID会員 2:本店会員 3:見学会員```*/
  CustomerType get customerType =>
      throw _privateConstructorUsedError; /* お届け先住所モデル */
  AddressModel? get deliveryAddress =>
      throw _privateConstructorUsedError; /* 未配達情報メッセージコード　※別ファイル：メッセージコード_一覧参照 */
  String get undeliveredMessageCode =>
      throw _privateConstructorUsedError; /*
      住所変更可能日時 ※YYYYMMDD
      ```
      undelivered_message_code = "2000005" の場合、退会、または、住所の変更が可能となる日付を返す
      undelivered_message_code = "2000005" 以外の場合、nullとなる
      ```
    */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'changeable_address_date')
  int? get epochChangeableAddressDate =>
      throw _privateConstructorUsedError; /* お届け担当店舗モデル */
  List<DeliveryShopModel> get deliveryShop =>
      throw _privateConstructorUsedError; /* 移行後お届け担当店舗モデル */
  List<ShopModel> get migrationToCenter =>
      throw _privateConstructorUsedError; /* 移行開始日時 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'migration_from')
  int? get epochMigrationFrom =>
      throw _privateConstructorUsedError; /* 移行完了日時 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'migration_to')
  int? get epochMigrationTo => throw _privateConstructorUsedError; /* 会員住所モデル */
  CustomerAddressModel? get customerAddress =>
      throw _privateConstructorUsedError; /* ログインID */
  String get loginId => throw _privateConstructorUsedError; /* 姓 */
  String get lastName => throw _privateConstructorUsedError; /* 名 */
  String get firstName => throw _privateConstructorUsedError; /* 姓カナ */
  String get lastNameKana => throw _privateConstructorUsedError; /* 名カナ */
  String get firstNameKana =>
      throw _privateConstructorUsedError; /* 電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  String get telNumber1 =>
      throw _privateConstructorUsedError; /* 電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  String get telNumber2 =>
      throw _privateConstructorUsedError; /* 電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  String get telNumber3 =>
      throw _privateConstructorUsedError; /* 携帯電話番号またはお勤め先電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  String get emergencyTelNumber1 =>
      throw _privateConstructorUsedError; /* 携帯電話番号またはお勤め先電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  String get emergencyTelNumber2 =>
      throw _privateConstructorUsedError; /* 携帯電話番号またはお勤め先電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  String get emergencyTelNumber3 =>
      throw _privateConstructorUsedError; /* メインメールアドレス */
  String get mainMailAddress =>
      throw _privateConstructorUsedError; /* サブメールアドレス */
  String get subMailAddress => throw _privateConstructorUsedError; /* 性別 */
  @JsonKey(name: 'gender')
  String get rawGender => throw _privateConstructorUsedError; /* 生年月日（年） */
  String get birthYear => throw _privateConstructorUsedError; /* 生年月日（月） */
  String get birthMonth => throw _privateConstructorUsedError; /* 生年月日（日） */
  String get birthDayOfMonth =>
      throw _privateConstructorUsedError; /* 個人会員フラグ - true：個人会員 - false：企業・団体会員 */
  bool get isIndividualCustomer =>
      throw _privateConstructorUsedError; /* 会社名 - 個人会員フラグ：falseの場合に設定される */
  String get companyName =>
      throw _privateConstructorUsedError; /* 部署名 - 個人会員フラグ：falseの場合に設定される。 */
  String get departmentName =>
      throw _privateConstructorUsedError; /* キャンペーンモデル */
  CampaignModel? get campaign =>
      throw _privateConstructorUsedError; /*
      nanaco番号 ※下4桁のみ返す
        - 本店会員の場合、返す
        - 本店会員でない場合、nullを返却
    */
  String get nanacoNumber =>
      throw _privateConstructorUsedError; /*
      ログイン時SMS/音声通知認証設定フラグ ※7iD会員の場合、OFFを返す
      ```
      "1"：ON
      "0"：OFF
      ```
   */
  @StringToBooleanConverter()
  bool get isLoginMfa =>
      throw _privateConstructorUsedError; /*
      会員ステータス
      ```
      "1"：特別会員
      "2"：保守会員
      null：一般
      ```
    */
  CustomerStatus get status =>
      throw _privateConstructorUsedError; /* 共通会員IDハッシュ 本店会員の場合、null */
  @JsonKey(name: 'cmnmmbridhash_128')
  String get cmnmmbridhash128 =>
      throw _privateConstructorUsedError; /*
      お届け先住所相違判定
      ```
      true：お届け先住所相違である
      false：お届け先住所相違でない
      ```
    */
  bool get isAddressDifference =>
      throw _privateConstructorUsedError; /*
      初回利用登録済みフラグ
        - ※本店会員の場合は必ずtrueを返す
        ```
        true：初回利用登録済み
        false：初回利用未登録
        ```
     */
  bool get isFirstUseRegistered =>
      throw _privateConstructorUsedError; /*
      購入不可商品あり判定
        ```
        true：商品あり
        false：商品なし
        ```
     */
  bool get isCanNotBuyProduct =>
      throw _privateConstructorUsedError; /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames =>
      throw _privateConstructorUsedError; /* 会員登録日時 ※YYYY-MM-DDThh:mm:ss+09:00 見学会員の場合、null */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'registration_datetime')
  int? get epochRegistrationDatetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginCustomerModelCopyWith<LoginCustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginCustomerModelCopyWith<$Res> {
  factory $LoginCustomerModelCopyWith(
          LoginCustomerModel value, $Res Function(LoginCustomerModel) then) =
      _$LoginCustomerModelCopyWithImpl<$Res, LoginCustomerModel>;
  @useResult
  $Res call(
      {@JsonKey(ignore: true)
          String? firstUseToken,
      CustomerType customerType,
      AddressModel? deliveryAddress,
      String undeliveredMessageCode,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'changeable_address_date')
          int? epochChangeableAddressDate,
      List<DeliveryShopModel> deliveryShop,
      List<ShopModel> migrationToCenter,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_from')
          int? epochMigrationFrom,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_to')
          int? epochMigrationTo,
      CustomerAddressModel? customerAddress,
      String loginId,
      String lastName,
      String firstName,
      String lastNameKana,
      String firstNameKana,
      String telNumber1,
      String telNumber2,
      String telNumber3,
      String emergencyTelNumber1,
      String emergencyTelNumber2,
      String emergencyTelNumber3,
      String mainMailAddress,
      String subMailAddress,
      @JsonKey(name: 'gender')
          String rawGender,
      String birthYear,
      String birthMonth,
      String birthDayOfMonth,
      bool isIndividualCustomer,
      String companyName,
      String departmentName,
      CampaignModel? campaign,
      String nanacoNumber,
      @StringToBooleanConverter()
          bool isLoginMfa,
      CustomerStatus status,
      @JsonKey(name: 'cmnmmbridhash_128')
          String cmnmmbridhash128,
      bool isAddressDifference,
      bool isFirstUseRegistered,
      bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'registration_datetime')
          int? epochRegistrationDatetime});

  $AddressModelCopyWith<$Res>? get deliveryAddress;
  $CustomerAddressModelCopyWith<$Res>? get customerAddress;
  $CampaignModelCopyWith<$Res>? get campaign;
}

/// @nodoc
class _$LoginCustomerModelCopyWithImpl<$Res, $Val extends LoginCustomerModel>
    implements $LoginCustomerModelCopyWith<$Res> {
  _$LoginCustomerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstUseToken = freezed,
    Object? customerType = null,
    Object? deliveryAddress = freezed,
    Object? undeliveredMessageCode = null,
    Object? epochChangeableAddressDate = freezed,
    Object? deliveryShop = null,
    Object? migrationToCenter = null,
    Object? epochMigrationFrom = freezed,
    Object? epochMigrationTo = freezed,
    Object? customerAddress = freezed,
    Object? loginId = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? lastNameKana = null,
    Object? firstNameKana = null,
    Object? telNumber1 = null,
    Object? telNumber2 = null,
    Object? telNumber3 = null,
    Object? emergencyTelNumber1 = null,
    Object? emergencyTelNumber2 = null,
    Object? emergencyTelNumber3 = null,
    Object? mainMailAddress = null,
    Object? subMailAddress = null,
    Object? rawGender = null,
    Object? birthYear = null,
    Object? birthMonth = null,
    Object? birthDayOfMonth = null,
    Object? isIndividualCustomer = null,
    Object? companyName = null,
    Object? departmentName = null,
    Object? campaign = freezed,
    Object? nanacoNumber = null,
    Object? isLoginMfa = null,
    Object? status = null,
    Object? cmnmmbridhash128 = null,
    Object? isAddressDifference = null,
    Object? isFirstUseRegistered = null,
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
    Object? epochRegistrationDatetime = freezed,
  }) {
    return _then(_value.copyWith(
      firstUseToken: freezed == firstUseToken
          ? _value.firstUseToken
          : firstUseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as CustomerType,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      undeliveredMessageCode: null == undeliveredMessageCode
          ? _value.undeliveredMessageCode
          : undeliveredMessageCode // ignore: cast_nullable_to_non_nullable
              as String,
      epochChangeableAddressDate: freezed == epochChangeableAddressDate
          ? _value.epochChangeableAddressDate
          : epochChangeableAddressDate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryShop: null == deliveryShop
          ? _value.deliveryShop
          : deliveryShop // ignore: cast_nullable_to_non_nullable
              as List<DeliveryShopModel>,
      migrationToCenter: null == migrationToCenter
          ? _value.migrationToCenter
          : migrationToCenter // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      epochMigrationFrom: freezed == epochMigrationFrom
          ? _value.epochMigrationFrom
          : epochMigrationFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      epochMigrationTo: freezed == epochMigrationTo
          ? _value.epochMigrationTo
          : epochMigrationTo // ignore: cast_nullable_to_non_nullable
              as int?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddressModel?,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameKana: null == lastNameKana
          ? _value.lastNameKana
          : lastNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameKana: null == firstNameKana
          ? _value.firstNameKana
          : firstNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber1: null == telNumber1
          ? _value.telNumber1
          : telNumber1 // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber2: null == telNumber2
          ? _value.telNumber2
          : telNumber2 // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber3: null == telNumber3
          ? _value.telNumber3
          : telNumber3 // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyTelNumber1: null == emergencyTelNumber1
          ? _value.emergencyTelNumber1
          : emergencyTelNumber1 // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyTelNumber2: null == emergencyTelNumber2
          ? _value.emergencyTelNumber2
          : emergencyTelNumber2 // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyTelNumber3: null == emergencyTelNumber3
          ? _value.emergencyTelNumber3
          : emergencyTelNumber3 // ignore: cast_nullable_to_non_nullable
              as String,
      mainMailAddress: null == mainMailAddress
          ? _value.mainMailAddress
          : mainMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subMailAddress: null == subMailAddress
          ? _value.subMailAddress
          : subMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      rawGender: null == rawGender
          ? _value.rawGender
          : rawGender // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String,
      birthMonth: null == birthMonth
          ? _value.birthMonth
          : birthMonth // ignore: cast_nullable_to_non_nullable
              as String,
      birthDayOfMonth: null == birthDayOfMonth
          ? _value.birthDayOfMonth
          : birthDayOfMonth // ignore: cast_nullable_to_non_nullable
              as String,
      isIndividualCustomer: null == isIndividualCustomer
          ? _value.isIndividualCustomer
          : isIndividualCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      campaign: freezed == campaign
          ? _value.campaign
          : campaign // ignore: cast_nullable_to_non_nullable
              as CampaignModel?,
      nanacoNumber: null == nanacoNumber
          ? _value.nanacoNumber
          : nanacoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoginMfa: null == isLoginMfa
          ? _value.isLoginMfa
          : isLoginMfa // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CustomerStatus,
      cmnmmbridhash128: null == cmnmmbridhash128
          ? _value.cmnmmbridhash128
          : cmnmmbridhash128 // ignore: cast_nullable_to_non_nullable
              as String,
      isAddressDifference: null == isAddressDifference
          ? _value.isAddressDifference
          : isAddressDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstUseRegistered: null == isFirstUseRegistered
          ? _value.isFirstUseRegistered
          : isFirstUseRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value.canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      epochRegistrationDatetime: freezed == epochRegistrationDatetime
          ? _value.epochRegistrationDatetime
          : epochRegistrationDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressModelCopyWith<$Res>? get deliveryAddress {
    if (_value.deliveryAddress == null) {
      return null;
    }

    return $AddressModelCopyWith<$Res>(_value.deliveryAddress!, (value) {
      return _then(_value.copyWith(deliveryAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerAddressModelCopyWith<$Res>? get customerAddress {
    if (_value.customerAddress == null) {
      return null;
    }

    return $CustomerAddressModelCopyWith<$Res>(_value.customerAddress!,
        (value) {
      return _then(_value.copyWith(customerAddress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CampaignModelCopyWith<$Res>? get campaign {
    if (_value.campaign == null) {
      return null;
    }

    return $CampaignModelCopyWith<$Res>(_value.campaign!, (value) {
      return _then(_value.copyWith(campaign: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LoginCustomerModelCopyWith<$Res>
    implements $LoginCustomerModelCopyWith<$Res> {
  factory _$$_LoginCustomerModelCopyWith(_$_LoginCustomerModel value,
          $Res Function(_$_LoginCustomerModel) then) =
      __$$_LoginCustomerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(ignore: true)
          String? firstUseToken,
      CustomerType customerType,
      AddressModel? deliveryAddress,
      String undeliveredMessageCode,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'changeable_address_date')
          int? epochChangeableAddressDate,
      List<DeliveryShopModel> deliveryShop,
      List<ShopModel> migrationToCenter,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_from')
          int? epochMigrationFrom,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_to')
          int? epochMigrationTo,
      CustomerAddressModel? customerAddress,
      String loginId,
      String lastName,
      String firstName,
      String lastNameKana,
      String firstNameKana,
      String telNumber1,
      String telNumber2,
      String telNumber3,
      String emergencyTelNumber1,
      String emergencyTelNumber2,
      String emergencyTelNumber3,
      String mainMailAddress,
      String subMailAddress,
      @JsonKey(name: 'gender')
          String rawGender,
      String birthYear,
      String birthMonth,
      String birthDayOfMonth,
      bool isIndividualCustomer,
      String companyName,
      String departmentName,
      CampaignModel? campaign,
      String nanacoNumber,
      @StringToBooleanConverter()
          bool isLoginMfa,
      CustomerStatus status,
      @JsonKey(name: 'cmnmmbridhash_128')
          String cmnmmbridhash128,
      bool isAddressDifference,
      bool isFirstUseRegistered,
      bool isCanNotBuyProduct,
      List<String> canNotBuyProductNames,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'registration_datetime')
          int? epochRegistrationDatetime});

  @override
  $AddressModelCopyWith<$Res>? get deliveryAddress;
  @override
  $CustomerAddressModelCopyWith<$Res>? get customerAddress;
  @override
  $CampaignModelCopyWith<$Res>? get campaign;
}

/// @nodoc
class __$$_LoginCustomerModelCopyWithImpl<$Res>
    extends _$LoginCustomerModelCopyWithImpl<$Res, _$_LoginCustomerModel>
    implements _$$_LoginCustomerModelCopyWith<$Res> {
  __$$_LoginCustomerModelCopyWithImpl(
      _$_LoginCustomerModel _value, $Res Function(_$_LoginCustomerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstUseToken = freezed,
    Object? customerType = null,
    Object? deliveryAddress = freezed,
    Object? undeliveredMessageCode = null,
    Object? epochChangeableAddressDate = freezed,
    Object? deliveryShop = null,
    Object? migrationToCenter = null,
    Object? epochMigrationFrom = freezed,
    Object? epochMigrationTo = freezed,
    Object? customerAddress = freezed,
    Object? loginId = null,
    Object? lastName = null,
    Object? firstName = null,
    Object? lastNameKana = null,
    Object? firstNameKana = null,
    Object? telNumber1 = null,
    Object? telNumber2 = null,
    Object? telNumber3 = null,
    Object? emergencyTelNumber1 = null,
    Object? emergencyTelNumber2 = null,
    Object? emergencyTelNumber3 = null,
    Object? mainMailAddress = null,
    Object? subMailAddress = null,
    Object? rawGender = null,
    Object? birthYear = null,
    Object? birthMonth = null,
    Object? birthDayOfMonth = null,
    Object? isIndividualCustomer = null,
    Object? companyName = null,
    Object? departmentName = null,
    Object? campaign = freezed,
    Object? nanacoNumber = null,
    Object? isLoginMfa = null,
    Object? status = null,
    Object? cmnmmbridhash128 = null,
    Object? isAddressDifference = null,
    Object? isFirstUseRegistered = null,
    Object? isCanNotBuyProduct = null,
    Object? canNotBuyProductNames = null,
    Object? epochRegistrationDatetime = freezed,
  }) {
    return _then(_$_LoginCustomerModel(
      firstUseToken: freezed == firstUseToken
          ? _value.firstUseToken
          : firstUseToken // ignore: cast_nullable_to_non_nullable
              as String?,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as CustomerType,
      deliveryAddress: freezed == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as AddressModel?,
      undeliveredMessageCode: null == undeliveredMessageCode
          ? _value.undeliveredMessageCode
          : undeliveredMessageCode // ignore: cast_nullable_to_non_nullable
              as String,
      epochChangeableAddressDate: freezed == epochChangeableAddressDate
          ? _value.epochChangeableAddressDate
          : epochChangeableAddressDate // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryShop: null == deliveryShop
          ? _value._deliveryShop
          : deliveryShop // ignore: cast_nullable_to_non_nullable
              as List<DeliveryShopModel>,
      migrationToCenter: null == migrationToCenter
          ? _value._migrationToCenter
          : migrationToCenter // ignore: cast_nullable_to_non_nullable
              as List<ShopModel>,
      epochMigrationFrom: freezed == epochMigrationFrom
          ? _value.epochMigrationFrom
          : epochMigrationFrom // ignore: cast_nullable_to_non_nullable
              as int?,
      epochMigrationTo: freezed == epochMigrationTo
          ? _value.epochMigrationTo
          : epochMigrationTo // ignore: cast_nullable_to_non_nullable
              as int?,
      customerAddress: freezed == customerAddress
          ? _value.customerAddress
          : customerAddress // ignore: cast_nullable_to_non_nullable
              as CustomerAddressModel?,
      loginId: null == loginId
          ? _value.loginId
          : loginId // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameKana: null == lastNameKana
          ? _value.lastNameKana
          : lastNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      firstNameKana: null == firstNameKana
          ? _value.firstNameKana
          : firstNameKana // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber1: null == telNumber1
          ? _value.telNumber1
          : telNumber1 // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber2: null == telNumber2
          ? _value.telNumber2
          : telNumber2 // ignore: cast_nullable_to_non_nullable
              as String,
      telNumber3: null == telNumber3
          ? _value.telNumber3
          : telNumber3 // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyTelNumber1: null == emergencyTelNumber1
          ? _value.emergencyTelNumber1
          : emergencyTelNumber1 // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyTelNumber2: null == emergencyTelNumber2
          ? _value.emergencyTelNumber2
          : emergencyTelNumber2 // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyTelNumber3: null == emergencyTelNumber3
          ? _value.emergencyTelNumber3
          : emergencyTelNumber3 // ignore: cast_nullable_to_non_nullable
              as String,
      mainMailAddress: null == mainMailAddress
          ? _value.mainMailAddress
          : mainMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      subMailAddress: null == subMailAddress
          ? _value.subMailAddress
          : subMailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      rawGender: null == rawGender
          ? _value.rawGender
          : rawGender // ignore: cast_nullable_to_non_nullable
              as String,
      birthYear: null == birthYear
          ? _value.birthYear
          : birthYear // ignore: cast_nullable_to_non_nullable
              as String,
      birthMonth: null == birthMonth
          ? _value.birthMonth
          : birthMonth // ignore: cast_nullable_to_non_nullable
              as String,
      birthDayOfMonth: null == birthDayOfMonth
          ? _value.birthDayOfMonth
          : birthDayOfMonth // ignore: cast_nullable_to_non_nullable
              as String,
      isIndividualCustomer: null == isIndividualCustomer
          ? _value.isIndividualCustomer
          : isIndividualCustomer // ignore: cast_nullable_to_non_nullable
              as bool,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      campaign: freezed == campaign
          ? _value.campaign
          : campaign // ignore: cast_nullable_to_non_nullable
              as CampaignModel?,
      nanacoNumber: null == nanacoNumber
          ? _value.nanacoNumber
          : nanacoNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoginMfa: null == isLoginMfa
          ? _value.isLoginMfa
          : isLoginMfa // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CustomerStatus,
      cmnmmbridhash128: null == cmnmmbridhash128
          ? _value.cmnmmbridhash128
          : cmnmmbridhash128 // ignore: cast_nullable_to_non_nullable
              as String,
      isAddressDifference: null == isAddressDifference
          ? _value.isAddressDifference
          : isAddressDifference // ignore: cast_nullable_to_non_nullable
              as bool,
      isFirstUseRegistered: null == isFirstUseRegistered
          ? _value.isFirstUseRegistered
          : isFirstUseRegistered // ignore: cast_nullable_to_non_nullable
              as bool,
      isCanNotBuyProduct: null == isCanNotBuyProduct
          ? _value.isCanNotBuyProduct
          : isCanNotBuyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      canNotBuyProductNames: null == canNotBuyProductNames
          ? _value._canNotBuyProductNames
          : canNotBuyProductNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      epochRegistrationDatetime: freezed == epochRegistrationDatetime
          ? _value.epochRegistrationDatetime
          : epochRegistrationDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginCustomerModel extends _LoginCustomerModel with BaseCustomerModel {
  const _$_LoginCustomerModel(
      {@JsonKey(ignore: true)
          this.firstUseToken,
      this.customerType = CustomerType.visitor,
      this.deliveryAddress,
      this.undeliveredMessageCode = '',
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'changeable_address_date')
          this.epochChangeableAddressDate,
      final List<DeliveryShopModel> deliveryShop = const <DeliveryShopModel>[],
      final List<ShopModel> migrationToCenter = const <ShopModel>[],
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_from')
          this.epochMigrationFrom,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_to')
          this.epochMigrationTo,
      this.customerAddress,
      this.loginId = '',
      this.lastName = '',
      this.firstName = '',
      this.lastNameKana = '',
      this.firstNameKana = '',
      this.telNumber1 = '',
      this.telNumber2 = '',
      this.telNumber3 = '',
      this.emergencyTelNumber1 = '',
      this.emergencyTelNumber2 = '',
      this.emergencyTelNumber3 = '',
      this.mainMailAddress = '',
      this.subMailAddress = '',
      @JsonKey(name: 'gender')
          this.rawGender = '',
      this.birthYear = '',
      this.birthMonth = '',
      this.birthDayOfMonth = '',
      this.isIndividualCustomer = true,
      this.companyName = '',
      this.departmentName = '',
      this.campaign,
      this.nanacoNumber = '',
      @StringToBooleanConverter()
          this.isLoginMfa = false,
      this.status = CustomerStatus.regular,
      @JsonKey(name: 'cmnmmbridhash_128')
          this.cmnmmbridhash128 = '',
      this.isAddressDifference = false,
      this.isFirstUseRegistered = true,
      this.isCanNotBuyProduct = false,
      final List<String> canNotBuyProductNames = const <String>[],
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'registration_datetime')
          this.epochRegistrationDatetime})
      : _deliveryShop = deliveryShop,
        _migrationToCenter = migrationToCenter,
        _canNotBuyProductNames = canNotBuyProductNames,
        super._();

  factory _$_LoginCustomerModel.fromJson(Map<String, dynamic> json) =>
      _$$_LoginCustomerModelFromJson(json);

  /// 初回利用登録トークン
  @override
  @JsonKey(ignore: true)
  final String? firstUseToken;
/* 会員種別 ```1:7ID会員 2:本店会員 3:見学会員```*/
  @override
  @JsonKey()
  final CustomerType customerType;
/* お届け先住所モデル */
  @override
  final AddressModel? deliveryAddress;
/* 未配達情報メッセージコード　※別ファイル：メッセージコード_一覧参照 */
  @override
  @JsonKey()
  final String undeliveredMessageCode;
/*
      住所変更可能日時 ※YYYYMMDD
      ```
      undelivered_message_code = "2000005" の場合、退会、または、住所の変更が可能となる日付を返す
      undelivered_message_code = "2000005" 以外の場合、nullとなる
      ```
    */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'changeable_address_date')
  final int? epochChangeableAddressDate;
/* お届け担当店舗モデル */
  final List<DeliveryShopModel> _deliveryShop;
/* お届け担当店舗モデル */
  @override
  @JsonKey()
  List<DeliveryShopModel> get deliveryShop {
    if (_deliveryShop is EqualUnmodifiableListView) return _deliveryShop;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryShop);
  }

/* 移行後お届け担当店舗モデル */
  final List<ShopModel> _migrationToCenter;
/* 移行後お届け担当店舗モデル */
  @override
  @JsonKey()
  List<ShopModel> get migrationToCenter {
    if (_migrationToCenter is EqualUnmodifiableListView)
      return _migrationToCenter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_migrationToCenter);
  }

/* 移行開始日時 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'migration_from')
  final int? epochMigrationFrom;
/* 移行完了日時 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'migration_to')
  final int? epochMigrationTo;
/* 会員住所モデル */
  @override
  final CustomerAddressModel? customerAddress;
/* ログインID */
  @override
  @JsonKey()
  final String loginId;
/* 姓 */
  @override
  @JsonKey()
  final String lastName;
/* 名 */
  @override
  @JsonKey()
  final String firstName;
/* 姓カナ */
  @override
  @JsonKey()
  final String lastNameKana;
/* 名カナ */
  @override
  @JsonKey()
  final String firstNameKana;
/* 電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  @override
  @JsonKey()
  final String telNumber1;
/* 電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  @override
  @JsonKey()
  final String telNumber2;
/* 電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  @override
  @JsonKey()
  final String telNumber3;
/* 携帯電話番号またはお勤め先電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  @override
  @JsonKey()
  final String emergencyTelNumber1;
/* 携帯電話番号またはお勤め先電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  @override
  @JsonKey()
  final String emergencyTelNumber2;
/* 携帯電話番号またはお勤め先電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  @override
  @JsonKey()
  final String emergencyTelNumber3;
/* メインメールアドレス */
  @override
  @JsonKey()
  final String mainMailAddress;
/* サブメールアドレス */
  @override
  @JsonKey()
  final String subMailAddress;
/* 性別 */
  @override
  @JsonKey(name: 'gender')
  final String rawGender;
/* 生年月日（年） */
  @override
  @JsonKey()
  final String birthYear;
/* 生年月日（月） */
  @override
  @JsonKey()
  final String birthMonth;
/* 生年月日（日） */
  @override
  @JsonKey()
  final String birthDayOfMonth;
/* 個人会員フラグ - true：個人会員 - false：企業・団体会員 */
  @override
  @JsonKey()
  final bool isIndividualCustomer;
/* 会社名 - 個人会員フラグ：falseの場合に設定される */
  @override
  @JsonKey()
  final String companyName;
/* 部署名 - 個人会員フラグ：falseの場合に設定される。 */
  @override
  @JsonKey()
  final String departmentName;
/* キャンペーンモデル */
  @override
  final CampaignModel? campaign;
/*
      nanaco番号 ※下4桁のみ返す
        - 本店会員の場合、返す
        - 本店会員でない場合、nullを返却
    */
  @override
  @JsonKey()
  final String nanacoNumber;
/*
      ログイン時SMS/音声通知認証設定フラグ ※7iD会員の場合、OFFを返す
      ```
      "1"：ON
      "0"：OFF
      ```
   */
  @override
  @JsonKey()
  @StringToBooleanConverter()
  final bool isLoginMfa;
/*
      会員ステータス
      ```
      "1"：特別会員
      "2"：保守会員
      null：一般
      ```
    */
  @override
  @JsonKey()
  final CustomerStatus status;
/* 共通会員IDハッシュ 本店会員の場合、null */
  @override
  @JsonKey(name: 'cmnmmbridhash_128')
  final String cmnmmbridhash128;
/*
      お届け先住所相違判定
      ```
      true：お届け先住所相違である
      false：お届け先住所相違でない
      ```
    */
  @override
  @JsonKey()
  final bool isAddressDifference;
/*
      初回利用登録済みフラグ
        - ※本店会員の場合は必ずtrueを返す
        ```
        true：初回利用登録済み
        false：初回利用未登録
        ```
     */
  @override
  @JsonKey()
  final bool isFirstUseRegistered;
/*
      購入不可商品あり判定
        ```
        true：商品あり
        false：商品なし
        ```
     */
  @override
  @JsonKey()
  final bool isCanNotBuyProduct;
/* 購入不可商品名リスト */
  final List<String> _canNotBuyProductNames;
/* 購入不可商品名リスト */
  @override
  @JsonKey()
  List<String> get canNotBuyProductNames {
    if (_canNotBuyProductNames is EqualUnmodifiableListView)
      return _canNotBuyProductNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_canNotBuyProductNames);
  }

/* 会員登録日時 ※YYYY-MM-DDThh:mm:ss+09:00 見学会員の場合、null */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'registration_datetime')
  final int? epochRegistrationDatetime;

  @override
  String toString() {
    return 'LoginCustomerModel(firstUseToken: $firstUseToken, customerType: $customerType, deliveryAddress: $deliveryAddress, undeliveredMessageCode: $undeliveredMessageCode, epochChangeableAddressDate: $epochChangeableAddressDate, deliveryShop: $deliveryShop, migrationToCenter: $migrationToCenter, epochMigrationFrom: $epochMigrationFrom, epochMigrationTo: $epochMigrationTo, customerAddress: $customerAddress, loginId: $loginId, lastName: $lastName, firstName: $firstName, lastNameKana: $lastNameKana, firstNameKana: $firstNameKana, telNumber1: $telNumber1, telNumber2: $telNumber2, telNumber3: $telNumber3, emergencyTelNumber1: $emergencyTelNumber1, emergencyTelNumber2: $emergencyTelNumber2, emergencyTelNumber3: $emergencyTelNumber3, mainMailAddress: $mainMailAddress, subMailAddress: $subMailAddress, rawGender: $rawGender, birthYear: $birthYear, birthMonth: $birthMonth, birthDayOfMonth: $birthDayOfMonth, isIndividualCustomer: $isIndividualCustomer, companyName: $companyName, departmentName: $departmentName, campaign: $campaign, nanacoNumber: $nanacoNumber, isLoginMfa: $isLoginMfa, status: $status, cmnmmbridhash128: $cmnmmbridhash128, isAddressDifference: $isAddressDifference, isFirstUseRegistered: $isFirstUseRegistered, isCanNotBuyProduct: $isCanNotBuyProduct, canNotBuyProductNames: $canNotBuyProductNames, epochRegistrationDatetime: $epochRegistrationDatetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginCustomerModel &&
            (identical(other.firstUseToken, firstUseToken) ||
                other.firstUseToken == firstUseToken) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.deliveryAddress, deliveryAddress) ||
                other.deliveryAddress == deliveryAddress) &&
            (identical(other.undeliveredMessageCode, undeliveredMessageCode) ||
                other.undeliveredMessageCode == undeliveredMessageCode) &&
            (identical(other.epochChangeableAddressDate, epochChangeableAddressDate) ||
                other.epochChangeableAddressDate ==
                    epochChangeableAddressDate) &&
            const DeepCollectionEquality()
                .equals(other._deliveryShop, _deliveryShop) &&
            const DeepCollectionEquality()
                .equals(other._migrationToCenter, _migrationToCenter) &&
            (identical(other.epochMigrationFrom, epochMigrationFrom) ||
                other.epochMigrationFrom == epochMigrationFrom) &&
            (identical(other.epochMigrationTo, epochMigrationTo) ||
                other.epochMigrationTo == epochMigrationTo) &&
            (identical(other.customerAddress, customerAddress) ||
                other.customerAddress == customerAddress) &&
            (identical(other.loginId, loginId) || other.loginId == loginId) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastNameKana, lastNameKana) ||
                other.lastNameKana == lastNameKana) &&
            (identical(other.firstNameKana, firstNameKana) ||
                other.firstNameKana == firstNameKana) &&
            (identical(other.telNumber1, telNumber1) ||
                other.telNumber1 == telNumber1) &&
            (identical(other.telNumber2, telNumber2) ||
                other.telNumber2 == telNumber2) &&
            (identical(other.telNumber3, telNumber3) ||
                other.telNumber3 == telNumber3) &&
            (identical(other.emergencyTelNumber1, emergencyTelNumber1) ||
                other.emergencyTelNumber1 == emergencyTelNumber1) &&
            (identical(other.emergencyTelNumber2, emergencyTelNumber2) ||
                other.emergencyTelNumber2 == emergencyTelNumber2) &&
            (identical(other.emergencyTelNumber3, emergencyTelNumber3) ||
                other.emergencyTelNumber3 == emergencyTelNumber3) &&
            (identical(other.mainMailAddress, mainMailAddress) ||
                other.mainMailAddress == mainMailAddress) &&
            (identical(other.subMailAddress, subMailAddress) ||
                other.subMailAddress == subMailAddress) &&
            (identical(other.rawGender, rawGender) ||
                other.rawGender == rawGender) &&
            (identical(other.birthYear, birthYear) ||
                other.birthYear == birthYear) &&
            (identical(other.birthMonth, birthMonth) ||
                other.birthMonth == birthMonth) &&
            (identical(other.birthDayOfMonth, birthDayOfMonth) ||
                other.birthDayOfMonth == birthDayOfMonth) &&
            (identical(other.isIndividualCustomer, isIndividualCustomer) ||
                other.isIndividualCustomer == isIndividualCustomer) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.departmentName, departmentName) ||
                other.departmentName == departmentName) &&
            (identical(other.campaign, campaign) ||
                other.campaign == campaign) &&
            (identical(other.nanacoNumber, nanacoNumber) ||
                other.nanacoNumber == nanacoNumber) &&
            (identical(other.isLoginMfa, isLoginMfa) ||
                other.isLoginMfa == isLoginMfa) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.cmnmmbridhash128, cmnmmbridhash128) ||
                other.cmnmmbridhash128 == cmnmmbridhash128) &&
            (identical(other.isAddressDifference, isAddressDifference) || other.isAddressDifference == isAddressDifference) &&
            (identical(other.isFirstUseRegistered, isFirstUseRegistered) || other.isFirstUseRegistered == isFirstUseRegistered) &&
            (identical(other.isCanNotBuyProduct, isCanNotBuyProduct) || other.isCanNotBuyProduct == isCanNotBuyProduct) &&
            const DeepCollectionEquality().equals(other._canNotBuyProductNames, _canNotBuyProductNames) &&
            (identical(other.epochRegistrationDatetime, epochRegistrationDatetime) || other.epochRegistrationDatetime == epochRegistrationDatetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        firstUseToken,
        customerType,
        deliveryAddress,
        undeliveredMessageCode,
        epochChangeableAddressDate,
        const DeepCollectionEquality().hash(_deliveryShop),
        const DeepCollectionEquality().hash(_migrationToCenter),
        epochMigrationFrom,
        epochMigrationTo,
        customerAddress,
        loginId,
        lastName,
        firstName,
        lastNameKana,
        firstNameKana,
        telNumber1,
        telNumber2,
        telNumber3,
        emergencyTelNumber1,
        emergencyTelNumber2,
        emergencyTelNumber3,
        mainMailAddress,
        subMailAddress,
        rawGender,
        birthYear,
        birthMonth,
        birthDayOfMonth,
        isIndividualCustomer,
        companyName,
        departmentName,
        campaign,
        nanacoNumber,
        isLoginMfa,
        status,
        cmnmmbridhash128,
        isAddressDifference,
        isFirstUseRegistered,
        isCanNotBuyProduct,
        const DeepCollectionEquality().hash(_canNotBuyProductNames),
        epochRegistrationDatetime
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCustomerModelCopyWith<_$_LoginCustomerModel> get copyWith =>
      __$$_LoginCustomerModelCopyWithImpl<_$_LoginCustomerModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginCustomerModelToJson(
      this,
    );
  }
}

abstract class _LoginCustomerModel extends LoginCustomerModel
    implements BaseCustomerModel {
  const factory _LoginCustomerModel(
      {@JsonKey(ignore: true)
          final String? firstUseToken,
      final CustomerType customerType,
      final AddressModel? deliveryAddress,
      final String undeliveredMessageCode,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'changeable_address_date')
          final int? epochChangeableAddressDate,
      final List<DeliveryShopModel> deliveryShop,
      final List<ShopModel> migrationToCenter,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_from')
          final int? epochMigrationFrom,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'migration_to')
          final int? epochMigrationTo,
      final CustomerAddressModel? customerAddress,
      final String loginId,
      final String lastName,
      final String firstName,
      final String lastNameKana,
      final String firstNameKana,
      final String telNumber1,
      final String telNumber2,
      final String telNumber3,
      final String emergencyTelNumber1,
      final String emergencyTelNumber2,
      final String emergencyTelNumber3,
      final String mainMailAddress,
      final String subMailAddress,
      @JsonKey(name: 'gender')
          final String rawGender,
      final String birthYear,
      final String birthMonth,
      final String birthDayOfMonth,
      final bool isIndividualCustomer,
      final String companyName,
      final String departmentName,
      final CampaignModel? campaign,
      final String nanacoNumber,
      @StringToBooleanConverter()
          final bool isLoginMfa,
      final CustomerStatus status,
      @JsonKey(name: 'cmnmmbridhash_128')
          final String cmnmmbridhash128,
      final bool isAddressDifference,
      final bool isFirstUseRegistered,
      final bool isCanNotBuyProduct,
      final List<String> canNotBuyProductNames,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'registration_datetime')
          final int? epochRegistrationDatetime}) = _$_LoginCustomerModel;
  const _LoginCustomerModel._() : super._();

  factory _LoginCustomerModel.fromJson(Map<String, dynamic> json) =
      _$_LoginCustomerModel.fromJson;

  @override

  /// 初回利用登録トークン
  @JsonKey(ignore: true)
  String? get firstUseToken;
  @override /* 会員種別 ```1:7ID会員 2:本店会員 3:見学会員```*/
  CustomerType get customerType;
  @override /* お届け先住所モデル */
  AddressModel? get deliveryAddress;
  @override /* 未配達情報メッセージコード　※別ファイル：メッセージコード_一覧参照 */
  String get undeliveredMessageCode;
  @override /*
      住所変更可能日時 ※YYYYMMDD
      ```
      undelivered_message_code = "2000005" の場合、退会、または、住所の変更が可能となる日付を返す
      undelivered_message_code = "2000005" 以外の場合、nullとなる
      ```
    */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'changeable_address_date')
  int? get epochChangeableAddressDate;
  @override /* お届け担当店舗モデル */
  List<DeliveryShopModel> get deliveryShop;
  @override /* 移行後お届け担当店舗モデル */
  List<ShopModel> get migrationToCenter;
  @override /* 移行開始日時 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'migration_from')
  int? get epochMigrationFrom;
  @override /* 移行完了日時 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'migration_to')
  int? get epochMigrationTo;
  @override /* 会員住所モデル */
  CustomerAddressModel? get customerAddress;
  @override /* ログインID */
  String get loginId;
  @override /* 姓 */
  String get lastName;
  @override /* 名 */
  String get firstName;
  @override /* 姓カナ */
  String get lastNameKana;
  @override /* 名カナ */
  String get firstNameKana;
  @override /* 電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  String get telNumber1;
  @override /* 電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  String get telNumber2;
  @override /* 電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  String get telNumber3;
  @override /* 携帯電話番号またはお勤め先電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  String get emergencyTelNumber1;
  @override /* 携帯電話番号またはお勤め先電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  String get emergencyTelNumber2;
  @override /* 携帯電話番号またはお勤め先電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  String get emergencyTelNumber3;
  @override /* メインメールアドレス */
  String get mainMailAddress;
  @override /* サブメールアドレス */
  String get subMailAddress;
  @override /* 性別 */
  @JsonKey(name: 'gender')
  String get rawGender;
  @override /* 生年月日（年） */
  String get birthYear;
  @override /* 生年月日（月） */
  String get birthMonth;
  @override /* 生年月日（日） */
  String get birthDayOfMonth;
  @override /* 個人会員フラグ - true：個人会員 - false：企業・団体会員 */
  bool get isIndividualCustomer;
  @override /* 会社名 - 個人会員フラグ：falseの場合に設定される */
  String get companyName;
  @override /* 部署名 - 個人会員フラグ：falseの場合に設定される。 */
  String get departmentName;
  @override /* キャンペーンモデル */
  CampaignModel? get campaign;
  @override /*
      nanaco番号 ※下4桁のみ返す
        - 本店会員の場合、返す
        - 本店会員でない場合、nullを返却
    */
  String get nanacoNumber;
  @override /*
      ログイン時SMS/音声通知認証設定フラグ ※7iD会員の場合、OFFを返す
      ```
      "1"：ON
      "0"：OFF
      ```
   */
  @StringToBooleanConverter()
  bool get isLoginMfa;
  @override /*
      会員ステータス
      ```
      "1"：特別会員
      "2"：保守会員
      null：一般
      ```
    */
  CustomerStatus get status;
  @override /* 共通会員IDハッシュ 本店会員の場合、null */
  @JsonKey(name: 'cmnmmbridhash_128')
  String get cmnmmbridhash128;
  @override /*
      お届け先住所相違判定
      ```
      true：お届け先住所相違である
      false：お届け先住所相違でない
      ```
    */
  bool get isAddressDifference;
  @override /*
      初回利用登録済みフラグ
        - ※本店会員の場合は必ずtrueを返す
        ```
        true：初回利用登録済み
        false：初回利用未登録
        ```
     */
  bool get isFirstUseRegistered;
  @override /*
      購入不可商品あり判定
        ```
        true：商品あり
        false：商品なし
        ```
     */
  bool get isCanNotBuyProduct;
  @override /* 購入不可商品名リスト */
  List<String> get canNotBuyProductNames;
  @override /* 会員登録日時 ※YYYY-MM-DDThh:mm:ss+09:00 見学会員の場合、null */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'registration_datetime')
  int? get epochRegistrationDatetime;
  @override
  @JsonKey(ignore: true)
  _$$_LoginCustomerModelCopyWith<_$_LoginCustomerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
