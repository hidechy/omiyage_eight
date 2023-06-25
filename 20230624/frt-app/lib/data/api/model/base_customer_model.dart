import '../../../enum/customer_status.dart';
import '../../../enum/customer_type.dart';
import '../../../enum/gender_type.dart';
import 'address_model.dart';
import 'campaign_model.dart';
import 'customer_address_model.dart';
import 'delivery_shop_model.dart';
import 'shop_model.dart';

mixin BaseCustomerModel {
  /* 会員種別 ```1:7ID会員 2:本店会員 3:見学会員```*/
  CustomerType get customerType;
  /* お届け先住所モデル */
  AddressModel? get deliveryAddress;
  /* 未配達情報メッセージコード　※別ファイル：メッセージコード_一覧参照 */
  String get undeliveredMessageCode;
  /*
    住所変更可能日時 ※YYYYMMDD
    ```
    undelivered_message_code = "2000005" の場合、退会、または、住所の変更が可能となる日付を返す
    undelivered_message_code = "2000005" 以外の場合、nullとなる
    ```
  */
  DateTime? get changeableAddressDate;
  /* 移行前お届け担当店舗モデル */
  List<DeliveryShopModel> get deliveryShop;
  /* 移行後お届け担当店舗モデル */
  List<ShopModel> get migrationToCenter;
  /* 移行開始日時 */
  DateTime? get migrationFrom;
  /* 移行完了日時 */
  DateTime? get migrationTo;
  /* 会員住所モデル */
  CustomerAddressModel? get customerAddress;
  /* ログインID */
  String get loginId;
  /* 姓 */
  String get lastName;
  /* 名 */
  String get firstName;
  /* 姓カナ */
  String get lastNameKana;
  /* 名カナ */
  String get firstNameKana;
  /* 電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  String get telNumber1;
  /* 電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  String get telNumber2;
  /* 電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  String get telNumber3;
  /* 携帯電話番号またはお勤め先電話番号1 - XXXX-XXXX-XXXXにおける1番目のXXXX */
  String get emergencyTelNumber1;
  /* 携帯電話番号またはお勤め先電話番号2 - XXXX-XXXX-XXXXにおける2番目のXXXX */
  String get emergencyTelNumber2;
  /* 携帯電話番号またはお勤め先電話番号3 - XXXX-XXXX-XXXXにおける3番目のXXXX */
  String get emergencyTelNumber3;
  /* メインメールアドレス */
  String get mainMailAddress;
  /* サブメールアドレス */
  String get subMailAddress;
  /* 生年月日（年） */
  String get birthYear;
  /* 生年月日（月） */
  String get birthMonth;
  /* 生年月日（日） */
  String get birthDayOfMonth;
  /* 個人会員フラグ - true：個人会員 - false：企業・団体会員 */
  bool get isIndividualCustomer;
  /* 会社名 - 個人会員フラグ：falseの場合に設定される */
  String get companyName;
  /* 部署名 - 個人会員フラグ：falseの場合に設定される。 */
  String get departmentName;
  /* キャンペーンモデル */
  CampaignModel? get campaign;
  /*
  nanaco番号 ※下4桁のみ返す
    - 本店会員の場合、返す
    - 本店会員でない場合、nullを返却
  */
  String get nanacoNumber;
  /*
  ログイン時SMS/音声通知認証設定フラグ ※7iD会員の場合、OFFを返す
    ```
    "1"：ON
    "0"：OFF
    ```
   */
  bool get isLoginMfa;
  /*
  会員ステータス
    ```
    "1"：特別会員
    "2"：保守会員
    null：一般
    ```
  */
  CustomerStatus get status;
  /* 共通会員IDハッシュ 本店会員の場合、null */
  String get cmnmmbridhash128;
  /*
  お届け先住所相違判定
    ```
    true：お届け先住所相違である
    false：お届け先住所相違でない
    ```
  */
  bool get isAddressDifference;

  /* 性別 */
  String get rawGender;

  /* 会員登録日時 ※YYYY-MM-DDThh:mm:ss+09:00 見学会員の場合、null */
  DateTime? get registrationDatetime;

  String? get continueDay {
    if (registrationDatetime == null) {
      return null;
    }
    return (DateTime.now().difference(registrationDatetime!).inDays + 1).toString();
  }

  String get age {
    final year = int.tryParse(birthYear);
    final month = int.tryParse(birthMonth);
    final day = int.tryParse(birthDayOfMonth);

    if (year == null || month == null || day == null) {
      return '';
    }

    final birthDay = DateTime(year, month, day);
    final toDay = DateTime.now();
    final thisYearBirthDay = DateTime(toDay.year, birthDay.month, birthDay.day);
    var age = toDay.year - birthDay.year;
    if (thisYearBirthDay.isAfter(toDay)) {
      age = age - 1;
    }
    return age.toString();
  }

  Gender get gender {
    switch (rawGender) {
      case '男性':
      case '1':
        return Gender.male;
      case '女性':
      case '2':
        return Gender.female;
      default:
        return Gender.unknown;
    }
  }
}
