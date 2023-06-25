// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/customer_status.dart';
import '../../../enum/customer_type.dart';
import '../../../util/boolean_json_converter.dart';
import '../../../util/datetime_json_converter.dart';
import 'address_model.dart';
import 'base_customer_model.dart';
import 'campaign_model.dart';
import 'customer_address_model.dart';
import 'delivery_shop_model.dart';
import 'shop_model.dart';

part 'customer_model.freezed.dart';
part 'customer_model.g.dart';

@freezed
class CustomerModel with BaseCustomerModel, _$CustomerModel {
  const CustomerModel._();

  @With<BaseCustomerModel>()
  const factory CustomerModel({
    /* 会員種別 ```1:7ID会員 2:本店会員 3:見学会員```*/
    @Default(CustomerType.visitor) CustomerType customerType,
    /* お届け先住所モデル */
    AddressModel? deliveryAddress,
    /* 未配達情報メッセージコード　※別ファイル：メッセージコード_一覧参照 */
    @Default('') String undeliveredMessageCode,
    /*
      住所変更可能日時 ※YYYYMMDD
      ```
      undelivered_message_code = "2000005" の場合、退会、または、住所の変更が可能となる日付を返す
      undelivered_message_code = "2000005" 以外の場合、nullとなる
      ```
    */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'changeable_address_date') int? epochChangeableAddressDate,
    /* 移行前お届け担当店舗モデル */
    @Default(<DeliveryShopModel>[]) List<DeliveryShopModel> deliveryShop,
    /* 移行後お届け担当店舗モデル */
    @Default(<ShopModel>[]) List<ShopModel> migrationToCenter,
    /* 移行対象期間From　※YYYY-MM-DDThh:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'migration_from') int? epochMigrationFrom,
    /* 移行対象期間To　※YYYY-MM-DDThh:mm:ss+09:00 */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'migration_to') int? epochMigrationTo,
    /* 会員住所モデル */
    CustomerAddressModel? customerAddress,
    /* ログインID */
    @Default('') String loginId,
    /* 姓 */
    @Default('') String lastName,
    /* 名 */
    @Default('') String firstName,
    /* 姓カナ */
    @Default('') String lastNameKana,
    /* 名カナ */
    @Default('') String firstNameKana,
    /* 電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
    @Default('') String telNumber1,
    /* 電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
    @Default('') String telNumber2,
    /* 電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
    @Default('') String telNumber3,
    /* 携帯電話番号またはお勤め先電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
    @Default('') String emergencyTelNumber1,
    /* 携帯電話番号またはお勤め先電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
    @Default('') String emergencyTelNumber2,
    /* 携帯電話番号またはお勤め先電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
    @Default('') String emergencyTelNumber3,
    /* メインメールアドレス */
    @Default('') String mainMailAddress,
    /* サブメールアドレス */
    @Default('') String subMailAddress,
    /* 性別 */
    @Default('') @JsonKey(name: 'gender') String rawGender,
    /* 生年月日（年） */
    @Default('') String birthYear,
    /* 生年月日（月） */
    @Default('') String birthMonth,
    /* 生年月日（日） */
    @Default('') String birthDayOfMonth,
    /* 個人会員フラグ - true：個人会員 - false：企業・団体会員 */
    @Default(true) bool isIndividualCustomer,
    /* 会社名 - 個人会員フラグ：falseの場合に設定される */
    @Default('') String companyName,
    /* 部署名 - 個人会員フラグ：falseの場合に設定される。 */
    @Default('') String departmentName,
    /* キャンペーンモデル */
    CampaignModel? campaign,
    /*
      nanaco番号 ※下4桁のみ返す
        - 本店会員の場合、返す
        - 本店会員でない場合、nullを返却
    */
    @Default('') String nanacoNumber,
    /*
      ログイン時SMS/音声通知認証設定フラグ ※7iD会員の場合、OFFを返す
      ```
      "1"：ON
      "0"：OFF
      ```
   */
    @Default(false) @StringToBooleanConverter() bool isLoginMfa,
    /*
      会員ステータス
      ```
      "1"：特別会員
      "2"：保守会員
      null：一般
      ```
    */
    @Default(CustomerStatus.regular) CustomerStatus status,
    /* 共通会員IDハッシュ 本店会員の場合、null */
    @Default('') @JsonKey(name: 'cmnmmbridhash_128') String cmnmmbridhash128,
    /*
      お届け先住所相違判定
      ```
      true：お届け先住所相違である
      false：お届け先住所相違でない
      ```
    */
    @Default(false) bool isAddressDifference,
    /* 会員登録日時 ※YYYY-MM-DDThh:mm:ss+09:00 見学会員の場合、null */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'registration_datetime') int? epochRegistrationDatetime,
  }) = _CustomerModel;
  factory CustomerModel.fromJson(Map<String, dynamic> json) => _$CustomerModelFromJson(json);

  @override
  DateTime? get migrationFrom => const NullableStringToEpochTimeConverter().toDateTime(epochMigrationFrom);
  @override
  DateTime? get migrationTo => const NullableStringToEpochTimeConverter().toDateTime(epochMigrationTo);
  @override
  DateTime? get changeableAddressDate =>
      const NullableStringToEpochTimeConverter().toDateTime(epochChangeableAddressDate);
  @override
  DateTime? get registrationDatetime =>
      const NullableStringToEpochTimeConverter().toDateTime(epochRegistrationDatetime);
}
