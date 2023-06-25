import 'package:freezed_annotation/freezed_annotation.dart';

part 'reserve_set_sale_model.freezed.dart';

part 'reserve_set_sale_model.g.dart';

@freezed
class ReserveSetSaleModel with _$ReserveSetSaleModel {
  const factory ReserveSetSaleModel({
    /* 予約セット割引コード - 予約セット割引なしの場合、null*/
    @Default('') String setSaleCode,
    /* 予約セット割引名 - 予約セット割引なしの場合、null*/
    @Default('') String reserveSetSaleName,
  }) = _ReserveSetSaleModel;

  factory ReserveSetSaleModel.fromJson(Map<String, dynamic> json) => _$ReserveSetSaleModelFromJson(json);
}
