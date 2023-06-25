import 'package:freezed_annotation/freezed_annotation.dart';

part 'visitor_info_model.freezed.dart';

@freezed
class VisitorInfoModel with _$VisitorInfoModel {
  const factory VisitorInfoModel({
    @Default('') String shopCode,
    String? postalNumber,
  }) = _VisitorInfoModel;
}
