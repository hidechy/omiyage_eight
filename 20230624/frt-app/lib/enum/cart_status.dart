import 'package:freezed_annotation/freezed_annotation.dart';

enum CartStatus {
  /// "1"：見学自宅受け取り
  @JsonValue('1')
  visitorHomeDelivery,

  /// "2"：みなし自宅受け取り
  @JsonValue('2')
  deemedHomeDelivery,

  /// "3"：通常自宅受け取り
  @JsonValue('3')
  normalHomeDelivery,

  /// "4"：通常自宅受け取り注文変更中
  @JsonValue('4')
  normalHomeDeliveryOrderChanging,

  /// "5"：通常店舗・ロッカー受け取り
  @JsonValue('5')
  normalPickupStoreLocker,

  /// "6"：通常店舗・ロッカー受け取り注文変更中
  @JsonValue('6')
  normalPickupStoreLockerOrderChanging,

  /// "7"：予約自宅受け取り買い足し中
  @JsonValue('7')
  reserveHomeDeliveryOrderAdding,

  /// "8"：予約店舗・ロッカー受け取り買い足し中
  @JsonValue('8')
  reservePickupStoreLockerOrderAdding,

  /// "9"：定期便子買い足し
  @JsonValue('9')
  regularOrderAdding,

  /// "10"：予約自宅受け取り新規注文
  @JsonValue('10')
  reserveHomeDelivery,

  /// "11"：予約自宅受け取り注文変更中
  @JsonValue('11')
  reserveHomeDeliveryOrderChanging,

  /// "12"：予約店舗・ロッカー受け取り
  @JsonValue('12')
  reservePickupStoreLocker,

  /// "13"：予約店舗・ロッカー受け取り注文変更中
  @JsonValue('13')
  reservePickupStoreLockerOrderChanging,

  /// "14"：定期便親通常
  @JsonValue('14')
  regularHomeDelivery,

  /// "15"：定期便親注文変更
  @JsonValue('15')
  regularHomeDeliveryOrderChanging,
}

extension CartStatusExt on CartStatus {
  /// 買い足しが通常便としてレスポンスされるため、予約、定期を除外する為の判定
  bool get isNormalCart =>
      CartStatus.visitorHomeDelivery == this ||
      CartStatus.deemedHomeDelivery == this ||
      CartStatus.normalHomeDelivery == this ||
      CartStatus.normalHomeDeliveryOrderChanging == this ||
      CartStatus.normalPickupStoreLocker == this ||
      CartStatus.normalPickupStoreLockerOrderChanging == this;

  bool get isNormalCartOrderChanging =>
      CartStatus.normalHomeDeliveryOrderChanging == this || CartStatus.normalPickupStoreLockerOrderChanging == this;
}
