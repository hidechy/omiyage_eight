import 'package:freezed_annotation/freezed_annotation.dart';

enum DeliveryFeeType {
  /* 通常配達料 */
  @JsonValue('0')
  normalDeliveryFee,
  /* 個別配達料 */
  @JsonValue('1')
  indvidualDeliveryFee,
  /* 固定配達料 */
  @JsonValue('2')
  fixedDeliveryFee,
  /* エリア配送料 */
  @JsonValue('3')
  areaShippingFee,
  /* 便別配送料 */
  @JsonValue('4')
  shippingFeeByService,
  /* キャンペーン配送料 */
  @JsonValue('5')
  campaignShippingFee,
  /* 複数注文配送料 */
  @JsonValue('6')
  multiOrderShippingFee,
  /* 定期便配送料 */
  @JsonValue('7')
  regularShipment,
  @JsonValue('')
  none,
}
