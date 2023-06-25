// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'important_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImportantNotificationModel _$ImportantNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _ImportantNotificationModel.fromJson(json);
}

/// @nodoc
mixin _$ImportantNotificationModel {
/* １週間以内の配送規制の有無判定 ``` true：配送規制あり false：配送規制なし ※店舗コード未指定の場合は、falseを返却 ``` */
  bool get isDeliveryControlOneWeek =>
      throw _privateConstructorUsedError; /* エリアコード ```※アンダーバー「_」区切りのフォーマット「都道府県コード_市区町村コード_通称コード_丁目コード」``` */
  String get areaCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImportantNotificationModelCopyWith<ImportantNotificationModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImportantNotificationModelCopyWith<$Res> {
  factory $ImportantNotificationModelCopyWith(ImportantNotificationModel value,
          $Res Function(ImportantNotificationModel) then) =
      _$ImportantNotificationModelCopyWithImpl<$Res,
          ImportantNotificationModel>;
  @useResult
  $Res call({bool isDeliveryControlOneWeek, String areaCode});
}

/// @nodoc
class _$ImportantNotificationModelCopyWithImpl<$Res,
        $Val extends ImportantNotificationModel>
    implements $ImportantNotificationModelCopyWith<$Res> {
  _$ImportantNotificationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeliveryControlOneWeek = null,
    Object? areaCode = null,
  }) {
    return _then(_value.copyWith(
      isDeliveryControlOneWeek: null == isDeliveryControlOneWeek
          ? _value.isDeliveryControlOneWeek
          : isDeliveryControlOneWeek // ignore: cast_nullable_to_non_nullable
              as bool,
      areaCode: null == areaCode
          ? _value.areaCode
          : areaCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImportantNotificationModelCopyWith<$Res>
    implements $ImportantNotificationModelCopyWith<$Res> {
  factory _$$_ImportantNotificationModelCopyWith(
          _$_ImportantNotificationModel value,
          $Res Function(_$_ImportantNotificationModel) then) =
      __$$_ImportantNotificationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isDeliveryControlOneWeek, String areaCode});
}

/// @nodoc
class __$$_ImportantNotificationModelCopyWithImpl<$Res>
    extends _$ImportantNotificationModelCopyWithImpl<$Res,
        _$_ImportantNotificationModel>
    implements _$$_ImportantNotificationModelCopyWith<$Res> {
  __$$_ImportantNotificationModelCopyWithImpl(
      _$_ImportantNotificationModel _value,
      $Res Function(_$_ImportantNotificationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeliveryControlOneWeek = null,
    Object? areaCode = null,
  }) {
    return _then(_$_ImportantNotificationModel(
      isDeliveryControlOneWeek: null == isDeliveryControlOneWeek
          ? _value.isDeliveryControlOneWeek
          : isDeliveryControlOneWeek // ignore: cast_nullable_to_non_nullable
              as bool,
      areaCode: null == areaCode
          ? _value.areaCode
          : areaCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImportantNotificationModel
    with DiagnosticableTreeMixin
    implements _ImportantNotificationModel {
  const _$_ImportantNotificationModel(
      {this.isDeliveryControlOneWeek = false, this.areaCode = ''});

  factory _$_ImportantNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ImportantNotificationModelFromJson(json);

/* １週間以内の配送規制の有無判定 ``` true：配送規制あり false：配送規制なし ※店舗コード未指定の場合は、falseを返却 ``` */
  @override
  @JsonKey()
  final bool isDeliveryControlOneWeek;
/* エリアコード ```※アンダーバー「_」区切りのフォーマット「都道府県コード_市区町村コード_通称コード_丁目コード」``` */
  @override
  @JsonKey()
  final String areaCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ImportantNotificationModel(isDeliveryControlOneWeek: $isDeliveryControlOneWeek, areaCode: $areaCode)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ImportantNotificationModel'))
      ..add(DiagnosticsProperty(
          'isDeliveryControlOneWeek', isDeliveryControlOneWeek))
      ..add(DiagnosticsProperty('areaCode', areaCode));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImportantNotificationModel &&
            (identical(
                    other.isDeliveryControlOneWeek, isDeliveryControlOneWeek) ||
                other.isDeliveryControlOneWeek == isDeliveryControlOneWeek) &&
            (identical(other.areaCode, areaCode) ||
                other.areaCode == areaCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDeliveryControlOneWeek, areaCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportantNotificationModelCopyWith<_$_ImportantNotificationModel>
      get copyWith => __$$_ImportantNotificationModelCopyWithImpl<
          _$_ImportantNotificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImportantNotificationModelToJson(
      this,
    );
  }
}

abstract class _ImportantNotificationModel
    implements ImportantNotificationModel {
  const factory _ImportantNotificationModel(
      {final bool isDeliveryControlOneWeek,
      final String areaCode}) = _$_ImportantNotificationModel;

  factory _ImportantNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_ImportantNotificationModel.fromJson;

  @override /* １週間以内の配送規制の有無判定 ``` true：配送規制あり false：配送規制なし ※店舗コード未指定の場合は、falseを返却 ``` */
  bool get isDeliveryControlOneWeek;
  @override /* エリアコード ```※アンダーバー「_」区切りのフォーマット「都道府県コード_市区町村コード_通称コード_丁目コード」``` */
  String get areaCode;
  @override
  @JsonKey(ignore: true)
  _$$_ImportantNotificationModelCopyWith<_$_ImportantNotificationModel>
      get copyWith => throw _privateConstructorUsedError;
}
