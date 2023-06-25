// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaign_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CampaignModel _$CampaignModelFromJson(Map<String, dynamic> json) {
  return _CampaignModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignModel {
/* キャンペーン区分 ``` \"1\"：キャンペーン配達料の適用 \"2\"：キャンペーン配達料割引率の適用 ``` */
  PriceType get priceType => throw _privateConstructorUsedError; /* キャンペーン名称 */
  String get name =>
      throw _privateConstructorUsedError; /* キャンペーン配達料 - キャンペーン区分が\"1\"の場合に設定され、それ以外はnullとなる */
  int? get price =>
      throw _privateConstructorUsedError; /* キャンペーン配達料割引率 - キャンペーン区分が\"2\"の場合に設定され、それ以外はnullとなる */
  int? get discountRate =>
      throw _privateConstructorUsedError; /* キャンペーン適用開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'start_datetime')
  int get epochStartDatetime =>
      throw _privateConstructorUsedError; /* キャンペーン適用終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'finish_datetime')
  int get epochFinishDatetime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CampaignModelCopyWith<CampaignModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignModelCopyWith<$Res> {
  factory $CampaignModelCopyWith(
          CampaignModel value, $Res Function(CampaignModel) then) =
      _$CampaignModelCopyWithImpl<$Res, CampaignModel>;
  @useResult
  $Res call(
      {PriceType priceType,
      String name,
      int? price,
      int? discountRate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'start_datetime')
          int epochStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'finish_datetime')
          int epochFinishDatetime});
}

/// @nodoc
class _$CampaignModelCopyWithImpl<$Res, $Val extends CampaignModel>
    implements $CampaignModelCopyWith<$Res> {
  _$CampaignModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceType = null,
    Object? name = null,
    Object? price = freezed,
    Object? discountRate = freezed,
    Object? epochStartDatetime = null,
    Object? epochFinishDatetime = null,
  }) {
    return _then(_value.copyWith(
      priceType: null == priceType
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as PriceType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      epochStartDatetime: null == epochStartDatetime
          ? _value.epochStartDatetime
          : epochStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochFinishDatetime: null == epochFinishDatetime
          ? _value.epochFinishDatetime
          : epochFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CampaignModelCopyWith<$Res>
    implements $CampaignModelCopyWith<$Res> {
  factory _$$_CampaignModelCopyWith(
          _$_CampaignModel value, $Res Function(_$_CampaignModel) then) =
      __$$_CampaignModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PriceType priceType,
      String name,
      int? price,
      int? discountRate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'start_datetime')
          int epochStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'finish_datetime')
          int epochFinishDatetime});
}

/// @nodoc
class __$$_CampaignModelCopyWithImpl<$Res>
    extends _$CampaignModelCopyWithImpl<$Res, _$_CampaignModel>
    implements _$$_CampaignModelCopyWith<$Res> {
  __$$_CampaignModelCopyWithImpl(
      _$_CampaignModel _value, $Res Function(_$_CampaignModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceType = null,
    Object? name = null,
    Object? price = freezed,
    Object? discountRate = freezed,
    Object? epochStartDatetime = null,
    Object? epochFinishDatetime = null,
  }) {
    return _then(_$_CampaignModel(
      priceType: null == priceType
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as PriceType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      discountRate: freezed == discountRate
          ? _value.discountRate
          : discountRate // ignore: cast_nullable_to_non_nullable
              as int?,
      epochStartDatetime: null == epochStartDatetime
          ? _value.epochStartDatetime
          : epochStartDatetime // ignore: cast_nullable_to_non_nullable
              as int,
      epochFinishDatetime: null == epochFinishDatetime
          ? _value.epochFinishDatetime
          : epochFinishDatetime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CampaignModel extends _CampaignModel {
  const _$_CampaignModel(
      {this.priceType = PriceType.price,
      this.name = '',
      this.price,
      this.discountRate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'start_datetime')
          this.epochStartDatetime = 0,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'finish_datetime')
          this.epochFinishDatetime = 0})
      : super._();

  factory _$_CampaignModel.fromJson(Map<String, dynamic> json) =>
      _$$_CampaignModelFromJson(json);

/* キャンペーン区分 ``` \"1\"：キャンペーン配達料の適用 \"2\"：キャンペーン配達料割引率の適用 ``` */
  @override
  @JsonKey()
  final PriceType priceType;
/* キャンペーン名称 */
  @override
  @JsonKey()
  final String name;
/* キャンペーン配達料 - キャンペーン区分が\"1\"の場合に設定され、それ以外はnullとなる */
  @override
  final int? price;
/* キャンペーン配達料割引率 - キャンペーン区分が\"2\"の場合に設定され、それ以外はnullとなる */
  @override
  final int? discountRate;
/* キャンペーン適用開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'start_datetime')
  final int epochStartDatetime;
/* キャンペーン適用終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @StringToEpochTimeConverter()
  @JsonKey(name: 'finish_datetime')
  final int epochFinishDatetime;

  @override
  String toString() {
    return 'CampaignModel(priceType: $priceType, name: $name, price: $price, discountRate: $discountRate, epochStartDatetime: $epochStartDatetime, epochFinishDatetime: $epochFinishDatetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CampaignModel &&
            (identical(other.priceType, priceType) ||
                other.priceType == priceType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountRate, discountRate) ||
                other.discountRate == discountRate) &&
            (identical(other.epochStartDatetime, epochStartDatetime) ||
                other.epochStartDatetime == epochStartDatetime) &&
            (identical(other.epochFinishDatetime, epochFinishDatetime) ||
                other.epochFinishDatetime == epochFinishDatetime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, priceType, name, price,
      discountRate, epochStartDatetime, epochFinishDatetime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CampaignModelCopyWith<_$_CampaignModel> get copyWith =>
      __$$_CampaignModelCopyWithImpl<_$_CampaignModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CampaignModelToJson(
      this,
    );
  }
}

abstract class _CampaignModel extends CampaignModel {
  const factory _CampaignModel(
      {final PriceType priceType,
      final String name,
      final int? price,
      final int? discountRate,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'start_datetime')
          final int epochStartDatetime,
      @StringToEpochTimeConverter()
      @JsonKey(name: 'finish_datetime')
          final int epochFinishDatetime}) = _$_CampaignModel;
  const _CampaignModel._() : super._();

  factory _CampaignModel.fromJson(Map<String, dynamic> json) =
      _$_CampaignModel.fromJson;

  @override /* キャンペーン区分 ``` \"1\"：キャンペーン配達料の適用 \"2\"：キャンペーン配達料割引率の適用 ``` */
  PriceType get priceType;
  @override /* キャンペーン名称 */
  String get name;
  @override /* キャンペーン配達料 - キャンペーン区分が\"1\"の場合に設定され、それ以外はnullとなる */
  int? get price;
  @override /* キャンペーン配達料割引率 - キャンペーン区分が\"2\"の場合に設定され、それ以外はnullとなる */
  int? get discountRate;
  @override /* キャンペーン適用開始日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'start_datetime')
  int get epochStartDatetime;
  @override /* キャンペーン適用終了日 ※YYYY-MM-DDThh:mm:ss+09:00 */
  @StringToEpochTimeConverter()
  @JsonKey(name: 'finish_datetime')
  int get epochFinishDatetime;
  @override
  @JsonKey(ignore: true)
  _$$_CampaignModelCopyWith<_$_CampaignModel> get copyWith =>
      throw _privateConstructorUsedError;
}
