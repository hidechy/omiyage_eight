// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_shop_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeliveryShopModel _$DeliveryShopModelFromJson(Map<String, dynamic> json) {
  return _DeliveryShopModel.fromJson(json);
}

/// @nodoc
mixin _$DeliveryShopModel {
/* 店舗コード */
  String get shopCode => throw _privateConstructorUsedError; /* 店舗名 */
  String get shopName =>
      throw _privateConstructorUsedError; /* 完全閉店フラグ  ``` true：完全閉店状態 false：完全閉店以外の状態 ``` */
  bool get isCompleteClosed =>
      throw _privateConstructorUsedError; /* 新規オープン前フラグ  ``` true：新規オープン前 false：新規オープン前以外の状態 ``` */
  bool get isBeforeNewOpenDate =>
      throw _privateConstructorUsedError; /* 置き配可能店舗判定  ``` true：置き配可能店舗 false：置き配不可能店舗 ``` */
  bool get canPackageDrop => throw _privateConstructorUsedError; /* 配送拠点コード */
  String get deliveryBaseCode => throw _privateConstructorUsedError; /* 配送拠点名 */
  String get deliveryBaseName =>
      throw _privateConstructorUsedError; /* メールマガジン区分 ``` \"0\"：送信しない \"1\"：メインメールアドレス \"2\"：サブメールアドレス \"3\"：メイン/サブ両方 ``` ※メールマガジン登録状態が存在しない場合、「1」を設定する。 */
  MailMagazineType get mailMagazineType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryShopModelCopyWith<DeliveryShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryShopModelCopyWith<$Res> {
  factory $DeliveryShopModelCopyWith(
          DeliveryShopModel value, $Res Function(DeliveryShopModel) then) =
      _$DeliveryShopModelCopyWithImpl<$Res, DeliveryShopModel>;
  @useResult
  $Res call(
      {String shopCode,
      String shopName,
      bool isCompleteClosed,
      bool isBeforeNewOpenDate,
      bool canPackageDrop,
      String deliveryBaseCode,
      String deliveryBaseName,
      MailMagazineType mailMagazineType});
}

/// @nodoc
class _$DeliveryShopModelCopyWithImpl<$Res, $Val extends DeliveryShopModel>
    implements $DeliveryShopModelCopyWith<$Res> {
  _$DeliveryShopModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? shopName = null,
    Object? isCompleteClosed = null,
    Object? isBeforeNewOpenDate = null,
    Object? canPackageDrop = null,
    Object? deliveryBaseCode = null,
    Object? deliveryBaseName = null,
    Object? mailMagazineType = null,
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
      isCompleteClosed: null == isCompleteClosed
          ? _value.isCompleteClosed
          : isCompleteClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeNewOpenDate: null == isBeforeNewOpenDate
          ? _value.isBeforeNewOpenDate
          : isBeforeNewOpenDate // ignore: cast_nullable_to_non_nullable
              as bool,
      canPackageDrop: null == canPackageDrop
          ? _value.canPackageDrop
          : canPackageDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryBaseCode: null == deliveryBaseCode
          ? _value.deliveryBaseCode
          : deliveryBaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryBaseName: null == deliveryBaseName
          ? _value.deliveryBaseName
          : deliveryBaseName // ignore: cast_nullable_to_non_nullable
              as String,
      mailMagazineType: null == mailMagazineType
          ? _value.mailMagazineType
          : mailMagazineType // ignore: cast_nullable_to_non_nullable
              as MailMagazineType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeliveryShopModelCopyWith<$Res>
    implements $DeliveryShopModelCopyWith<$Res> {
  factory _$$_DeliveryShopModelCopyWith(_$_DeliveryShopModel value,
          $Res Function(_$_DeliveryShopModel) then) =
      __$$_DeliveryShopModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String shopCode,
      String shopName,
      bool isCompleteClosed,
      bool isBeforeNewOpenDate,
      bool canPackageDrop,
      String deliveryBaseCode,
      String deliveryBaseName,
      MailMagazineType mailMagazineType});
}

/// @nodoc
class __$$_DeliveryShopModelCopyWithImpl<$Res>
    extends _$DeliveryShopModelCopyWithImpl<$Res, _$_DeliveryShopModel>
    implements _$$_DeliveryShopModelCopyWith<$Res> {
  __$$_DeliveryShopModelCopyWithImpl(
      _$_DeliveryShopModel _value, $Res Function(_$_DeliveryShopModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shopCode = null,
    Object? shopName = null,
    Object? isCompleteClosed = null,
    Object? isBeforeNewOpenDate = null,
    Object? canPackageDrop = null,
    Object? deliveryBaseCode = null,
    Object? deliveryBaseName = null,
    Object? mailMagazineType = null,
  }) {
    return _then(_$_DeliveryShopModel(
      shopCode: null == shopCode
          ? _value.shopCode
          : shopCode // ignore: cast_nullable_to_non_nullable
              as String,
      shopName: null == shopName
          ? _value.shopName
          : shopName // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleteClosed: null == isCompleteClosed
          ? _value.isCompleteClosed
          : isCompleteClosed // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeNewOpenDate: null == isBeforeNewOpenDate
          ? _value.isBeforeNewOpenDate
          : isBeforeNewOpenDate // ignore: cast_nullable_to_non_nullable
              as bool,
      canPackageDrop: null == canPackageDrop
          ? _value.canPackageDrop
          : canPackageDrop // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryBaseCode: null == deliveryBaseCode
          ? _value.deliveryBaseCode
          : deliveryBaseCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryBaseName: null == deliveryBaseName
          ? _value.deliveryBaseName
          : deliveryBaseName // ignore: cast_nullable_to_non_nullable
              as String,
      mailMagazineType: null == mailMagazineType
          ? _value.mailMagazineType
          : mailMagazineType // ignore: cast_nullable_to_non_nullable
              as MailMagazineType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryShopModel implements _DeliveryShopModel {
  const _$_DeliveryShopModel(
      {this.shopCode = '',
      this.shopName = '',
      this.isCompleteClosed = false,
      this.isBeforeNewOpenDate = false,
      this.canPackageDrop = false,
      this.deliveryBaseCode = '',
      this.deliveryBaseName = '',
      this.mailMagazineType = MailMagazineType.doNotSend});

  factory _$_DeliveryShopModel.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryShopModelFromJson(json);

/* 店舗コード */
  @override
  @JsonKey()
  final String shopCode;
/* 店舗名 */
  @override
  @JsonKey()
  final String shopName;
/* 完全閉店フラグ  ``` true：完全閉店状態 false：完全閉店以外の状態 ``` */
  @override
  @JsonKey()
  final bool isCompleteClosed;
/* 新規オープン前フラグ  ``` true：新規オープン前 false：新規オープン前以外の状態 ``` */
  @override
  @JsonKey()
  final bool isBeforeNewOpenDate;
/* 置き配可能店舗判定  ``` true：置き配可能店舗 false：置き配不可能店舗 ``` */
  @override
  @JsonKey()
  final bool canPackageDrop;
/* 配送拠点コード */
  @override
  @JsonKey()
  final String deliveryBaseCode;
/* 配送拠点名 */
  @override
  @JsonKey()
  final String deliveryBaseName;
/* メールマガジン区分 ``` \"0\"：送信しない \"1\"：メインメールアドレス \"2\"：サブメールアドレス \"3\"：メイン/サブ両方 ``` ※メールマガジン登録状態が存在しない場合、「1」を設定する。 */
  @override
  @JsonKey()
  final MailMagazineType mailMagazineType;

  @override
  String toString() {
    return 'DeliveryShopModel(shopCode: $shopCode, shopName: $shopName, isCompleteClosed: $isCompleteClosed, isBeforeNewOpenDate: $isBeforeNewOpenDate, canPackageDrop: $canPackageDrop, deliveryBaseCode: $deliveryBaseCode, deliveryBaseName: $deliveryBaseName, mailMagazineType: $mailMagazineType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryShopModel &&
            (identical(other.shopCode, shopCode) ||
                other.shopCode == shopCode) &&
            (identical(other.shopName, shopName) ||
                other.shopName == shopName) &&
            (identical(other.isCompleteClosed, isCompleteClosed) ||
                other.isCompleteClosed == isCompleteClosed) &&
            (identical(other.isBeforeNewOpenDate, isBeforeNewOpenDate) ||
                other.isBeforeNewOpenDate == isBeforeNewOpenDate) &&
            (identical(other.canPackageDrop, canPackageDrop) ||
                other.canPackageDrop == canPackageDrop) &&
            (identical(other.deliveryBaseCode, deliveryBaseCode) ||
                other.deliveryBaseCode == deliveryBaseCode) &&
            (identical(other.deliveryBaseName, deliveryBaseName) ||
                other.deliveryBaseName == deliveryBaseName) &&
            (identical(other.mailMagazineType, mailMagazineType) ||
                other.mailMagazineType == mailMagazineType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      shopCode,
      shopName,
      isCompleteClosed,
      isBeforeNewOpenDate,
      canPackageDrop,
      deliveryBaseCode,
      deliveryBaseName,
      mailMagazineType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryShopModelCopyWith<_$_DeliveryShopModel> get copyWith =>
      __$$_DeliveryShopModelCopyWithImpl<_$_DeliveryShopModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryShopModelToJson(
      this,
    );
  }
}

abstract class _DeliveryShopModel implements DeliveryShopModel {
  const factory _DeliveryShopModel(
      {final String shopCode,
      final String shopName,
      final bool isCompleteClosed,
      final bool isBeforeNewOpenDate,
      final bool canPackageDrop,
      final String deliveryBaseCode,
      final String deliveryBaseName,
      final MailMagazineType mailMagazineType}) = _$_DeliveryShopModel;

  factory _DeliveryShopModel.fromJson(Map<String, dynamic> json) =
      _$_DeliveryShopModel.fromJson;

  @override /* 店舗コード */
  String get shopCode;
  @override /* 店舗名 */
  String get shopName;
  @override /* 完全閉店フラグ  ``` true：完全閉店状態 false：完全閉店以外の状態 ``` */
  bool get isCompleteClosed;
  @override /* 新規オープン前フラグ  ``` true：新規オープン前 false：新規オープン前以外の状態 ``` */
  bool get isBeforeNewOpenDate;
  @override /* 置き配可能店舗判定  ``` true：置き配可能店舗 false：置き配不可能店舗 ``` */
  bool get canPackageDrop;
  @override /* 配送拠点コード */
  String get deliveryBaseCode;
  @override /* 配送拠点名 */
  String get deliveryBaseName;
  @override /* メールマガジン区分 ``` \"0\"：送信しない \"1\"：メインメールアドレス \"2\"：サブメールアドレス \"3\"：メイン/サブ両方 ``` ※メールマガジン登録状態が存在しない場合、「1」を設定する。 */
  MailMagazineType get mailMagazineType;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryShopModelCopyWith<_$_DeliveryShopModel> get copyWith =>
      throw _privateConstructorUsedError;
}
