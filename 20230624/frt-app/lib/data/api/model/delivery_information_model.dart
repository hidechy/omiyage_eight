import 'package:freezed_annotation/freezed_annotation.dart';

import 'delivery_time_model.dart';

part 'delivery_information_model.freezed.dart';
part 'delivery_information_model.g.dart';

/// 受取便情報
@freezed
class DeliveryInformationModel with _$DeliveryInformationModel {
  const factory DeliveryInformationModel({
    /* 店舗配達情報-配送時間帯モデルのリスト */
    @Default(<DeliveryTimeModel>[]) List<DeliveryTimeModel> deliveryTimes,
    /* 自宅外受取判定 - true：自宅外受取である - false：自宅外受取でない */
    @Default(false) bool isPointReceipt,
    /* 受取地点ID */
    @Default('') String receiptPointId,
    /* 受取地点名称 */
    @Default('') String receiptPointName,
    /* 梱包手数料-徴収対象会員・梱包まとめ方法未選択の判定 - true：梱包手数料徴収対象会員かつ梱包まとめ方法未選択である - false：梱包手数料徴収対象会員でないまたは梱包まとめ方法未選択でない */
    @Default(false) bool isNotSelectedPackMethod,
    /* 店舗受取便あり判定 - true：店舗受取便あり - false：店舗受取便なし */
    @Default(false) bool hasShopReceipt,
    /* 店舗受取場所URL */
    @Default('') String shopReceiptPlaceUrl,
    /* ロッカー受取便あり判定 - true：ロッカー受取便あり - false：ロッカー受取便なし */
    @Default(false) bool hasLockerReceipt,
    /* ロッカー受取場所URL */
    @Default('') String lockerReceiptPlaceUrl,
  }) = _DeliveryInformationModel;

  factory DeliveryInformationModel.fromJson(Map<String, dynamic> json) => _$DeliveryInformationModelFromJson(json);
}
