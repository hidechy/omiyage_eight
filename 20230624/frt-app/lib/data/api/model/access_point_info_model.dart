import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_point_info_model.freezed.dart';

part 'access_point_info_model.g.dart';

@freezed
class AccessPointInfoModel with _$AccessPointInfoModel {
  const AccessPointInfoModel._();

  const factory AccessPointInfoModel({
    /* IYNS WebAPI基本URL */
    @Default('') String iynsApiBaseUrl,
    /* IYNS 基本URL */
    @Default('') String iynsBaseUrl,
    /* 会員基盤認証基本URL */
    @Default('') String iynsAuthBaseUrl,
    /* 会員基盤会員アカウント基本URL */
    @Default('') String iynsAccountBaseUrl,
    /* セブンマイルプログラムURL */
    @Default('') String iynsMileProgramBaseUrl,
  }) = _AccessPointInfoModel;

  factory AccessPointInfoModel.fromJson(Map<String, dynamic> json) => _$AccessPointInfoModelFromJson(json);

  bool get isEmpty =>
      iynsApiBaseUrl.isEmpty ||
      iynsBaseUrl.isEmpty ||
      iynsAuthBaseUrl.isEmpty ||
      iynsAccountBaseUrl.isEmpty ||
      iynsMileProgramBaseUrl.isEmpty;
}
