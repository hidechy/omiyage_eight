enum DeliverySchedulesFulfillmentType {
  homeDelivery,
  clickAndCollect,
}

extension DeliverySchedulesFulfillmentTypeExt on DeliverySchedulesFulfillmentType {
  String get parameter {
    switch (this) {
      case DeliverySchedulesFulfillmentType.homeDelivery:
        return 'home_delivery/shipment';
      case DeliverySchedulesFulfillmentType.clickAndCollect:
        return 'click_and_collect/pickup';
    }
  }

  String get name {
    switch (this) {
      case DeliverySchedulesFulfillmentType.homeDelivery:
        return '自宅';
      case DeliverySchedulesFulfillmentType.clickAndCollect:
        return '店舗・ロッカー';
    }
  }
}
