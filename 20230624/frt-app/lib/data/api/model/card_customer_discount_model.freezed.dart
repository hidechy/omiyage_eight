// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_customer_discount_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardCustomerDiscountModel _$CardCustomerDiscountModelFromJson(
    Map<String, dynamic> json) {
  return _CardCustomerDiscountModel.fromJson(json);
}

/// @nodoc
mixin _$CardCustomerDiscountModel {
/* カード会員割引対象判定 - true：カード会員割引適用 - false：非カード会員割引適用 */
  bool get isCardMemberDiscount =>
      throw _privateConstructorUsedError; /* カード会員適用割引率 - カード会員適用割引率が設定されていない場合、nullを返却*/
  int get cardMemberSaleRate =>
      throw _privateConstructorUsedError; /* カード会員割引区分 ``` \"01\"：セブンカード・7CSカード \"02\"：セブンカード・ポイントカード・7CSカード \"03\"：セブンカード・nanaco・シニアnanaco・7CSカード \"04\"：nanaco・シニアnanaco \"05\"：セブンカード・ポイントカード・nanaco・シニアnanaco・7CSカード \"06\"：シニアnanaco ``` */
  CardMemberType get cardMemberType =>
      throw _privateConstructorUsedError; /* カード会員割引コード */
  String get cardMemberDiscountCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardCustomerDiscountModelCopyWith<CardCustomerDiscountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCustomerDiscountModelCopyWith<$Res> {
  factory $CardCustomerDiscountModelCopyWith(CardCustomerDiscountModel value,
          $Res Function(CardCustomerDiscountModel) then) =
      _$CardCustomerDiscountModelCopyWithImpl<$Res, CardCustomerDiscountModel>;
  @useResult
  $Res call(
      {bool isCardMemberDiscount,
      int cardMemberSaleRate,
      CardMemberType cardMemberType,
      String cardMemberDiscountCode});
}

/// @nodoc
class _$CardCustomerDiscountModelCopyWithImpl<$Res,
        $Val extends CardCustomerDiscountModel>
    implements $CardCustomerDiscountModelCopyWith<$Res> {
  _$CardCustomerDiscountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCardMemberDiscount = null,
    Object? cardMemberSaleRate = null,
    Object? cardMemberType = null,
    Object? cardMemberDiscountCode = null,
  }) {
    return _then(_value.copyWith(
      isCardMemberDiscount: null == isCardMemberDiscount
          ? _value.isCardMemberDiscount
          : isCardMemberDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      cardMemberSaleRate: null == cardMemberSaleRate
          ? _value.cardMemberSaleRate
          : cardMemberSaleRate // ignore: cast_nullable_to_non_nullable
              as int,
      cardMemberType: null == cardMemberType
          ? _value.cardMemberType
          : cardMemberType // ignore: cast_nullable_to_non_nullable
              as CardMemberType,
      cardMemberDiscountCode: null == cardMemberDiscountCode
          ? _value.cardMemberDiscountCode
          : cardMemberDiscountCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardCustomerDiscountModelCopyWith<$Res>
    implements $CardCustomerDiscountModelCopyWith<$Res> {
  factory _$$_CardCustomerDiscountModelCopyWith(
          _$_CardCustomerDiscountModel value,
          $Res Function(_$_CardCustomerDiscountModel) then) =
      __$$_CardCustomerDiscountModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isCardMemberDiscount,
      int cardMemberSaleRate,
      CardMemberType cardMemberType,
      String cardMemberDiscountCode});
}

/// @nodoc
class __$$_CardCustomerDiscountModelCopyWithImpl<$Res>
    extends _$CardCustomerDiscountModelCopyWithImpl<$Res,
        _$_CardCustomerDiscountModel>
    implements _$$_CardCustomerDiscountModelCopyWith<$Res> {
  __$$_CardCustomerDiscountModelCopyWithImpl(
      _$_CardCustomerDiscountModel _value,
      $Res Function(_$_CardCustomerDiscountModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCardMemberDiscount = null,
    Object? cardMemberSaleRate = null,
    Object? cardMemberType = null,
    Object? cardMemberDiscountCode = null,
  }) {
    return _then(_$_CardCustomerDiscountModel(
      isCardMemberDiscount: null == isCardMemberDiscount
          ? _value.isCardMemberDiscount
          : isCardMemberDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      cardMemberSaleRate: null == cardMemberSaleRate
          ? _value.cardMemberSaleRate
          : cardMemberSaleRate // ignore: cast_nullable_to_non_nullable
              as int,
      cardMemberType: null == cardMemberType
          ? _value.cardMemberType
          : cardMemberType // ignore: cast_nullable_to_non_nullable
              as CardMemberType,
      cardMemberDiscountCode: null == cardMemberDiscountCode
          ? _value.cardMemberDiscountCode
          : cardMemberDiscountCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardCustomerDiscountModel extends _CardCustomerDiscountModel {
  const _$_CardCustomerDiscountModel(
      {this.isCardMemberDiscount = false,
      this.cardMemberSaleRate = 0,
      this.cardMemberType = CardMemberType.none,
      this.cardMemberDiscountCode = ''})
      : super._();

  factory _$_CardCustomerDiscountModel.fromJson(Map<String, dynamic> json) =>
      _$$_CardCustomerDiscountModelFromJson(json);

/* カード会員割引対象判定 - true：カード会員割引適用 - false：非カード会員割引適用 */
  @override
  @JsonKey()
  final bool isCardMemberDiscount;
/* カード会員適用割引率 - カード会員適用割引率が設定されていない場合、nullを返却*/
  @override
  @JsonKey()
  final int cardMemberSaleRate;
/* カード会員割引区分 ``` \"01\"：セブンカード・7CSカード \"02\"：セブンカード・ポイントカード・7CSカード \"03\"：セブンカード・nanaco・シニアnanaco・7CSカード \"04\"：nanaco・シニアnanaco \"05\"：セブンカード・ポイントカード・nanaco・シニアnanaco・7CSカード \"06\"：シニアnanaco ``` */
  @override
  @JsonKey()
  final CardMemberType cardMemberType;
/* カード会員割引コード */
  @override
  @JsonKey()
  final String cardMemberDiscountCode;

  @override
  String toString() {
    return 'CardCustomerDiscountModel(isCardMemberDiscount: $isCardMemberDiscount, cardMemberSaleRate: $cardMemberSaleRate, cardMemberType: $cardMemberType, cardMemberDiscountCode: $cardMemberDiscountCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardCustomerDiscountModel &&
            (identical(other.isCardMemberDiscount, isCardMemberDiscount) ||
                other.isCardMemberDiscount == isCardMemberDiscount) &&
            (identical(other.cardMemberSaleRate, cardMemberSaleRate) ||
                other.cardMemberSaleRate == cardMemberSaleRate) &&
            (identical(other.cardMemberType, cardMemberType) ||
                other.cardMemberType == cardMemberType) &&
            (identical(other.cardMemberDiscountCode, cardMemberDiscountCode) ||
                other.cardMemberDiscountCode == cardMemberDiscountCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCardMemberDiscount,
      cardMemberSaleRate, cardMemberType, cardMemberDiscountCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardCustomerDiscountModelCopyWith<_$_CardCustomerDiscountModel>
      get copyWith => __$$_CardCustomerDiscountModelCopyWithImpl<
          _$_CardCustomerDiscountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardCustomerDiscountModelToJson(
      this,
    );
  }
}

abstract class _CardCustomerDiscountModel extends CardCustomerDiscountModel {
  const factory _CardCustomerDiscountModel(
      {final bool isCardMemberDiscount,
      final int cardMemberSaleRate,
      final CardMemberType cardMemberType,
      final String cardMemberDiscountCode}) = _$_CardCustomerDiscountModel;
  const _CardCustomerDiscountModel._() : super._();

  factory _CardCustomerDiscountModel.fromJson(Map<String, dynamic> json) =
      _$_CardCustomerDiscountModel.fromJson;

  @override /* カード会員割引対象判定 - true：カード会員割引適用 - false：非カード会員割引適用 */
  bool get isCardMemberDiscount;
  @override /* カード会員適用割引率 - カード会員適用割引率が設定されていない場合、nullを返却*/
  int get cardMemberSaleRate;
  @override /* カード会員割引区分 ``` \"01\"：セブンカード・7CSカード \"02\"：セブンカード・ポイントカード・7CSカード \"03\"：セブンカード・nanaco・シニアnanaco・7CSカード \"04\"：nanaco・シニアnanaco \"05\"：セブンカード・ポイントカード・nanaco・シニアnanaco・7CSカード \"06\"：シニアnanaco ``` */
  CardMemberType get cardMemberType;
  @override /* カード会員割引コード */
  String get cardMemberDiscountCode;
  @override
  @JsonKey(ignore: true)
  _$$_CardCustomerDiscountModelCopyWith<_$_CardCustomerDiscountModel>
      get copyWith => throw _privateConstructorUsedError;
}
