import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_time_from_to_model.freezed.dart';
part 'market_time_from_to_model.g.dart';

@freezed
class MarketTimeFromToModel with _$MarketTimeFromToModel {
  const factory MarketTimeFromToModel({
    /* 市商品開始時間（hh） */
    @Default('') String from,
/* 市商品終了時間（hh） */
    @Default('') String to,
  }) = _MarketTimeFromToModel;
  factory MarketTimeFromToModel.fromJson(Map<String, dynamic> json) => _$MarketTimeFromToModelFromJson(json);
}
