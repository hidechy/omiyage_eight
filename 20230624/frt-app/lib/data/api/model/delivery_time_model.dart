import 'package:freezed_annotation/freezed_annotation.dart';

import 'delivery_date_model.dart';

part 'delivery_time_model.freezed.dart';
part 'delivery_time_model.g.dart';

/// 店舗配達情報-配送時間帯モデル
@freezed
class DeliveryTimeModel with _$DeliveryTimeModel {
  const factory DeliveryTimeModel({
    /* 配達日モデルリスト */
    @Default(<DeliveryDateModel>[]) List<DeliveryDateModel> deliveryDates,
    /* 配送終了時間（時）　※HH */
    @Default('') String deliveryFinishHour,
    /* 配送終了時間（分）　※mm */
    @Default('') String deliveryFinishMinute,
    /* 配送開始時間（時）　※HH */
    @Default('') String deliveryStartHour,
    /* 配送開始時間（分）　※mm */
    @Default('') String deliveryStartMinute,
    /* 配送便種別：受取りボックス-判定 - true：配送便種別が受取りボックスである - false：配送便種別が受取りボックスでない */
    @Default(false) bool isFulfillmentTypeLocker,
    /* 配送便種別：置き配-判定 - true：配送便種別が置き配便である - false：配送便種別が置き配便でない */
    @Default(false) bool isFulfillmentTypePackageDrop,
    /* 配送便種別：店受-判定 - true：配送便種別が店舗受取である - false：配送便種別が店舗受取でない */
    @Default(false) bool isFulfillmentTypeShop,
    /* 受取先追加文言 */
    @Default('') String receiptLocationAdditionalText,
    /* 受取先静的コンテンツURL */
    @Default('') String receiptLocationContentsUrl,
    /* 非接触お届けサービス利用可能判定 */
    @Default(false) bool isEnableNoContact,
  }) = _DeliveryTimeModel;

  factory DeliveryTimeModel.fromJson(Map<String, dynamic> json) => _$DeliveryTimeModelFromJson(json);
}
