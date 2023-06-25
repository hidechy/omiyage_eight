// ignore_for_file: invalid_annotation_target

import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/notification_type.dart';
import '../../../util/datetime_json_converter.dart';

part 'message_model.freezed.dart';
part 'message_model.g.dart';

@freezed
class MessageModel with _$MessageModel {
  const MessageModel._();

  const factory MessageModel({
    /*お知らせの主キー */
    @Default('') String messageId,
    /*
    お知らせ種別
      "important"：重要
      "news"：NEWS
      "shop"：店舗からのお知らせ
      "urgent"：緊急告知
    */
    @Default(NotificationType.urgent) NotificationType messageDiv,
    /*タイトル タイトルが設定されていない場合、nullを返却*/
    @Default('') String title,
    /*お知らせ詳細 お知らせ詳細が設定されていない場合、nullを返却*/
    @Default('') String text,
    /*表示開始日付  ※YYYY-MM-DDThh:mm:ss+09:00 表示開始日付が設定されていない場合、nullを返却 */
    @NullableStringToEpochTimeConverter() @JsonKey(name: 'display_start_date') int? epochDisplayStartDate,
    @Default(0) int sortNum,
  }) = _MessageModel;

  factory MessageModel.fromJson(Map<String, dynamic> json) => _$MessageModelFromJson(json);

  DateTime? get displayStartDate => const NullableStringToEpochTimeConverter().toDateTime(epochDisplayStartDate);
}
