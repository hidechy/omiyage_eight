// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../util/datetime_json_converter.dart';

part 'regular_shipment_delivery_schedule_model.freezed.dart';
part 'regular_shipment_delivery_schedule_model.g.dart';

@freezed
class RegularShipmentDeliveryScheduleModel with _$RegularShipmentDeliveryScheduleModel {
  const factory RegularShipmentDeliveryScheduleModel({
    /* 配達日　※YYYYMMDD */
    @Default('') String deliveryDate,
    /* 配送開始時間（時分）　※hhmm */
    @Default('') String deliveryStartTime,
    /* 配送終了時間（時分）　※hhmm */
    @Default('') String deliveryFinishTime,
    /* フロントキャンセル可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'front_cancel_closing_datetime')
        int epochFrontCancelClosingDatetime,
    /* 買い足し可能開始日時　 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'additional_order_start_datetime')
        int epochAdditionalOrderStartDatetime,
    /* 注文変更可能締め日時 ※YYYY-MM-DDThh:mm:ss+09:00 */
    @StringToEpochTimeConverter()
    @Default(0)
    @JsonKey(name: 'change_order_closing_datetime')
        int epochChangeOrderClosingDatetime,
    /* フロントキャンセル判定 - フロントにてスキップ／解約された(＝お客様都合)ことを示す。  ``` true：フロントキャンセル済（スキップまたは解約） false：フロントキャンセルされていない ``` */
    @Default(false) bool isFrontCancel,
    /* ショップキャンセル判定 - 店都合にてスキップ／解約されたことを示す。 ``` true：ショップキャンセル済（スキップまたは解約） false：ショップキャンセルされていない ``` */
    @Default(false) bool isShopCancel,
    /* フロントキャンセル可否判定 - 前サイクルがフロントキャンセルされていた場合キャンセルできない  ``` true：フロントキャンセル可 false：フロントキャンセル不可 ``` */
    @Default(false) bool isEnableFrontCancel,
    /* 最遅スケジュール判定  ``` true：一番最後のスケジュール false：一番最後のスケジュールではない ``` */
    @Default(false) bool isLastSchedule,
    /* 受注作成済判定  ``` true：受注作成済 false：受注未作成 ``` */
    @Default(false) bool hasCreatedOrder,
    /* 受注ID - 定期便注文が作成されていない場合、nullを返却 */
    @Default('') String orderId,
    /* オーソリエラー判定 - 定期便注文が作成されていない場合、nullを返却  ``` true：オーソリエラーあり false：オーソリエラーなし ``` */
    @Default(false) bool isAuthoriError,
    /* 買い足し可能期間内判定  ``` true：買い足し可能期間内である false：買い足し可能期間外である ``` */
    @Default(false) bool isEnableAdditionalOrderTerm,
  }) = _RegularShipmentDeliveryScheduleModel;

  factory RegularShipmentDeliveryScheduleModel.fromJson(Map<String, dynamic> json) =>
      _$RegularShipmentDeliveryScheduleModelFromJson(json);
}
