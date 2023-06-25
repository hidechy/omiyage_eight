// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notices_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticesModel _$NoticesModelFromJson(Map<String, dynamic> json) {
  return _NoticesModel.fromJson(json);
}

/// @nodoc
mixin _$NoticesModel {
/* 店舗コード - リクエスト時、店舗コードが未指定の場合、nullを返却 */
  String get shopCode =>
      throw _privateConstructorUsedError; /* 店舗名 - リクエスト時、店舗コードが未指定の場合、nullを返却 */
  String get shopName => throw _privateConstructorUsedError; /* お知らせ */
  List<MessageModel> get messages =>
      throw _privateConstructorUsedError; /* 重要なお知らせ */
  ImportantNotificationModel? get importantNotification =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticesModelCopyWith<NoticesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticesModelCopyWith<$Res> {
  factory $NoticesModelCopyWith(
          NoticesModel value, $Res Function(NoticesModel) then) =
      _$NoticesModelCopyWithImpl<$Res, NoticesModel>;
  @useResult
  $Res call(
      {String shopCode,
      String shopName,
      List<MessageModel> messages,
      ImportantNotificationModel? importantNotification});

  $ImportantNotificationModelCopyWith<$Res>? get importantNotification;
}

/// @nodoc
class _$NoticesModelCopyWithImpl<$Res, $Val extends NoticesModel>
    implements $NoticesModelCopyWith<$Res> {
  _$NoticesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? shopName = null,
    Object? messages = null,
    Object? importantNotification = freezed,
  }) {
    return _then(_value.copyWith(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      importantNotification: freezed == importantNotification
          ? _value.importantNotification
          : importantNotification // ignore: cast_nullable_to_non_nullable
              as ImportantNotificationModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImportantNotificationModelCopyWith<$Res>? get importantNotification {
    if (_value.importantNotification == null) {
      return null;
    }

    return $ImportantNotificationModelCopyWith<$Res>(
        _value.importantNotification!, (value) {
      return _then(_value.copyWith(importantNotification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NoticesModelCopyWith<$Res>
    implements $NoticesModelCopyWith<$Res> {
  factory _$$_NoticesModelCopyWith(
          _$_NoticesModel value, $Res Function(_$_NoticesModel) then) =
      __$$_NoticesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopCode,
      String shopName,
      List<MessageModel> messages,
      ImportantNotificationModel? importantNotification});

  @override
  $ImportantNotificationModelCopyWith<$Res>? get importantNotification;
}

/// @nodoc
class __$$_NoticesModelCopyWithImpl<$Res>
    extends _$NoticesModelCopyWithImpl<$Res, _$_NoticesModel>
    implements _$$_NoticesModelCopyWith<$Res> {
  __$$_NoticesModelCopyWithImpl(
      _$_NoticesModel _value, $Res Function(_$_NoticesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? shopName = null,
    Object? messages = null,
    Object? importantNotification = freezed,
  }) {
    return _then(_$_NoticesModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      importantNotification: freezed == importantNotification
          ? _value.importantNotification
          : importantNotification // ignore: cast_nullable_to_non_nullable
              as ImportantNotificationModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticesModel implements _NoticesModel {
  const _$_NoticesModel(
      {this.shopCode = '',
      this.shopName = '',
      final List<MessageModel> messages = const <MessageModel>[],
      this.importantNotification})
      : _messages = messages;

  factory _$_NoticesModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticesModelFromJson(json);

/* 店舗コード - リクエスト時、店舗コードが未指定の場合、nullを返却 */
  @override
  @JsonKey()
  final String shopCode;
/* 店舗名 - リクエスト時、店舗コードが未指定の場合、nullを返却 */
  @override
  @JsonKey()
  final String shopName;
/* お知らせ */
  final List<MessageModel> _messages;
/* お知らせ */
  @override
  @JsonKey()
  List<MessageModel> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

/* 重要なお知らせ */
  @override
  final ImportantNotificationModel? importantNotification;

  @override
  String toString() {
    return 'NoticesModel(shopCode: $shopCode, shopName: $shopName, messages: $messages, importantNotification: $importantNotification)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoticesModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.importantNotification, importantNotification) ||
                other.importantNotification == importantNotification));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, shopCode, shopName,
      const DeepCollectionEquality().hash(_messages), importantNotification);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoticesModelCopyWith<_$_NoticesModel> get copyWith =>
      __$$_NoticesModelCopyWithImpl<_$_NoticesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticesModelToJson(
      this,
    );
  }
}

abstract class _NoticesModel implements NoticesModel {
  const factory _NoticesModel(
          {final String shopCode,
          final String shopName,
          final List<MessageModel> messages,
          final ImportantNotificationModel? importantNotification}) =
      _$_NoticesModel;

  factory _NoticesModel.fromJson(Map<String, dynamic> json) =
      _$_NoticesModel.fromJson;

  @override /* 店舗コード - リクエスト時、店舗コードが未指定の場合、nullを返却 */
  String get shopCode;
  @override /* 店舗名 - リクエスト時、店舗コードが未指定の場合、nullを返却 */
  String get shopName;
  @override /* お知らせ */
  List<MessageModel> get messages;
  @override /* 重要なお知らせ */
  ImportantNotificationModel? get importantNotification;
  @override
  @JsonKey(ignore: true)
  _$$_NoticesModelCopyWith<_$_NoticesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
