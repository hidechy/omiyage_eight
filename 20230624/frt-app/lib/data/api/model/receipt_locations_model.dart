import 'package:freezed_annotation/freezed_annotation.dart';

part 'receipt_locations_model.freezed.dart';
part 'receipt_locations_model.g.dart';

@freezed
class ReceiptLocationsModel with _$ReceiptLocationsModel {
  const ReceiptLocationsModel._();

  const factory ReceiptLocationsModel({
    /* 店舗コード */
    @Default('') String shopCode,
    /* 受取地点名称 */
    @Default('') String receiptPointName,
    /* 受取地点住所 */
    @Default('') String receiptPointAddress,
    /* 受取地点緯度 */
    @Default(0.0) double receiptPointLatitude,
    /* 受取地点経度 */
    @Default(0.0) double receiptPointLongitude,
    /* 位置ID */
    @Default('') String locationId,
    /* 店舗受取あり判定  ``` true：店舗受取あり false：店舗受取なし ``` */
    @Default(false) bool hasShopReceipt,
    /* ロッカー受取あり判定  ``` true：ロッカー受取あり false：ロッカー受取なし ``` */
    @Default(false) bool hasLockerReceipt,
    /* アイコン種別 ``` \"01\"：イトーヨーカドー \"02\"：7&iロッカー ``` */
    @Default(LocationIconType.iy) LocationIconType iconType,
    /* 配送拠点コード */
    @Default('') String deliveryBaseCode,
  }) = _ReceiptLocationsModel;

  factory ReceiptLocationsModel.fromJson(Map<String, dynamic> json) => _$ReceiptLocationsModelFromJson(json);

  bool get hasReceptionType => hasShopReceipt || hasLockerReceipt;
}

enum LocationIconType {
/* イトーヨーカドー */
  @JsonValue('01')
  iy,
/* 7&iロッカー */
  @JsonValue('02')
  sevenAndILocker,
}
