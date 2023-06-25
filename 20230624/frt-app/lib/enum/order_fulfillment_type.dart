enum OrderFulfillmentType {
  /* 自宅配送 */
  homeDelivery,
  /* 置き配便 */
  shipment,
  /* 店舗受取便 */
  clickAndCollect,
  /* ロッカー便 */
  pickup,
  /* 定期便 */
  regularShipment,
  /* 予約便 */
  reserve,
}

extension OrderFulfillmentTypeExt on OrderFulfillmentType {
  String get value {
    switch (this) {
      case OrderFulfillmentType.homeDelivery:
        return 'home_delivery';
      case OrderFulfillmentType.shipment:
        return 'shipment';
      case OrderFulfillmentType.clickAndCollect:
        return 'click_and_collect';
      case OrderFulfillmentType.pickup:
        return 'pickup';
      case OrderFulfillmentType.regularShipment:
        return 'regular_shipment';
      case OrderFulfillmentType.reserve:
        return 'reserve';
    }
  }
}
