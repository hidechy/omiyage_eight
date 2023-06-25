// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) {
  return _MessageModel.fromJson(json);
}

/// @nodoc
mixin _$MessageModel {
/*お知らせの主キー */
  String get messageId =>
      throw _privateConstructorUsedError; /*
    お知らせ種別
      "important"：重要
      "news"：NEWS
      "shop"：店舗からのお知らせ
      "urgent"：緊急告知
    */
  NotificationType get messageDiv =>
      throw _privateConstructorUsedError; /*タイトル タイトルが設定されていない場合、nullを返却*/
  String get title =>
      throw _privateConstructorUsedError; /*お知らせ詳細 お知らせ詳細が設定されていない場合、nullを返却*/
  String get text =>
      throw _privateConstructorUsedError; /*表示開始日付  ※YYYY-MM-DDThh:mm:ss+09:00 表示開始日付が設定されていない場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'display_start_date')
  int? get epochDisplayStartDate => throw _privateConstructorUsedError;
  int get sortNum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageModelCopyWith<MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelCopyWith<$Res> {
  factory $MessageModelCopyWith(
          MessageModel value, $Res Function(MessageModel) then) =
      _$MessageModelCopyWithImpl<$Res, MessageModel>;
  @useResult
  $Res call(
      {String messageId,
      NotificationType messageDiv,
      String title,
      String text,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'display_start_date')
          int? epochDisplayStartDate,
      int sortNum});
}

/// @nodoc
class _$MessageModelCopyWithImpl<$Res, $Val extends MessageModel>
    implements $MessageModelCopyWith<$Res> {
  _$MessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? messageDiv = null,
    Object? title = null,
    Object? text = null,
    Object? epochDisplayStartDate = freezed,
    Object? sortNum = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      messageDiv: null == messageDiv
          ? _value.messageDiv
          : messageDiv // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      epochDisplayStartDate: freezed == epochDisplayStartDate
          ? _value.epochDisplayStartDate
          : epochDisplayStartDate // ignore: cast_nullable_to_non_nullable
              as int?,
      sortNum: null == sortNum
          ? _value.sortNum
          : sortNum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageModelCopyWith<$Res>
    implements $MessageModelCopyWith<$Res> {
  factory _$$_MessageModelCopyWith(
          _$_MessageModel value, $Res Function(_$_MessageModel) then) =
      __$$_MessageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String messageId,
      NotificationType messageDiv,
      String title,
      String text,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'display_start_date')
          int? epochDisplayStartDate,
      int sortNum});
}

/// @nodoc
class __$$_MessageModelCopyWithImpl<$Res>
    extends _$MessageModelCopyWithImpl<$Res, _$_MessageModel>
    implements _$$_MessageModelCopyWith<$Res> {
  __$$_MessageModelCopyWithImpl(
      _$_MessageModel _value, $Res Function(_$_MessageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? messageDiv = null,
    Object? title = null,
    Object? text = null,
    Object? epochDisplayStartDate = freezed,
    Object? sortNum = null,
  }) {
    return _then(_$_MessageModel(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      messageDiv: null == messageDiv
          ? _value.messageDiv
          : messageDiv // ignore: cast_nullable_to_non_nullable
              as NotificationType,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      epochDisplayStartDate: freezed == epochDisplayStartDate
          ? _value.epochDisplayStartDate
          : epochDisplayStartDate // ignore: cast_nullable_to_non_nullable
              as int?,
      sortNum: null == sortNum
          ? _value.sortNum
          : sortNum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageModel extends _MessageModel with DiagnosticableTreeMixin {
  const _$_MessageModel(
      {this.messageId = '',
      this.messageDiv = NotificationType.urgent,
      this.title = '',
      this.text = '',
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'display_start_date')
          this.epochDisplayStartDate,
      this.sortNum = 0})
      : super._();

  factory _$_MessageModel.fromJson(Map<String, dynamic> json) =>
      _$$_MessageModelFromJson(json);

/*お知らせの主キー */
  @override
  @JsonKey()
  final String messageId;
/*
    お知らせ種別
      "important"：重要
      "news"：NEWS
      "shop"：店舗からのお知らせ
      "urgent"：緊急告知
    */
  @override
  @JsonKey()
  final NotificationType messageDiv;
/*タイトル タイトルが設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final String title;
/*お知らせ詳細 お知らせ詳細が設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final String text;
/*表示開始日付  ※YYYY-MM-DDThh:mm:ss+09:00 表示開始日付が設定されていない場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'display_start_date')
  final int? epochDisplayStartDate;
  @override
  @JsonKey()
  final int sortNum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MessageModel(messageId: $messageId, messageDiv: $messageDiv, title: $title, text: $text, epochDisplayStartDate: $epochDisplayStartDate, sortNum: $sortNum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MessageModel'))
      ..add(DiagnosticsProperty('messageId', messageId))
      ..add(DiagnosticsProperty('messageDiv', messageDiv))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('epochDisplayStartDate', epochDisplayStartDate))
      ..add(DiagnosticsProperty('sortNum', sortNum));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageModel &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.messageDiv, messageDiv) ||
                other.messageDiv == messageDiv) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.epochDisplayStartDate, epochDisplayStartDate) ||
                other.epochDisplayStartDate == epochDisplayStartDate) &&
            (identical(other.sortNum, sortNum) || other.sortNum == sortNum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, messageId, messageDiv, title,
      text, epochDisplayStartDate, sortNum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      __$$_MessageModelCopyWithImpl<_$_MessageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageModelToJson(
      this,
    );
  }
}

abstract class _MessageModel extends MessageModel {
  const factory _MessageModel(
      {final String messageId,
      final NotificationType messageDiv,
      final String title,
      final String text,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'display_start_date')
          final int? epochDisplayStartDate,
      final int sortNum}) = _$_MessageModel;
  const _MessageModel._() : super._();

  factory _MessageModel.fromJson(Map<String, dynamic> json) =
      _$_MessageModel.fromJson;

  @override /*お知らせの主キー */
  String get messageId;
  @override /*
    お知らせ種別
      "important"：重要
      "news"：NEWS
      "shop"：店舗からのお知らせ
      "urgent"：緊急告知
    */
  NotificationType get messageDiv;
  @override /*タイトル タイトルが設定されていない場合、nullを返却*/
  String get title;
  @override /*お知らせ詳細 お知らせ詳細が設定されていない場合、nullを返却*/
  String get text;
  @override /*表示開始日付  ※YYYY-MM-DDThh:mm:ss+09:00 表示開始日付が設定されていない場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'display_start_date')
  int? get epochDisplayStartDate;
  @override
  int get sortNum;
  @override
  @JsonKey(ignore: true)
  _$$_MessageModelCopyWith<_$_MessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
