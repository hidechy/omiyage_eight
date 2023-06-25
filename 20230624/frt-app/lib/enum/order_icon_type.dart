enum OrderIconType {
  /* 通常便 */
  normalDelivery,
  /* 注文キャンセル */
  cancel
}

extension OrderIconTypeExt on OrderIconType {
  static final _names = {
    OrderIconType.normalDelivery: '通常便',
    OrderIconType.cancel: 'キャンセル',
  };

  String get name => _names[this]!;
}
