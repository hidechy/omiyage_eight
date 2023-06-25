import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_model.freezed.dart';
part 'update_model.g.dart';

@freezed
class UpdateModel with _$UpdateModel {
  const factory UpdateModel({
    /* OS - Android or iOS 両OSが対象の場合、空文字列 */
    required String os,
    /* OSバージョン - 全バージョンが対象の場合、空文字列 */
    required String osVersion,
    /* 対象のアプリバージョン - 全バージョンが対象の場合、空文字列 */
    required String appVersion,
    /* モーダルに表示するタイトル */
    @Default('') String title,
    /* モーダルに表示する本文 */
    @Default('') String message,
  }) = _UpdateModel;
  factory UpdateModel.fromJson(Map<String, dynamic> json) => _$UpdateModelFromJson(json);
}
