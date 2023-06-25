import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/boolean_json_converter.dart';

part 'shops_medicine_confirms_model.freezed.dart';
part 'shops_medicine_confirms_model.g.dart';

@freezed
class ShopsMedicineConfirmsModel with _$ShopsMedicineConfirmsModel {
  const factory ShopsMedicineConfirmsModel({
    /* 許可区分名 */
    @Default('') String permissionTypeName,
    /* 開設者名 */
    @Default('') String establisherName,
    /* 開設者住所 */
    @Default('') String establisherAddress,
    /* 開設代表者 */
    @Default('') String establishedRepresentative,
    /* 医薬品許可番号 */
    @Default('') String permissionNumber,
    /* 許可店舗名 */
    @Default('') String permissionShopName,
    /* 許可店舗住所 */
    @Default('') String permissionShopAddress,
    /* 有効期間 */
    @Default('') String validityPeriod,
    /* 許可証氏名 */
    @Default('') String permissionName,
    /* 店舗管理者名 */
    @Default('') String shopAdministratorName,
    /* 薬剤師名 右記の形式で返却 - X名　薬剤師名・薬剤師名・薬剤師名・... */
    @Default('') String pharmacists,
    /* 登録販売者名 右記の形式で返却 - X名　登録販売者名・登録販売者名・登録販売者名・... */
    @Default('') String sellers,
    /* 店頭第一類医薬品扱い販売区分 - 「要指導医薬品と第一類医薬品」の販売の有無  ``` \"1\"：第一類医薬品扱い店舗 上記以外の場合は販売を行っていない ``` */
    @Default('') String medicineSalesType,
    /* 取扱医薬品種類 右記の形式で返却 - 取扱医薬品種類、取扱医薬品種類、取扱医薬品種類、... */
    @Default('') String handledMedicineTypes,
    /* 薬剤師コメント */
    @Default('') String pharmacistComment,
    /* 登録販売者コメント */
    @Default('') String sellerComment,
    /* その他の従業員コメント */
    @Default('') String otherComment,
    /* すべての曜日の医薬品営業時間が同じか判定 - true：同じ - false：異なる */
    @Default(false) bool isEqualsMedicineBusinessTime,
    /* 医薬品営業時間（月曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String mondayBusinessTime,
    /* 医薬品営業時間（火曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String tuesdayBusinessTime,
    /* 医薬品営業時間（水曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String wednesdayBusinessTime,
    /* 医薬品営業時間（木曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String thursdayBusinessTime,
    /* 医薬品営業時間（金曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String fridayBusinessTime,
    /* 医薬品営業時間（土曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String saturdayBusinessTime,
    /* 医薬品営業時間（日曜日）　※hh時mm分　～　hh時mm分 */
    @Default('') String sundayBusinessTime,
    /* 営業時間補足 */
    @Default('') String businessTimeSupplement,
    /* 店舗電話番号 */
    @Default('') String shopTelNumber,
    /* ネットスーパー電話番号 */
    @Default('') String nsTelNumber,
    /* 保険機関窓口 */
    @Default('') String insuranceName,
    /* 保険機関窓口電話番号 */
    @Default('') String insuranceTelNumber,
    /* 医薬品扱い店舗判定 - true：医薬品扱い店舗である - false：医薬品扱い店舗でない */
    @Default(false) bool isDrugShop,
    /* 相談窓口表示フラグ - "1":表示する  - "0":表示しない */
    @Default(false) @StringToBooleanConverter() bool inquiryFlag,
    /* 曜日別在籍一覧 */
    @Default('') String weekdayEnrollmentList,
  }) = _ShopsMedicineConfirmsModel;

  factory ShopsMedicineConfirmsModel.fromJson(Map<String, dynamic> json) => _$ShopsMedicineConfirmsModelFromJson(json);
}
