// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartDetailsModel _$CartDetailsModelFromJson(Map<String, dynamic> json) {
  return _CartDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$CartDetailsModel {
/* 予約コード */
  String get reserveCode => throw _privateConstructorUsedError; /* 商品コード */
  String get productId => throw _privateConstructorUsedError; /* 数量 */
  int get quantity =>
      throw _privateConstructorUsedError; /* 医薬品扱い商品判定 ``` true：医薬品扱い false：医薬品扱いでない ``` */
  bool get isDrugProduct =>
      throw _privateConstructorUsedError; /* お気に入り追加済み判定 ``` true：お気に入り追加済み false：お気に入り未追加 ``` */
  bool get isFavoriteAdded =>
      throw _privateConstructorUsedError; /* 商品画像パス（コンテキストルートは含まない） */
  String get productImagePath =>
      throw _privateConstructorUsedError; /* 商品画像のフロント用フルパス */
  String get frontProductImageFullPath =>
      throw _privateConstructorUsedError; /*
    ホワイト画像表示フラグ
    - 通常商品の場合
      true：「販促対象」かつ「画像なし」の商品​の場合
      false：「販促対象」かつ「画像なし」の商品​以外の場合
    - 予約商品の場合
      true：「画像なし」の商品​の場合
      false：「画像なし」の商品​以外の場合
    */
  bool get isDisplayWhiteImage =>
      throw _privateConstructorUsedError; /* 商品画像-商品名 */
  String get productImageAlt =>
      throw _privateConstructorUsedError; /* 軽減税率商品判定 ``` true：軽減税率商品 false：軽減税率商品でない ``` */
  bool get isReducedTaxRateProduct =>
      throw _privateConstructorUsedError; /* 当日配送限り商品判定 ``` true：当日配送限り商品 false：当日配送限り商品でない ``` */
  bool get isTodayDeliveryLimitedProduct =>
      throw _privateConstructorUsedError; /* 当日配送限り商品有効期間 YYYY-MM-DDThh:mm:ss+09:00 */
  String get todayDeliveryLimitedDatetime =>
      throw _privateConstructorUsedError; /* 配送便限定市商品判定 ``` true：配送便限定市商品 false：配送便限定市商品でない ``` */
  bool get isMarketDeliveryLimitedProduct =>
      throw _privateConstructorUsedError; /* 市商品時間帯リスト */
  List<MarketTimeFromToModel> get marketTimes =>
      throw _privateConstructorUsedError; /* POS発注制限あり商品判定 ``` true：POS発注制限あり商品 false：POS発注制限あり商品でない ``` */
  bool get isPosOrderLimitedProduct =>
      throw _privateConstructorUsedError; /* 全配送日・全便のPOS発注制限あり商品判定 ``` true：全配送日・全便のPOS発注制限あり商品 false：全配送日・全便のPOS発注制限あり商品でない ``` */
  bool get isPosOrderAllLimitedProduct =>
      throw _privateConstructorUsedError; /* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 */
  String get posOrderLimitedDatetime =>
      throw _privateConstructorUsedError; /* nanaco販促ポイント対象商品判定 ``` true：nanaco販促ポイント対象商品 false：nanaco販促ポイント対象商品でない ``` */
  bool get isNanacoPointPromotionDetails =>
      throw _privateConstructorUsedError; /* nanaco付与単位ポイント */
  int get nanacoPointUnitPoint =>
      throw _privateConstructorUsedError; /* 注文時在庫数超過判定 ``` true：注文時在庫数超過 false：注文時在庫数超過でない ``` */
  bool get isExceedStock => throw _privateConstructorUsedError; /* 商品名 */
  String get productName =>
      throw _privateConstructorUsedError; /* よりどりまとめて値引判定 ``` true：よりどりまとめて値引対象商品 false：よりどりまとめて値引対象外 ``` */
  bool get isMixMatchDiscount =>
      throw _privateConstructorUsedError; /* セット販売等割引判定 ``` true：セット販売・セット値引・予約セット割引のいずれかの対象商品 false：上記割引対象外 ``` */
  bool get isSetSaleDiscount =>
      throw _privateConstructorUsedError; /* 点数まとめて値引判定 ``` true：点数まとめて値引対象商品 false：点数まとめて値引対象外 ``` */
  bool get isProgressiveDiscount =>
      throw _privateConstructorUsedError; /* カード会員割引判定 ``` true：カード会員割引対象商品 false：カード会員割引対象外 ``` */
  bool get isCardMemberDiscount =>
      throw _privateConstructorUsedError; /* アイワイ/セブンカード割引判定 ``` true：アイワイ/セブンカード割引対象商品 false：アイワイ/セブンカード割引対象外 ``` */
  bool get isIyCardDiscount =>
      throw _privateConstructorUsedError; /* クーポン指定商品値引判定 ``` true：クーポン指定商品値引対象商品 false：クーポン指定商品値引対象外 ``` */
  bool get isCouponDiscount =>
      throw _privateConstructorUsedError; /* 売り切りセール値引判定 ``` true：売り切りセール値引対象商品 false：売り切りセール値引対象外 ``` */
  bool get isSellingOffDiscount =>
      throw _privateConstructorUsedError; /* 売価(税込) */
  int get price => throw _privateConstructorUsedError; /* 売価(税抜) */
  int get noTaxPrice => throw _privateConstructorUsedError; /* 購入可能数 */
  int get maxBuyCount => throw _privateConstructorUsedError; /* JAN明細分割キー */
  String get productDetailKey => throw _privateConstructorUsedError; /* 販売額小計 */
  int get salePrice =>
      throw _privateConstructorUsedError; /* 税込判定 ``` true：税込である false：税込みでない ``` */
  bool get isTaxIncluded =>
      throw _privateConstructorUsedError; /* 納品リードタイム期間内判定 ``` true：納品リードタイム期間内 false：納品リードタイム期間外 ``` */
  bool get isInDeliveryLeadTime =>
      throw _privateConstructorUsedError; /* 予約商品判定 ``` true：予約商品 false：予約商品でない ``` */
  bool get isReserveProduct =>
      throw _privateConstructorUsedError; /* フロント商品変更締め日時前の判定 ``` true：締め日時前 false：締め日時を過ぎている ``` */
  bool get isBeforeChangeProductClosingDatetime =>
      throw _privateConstructorUsedError; /* 商品変更締め日時 - ※yyyy-MM-ddTHH:mm:ss+09:00 - カートのフロント変更締日時とカート商品のフロント商品変更締日時が同じ場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_product_closing_datetime')
  int? get epochChangeProductClosingDatetime =>
      throw _privateConstructorUsedError; /* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
  bool get isRegularShipmentApplyProduct =>
      throw _privateConstructorUsedError; /* 定期便割引判定 - true：割引あり - false：割引なし */
  bool get isRegularShipmentDiscount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDetailsModelCopyWith<CartDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDetailsModelCopyWith<$Res> {
  factory $CartDetailsModelCopyWith(
          CartDetailsModel value, $Res Function(CartDetailsModel) then) =
      _$CartDetailsModelCopyWithImpl<$Res, CartDetailsModel>;
  @useResult
  $Res call(
      {String reserveCode,
      String productId,
      int quantity,
      bool isDrugProduct,
      bool isFavoriteAdded,
      String productImagePath,
      String frontProductImageFullPath,
      bool isDisplayWhiteImage,
      String productImageAlt,
      bool isReducedTaxRateProduct,
      bool isTodayDeliveryLimitedProduct,
      String todayDeliveryLimitedDatetime,
      bool isMarketDeliveryLimitedProduct,
      List<MarketTimeFromToModel> marketTimes,
      bool isPosOrderLimitedProduct,
      bool isPosOrderAllLimitedProduct,
      String posOrderLimitedDatetime,
      bool isNanacoPointPromotionDetails,
      int nanacoPointUnitPoint,
      bool isExceedStock,
      String productName,
      bool isMixMatchDiscount,
      bool isSetSaleDiscount,
      bool isProgressiveDiscount,
      bool isCardMemberDiscount,
      bool isIyCardDiscount,
      bool isCouponDiscount,
      bool isSellingOffDiscount,
      int price,
      int noTaxPrice,
      int maxBuyCount,
      String productDetailKey,
      int salePrice,
      bool isTaxIncluded,
      bool isInDeliveryLeadTime,
      bool isReserveProduct,
      bool isBeforeChangeProductClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          int? epochChangeProductClosingDatetime,
      bool isRegularShipmentApplyProduct,
      bool isRegularShipmentDiscount});
}

/// @nodoc
class _$CartDetailsModelCopyWithImpl<$Res, $Val extends CartDetailsModel>
    implements $CartDetailsModelCopyWith<$Res> {
  _$CartDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reserveCode = null,
    Object? productId = null,
    Object? quantity = null,
    Object? isDrugProduct = null,
    Object? isFavoriteAdded = null,
    Object? productImagePath = null,
    Object? frontProductImageFullPath = null,
    Object? isDisplayWhiteImage = null,
    Object? productImageAlt = null,
    Object? isReducedTaxRateProduct = null,
    Object? isTodayDeliveryLimitedProduct = null,
    Object? todayDeliveryLimitedDatetime = null,
    Object? isMarketDeliveryLimitedProduct = null,
    Object? marketTimes = null,
    Object? isPosOrderLimitedProduct = null,
    Object? isPosOrderAllLimitedProduct = null,
    Object? posOrderLimitedDatetime = null,
    Object? isNanacoPointPromotionDetails = null,
    Object? nanacoPointUnitPoint = null,
    Object? isExceedStock = null,
    Object? productName = null,
    Object? isMixMatchDiscount = null,
    Object? isSetSaleDiscount = null,
    Object? isProgressiveDiscount = null,
    Object? isCardMemberDiscount = null,
    Object? isIyCardDiscount = null,
    Object? isCouponDiscount = null,
    Object? isSellingOffDiscount = null,
    Object? price = null,
    Object? noTaxPrice = null,
    Object? maxBuyCount = null,
    Object? productDetailKey = null,
    Object? salePrice = null,
    Object? isTaxIncluded = null,
    Object? isInDeliveryLeadTime = null,
    Object? isReserveProduct = null,
    Object? isBeforeChangeProductClosingDatetime = null,
    Object? epochChangeProductClosingDatetime = freezed,
    Object? isRegularShipmentApplyProduct = null,
    Object? isRegularShipmentDiscount = null,
  }) {
    return _then(_value.copyWith(
      reserveCode: null == reserveCode
          ? _value.reserveCode
          : reserveCode // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isDrugProduct: null == isDrugProduct
          ? _value.isDrugProduct
          : isDrugProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavoriteAdded: null == isFavoriteAdded
          ? _value.isFavoriteAdded
          : isFavoriteAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      productImagePath: null == productImagePath
          ? _value.productImagePath
          : productImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      frontProductImageFullPath: null == frontProductImageFullPath
          ? _value.frontProductImageFullPath
          : frontProductImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
      isDisplayWhiteImage: null == isDisplayWhiteImage
          ? _value.isDisplayWhiteImage
          : isDisplayWhiteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      productImageAlt: null == productImageAlt
          ? _value.productImageAlt
          : productImageAlt // ignore: cast_nullable_to_non_nullable
              as String,
      isReducedTaxRateProduct: null == isReducedTaxRateProduct
          ? _value.isReducedTaxRateProduct
          : isReducedTaxRateProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isTodayDeliveryLimitedProduct: null == isTodayDeliveryLimitedProduct
          ? _value.isTodayDeliveryLimitedProduct
          : isTodayDeliveryLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      todayDeliveryLimitedDatetime: null == todayDeliveryLimitedDatetime
          ? _value.todayDeliveryLimitedDatetime
          : todayDeliveryLimitedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      isMarketDeliveryLimitedProduct: null == isMarketDeliveryLimitedProduct
          ? _value.isMarketDeliveryLimitedProduct
          : isMarketDeliveryLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      marketTimes: null == marketTimes
          ? _value.marketTimes
          : marketTimes // ignore: cast_nullable_to_non_nullable
              as List<MarketTimeFromToModel>,
      isPosOrderLimitedProduct: null == isPosOrderLimitedProduct
          ? _value.isPosOrderLimitedProduct
          : isPosOrderLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isPosOrderAllLimitedProduct: null == isPosOrderAllLimitedProduct
          ? _value.isPosOrderAllLimitedProduct
          : isPosOrderAllLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      posOrderLimitedDatetime: null == posOrderLimitedDatetime
          ? _value.posOrderLimitedDatetime
          : posOrderLimitedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoPointPromotionDetails: null == isNanacoPointPromotionDetails
          ? _value.isNanacoPointPromotionDetails
          : isNanacoPointPromotionDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoPointUnitPoint: null == nanacoPointUnitPoint
          ? _value.nanacoPointUnitPoint
          : nanacoPointUnitPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isExceedStock: null == isExceedStock
          ? _value.isExceedStock
          : isExceedStock // ignore: cast_nullable_to_non_nullable
              as bool,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      isMixMatchDiscount: null == isMixMatchDiscount
          ? _value.isMixMatchDiscount
          : isMixMatchDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetSaleDiscount: null == isSetSaleDiscount
          ? _value.isSetSaleDiscount
          : isSetSaleDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isProgressiveDiscount: null == isProgressiveDiscount
          ? _value.isProgressiveDiscount
          : isProgressiveDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isCardMemberDiscount: null == isCardMemberDiscount
          ? _value.isCardMemberDiscount
          : isCardMemberDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isIyCardDiscount: null == isIyCardDiscount
          ? _value.isIyCardDiscount
          : isIyCardDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponDiscount: null == isCouponDiscount
          ? _value.isCouponDiscount
          : isCouponDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isSellingOffDiscount: null == isSellingOffDiscount
          ? _value.isSellingOffDiscount
          : isSellingOffDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxPrice: null == noTaxPrice
          ? _value.noTaxPrice
          : noTaxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxBuyCount: null == maxBuyCount
          ? _value.maxBuyCount
          : maxBuyCount // ignore: cast_nullable_to_non_nullable
              as int,
      productDetailKey: null == productDetailKey
          ? _value.productDetailKey
          : productDetailKey // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isTaxIncluded: null == isTaxIncluded
          ? _value.isTaxIncluded
          : isTaxIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      isInDeliveryLeadTime: null == isInDeliveryLeadTime
          ? _value.isInDeliveryLeadTime
          : isInDeliveryLeadTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserveProduct: null == isReserveProduct
          ? _value.isReserveProduct
          : isReserveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeChangeProductClosingDatetime: null ==
              isBeforeChangeProductClosingDatetime
          ? _value.isBeforeChangeProductClosingDatetime
          : isBeforeChangeProductClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      epochChangeProductClosingDatetime: freezed ==
              epochChangeProductClosingDatetime
          ? _value.epochChangeProductClosingDatetime
          : epochChangeProductClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isRegularShipmentApplyProduct: null == isRegularShipmentApplyProduct
          ? _value.isRegularShipmentApplyProduct
          : isRegularShipmentApplyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentDiscount: null == isRegularShipmentDiscount
          ? _value.isRegularShipmentDiscount
          : isRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartDetailsModelCopyWith<$Res>
    implements $CartDetailsModelCopyWith<$Res> {
  factory _$$_CartDetailsModelCopyWith(
          _$_CartDetailsModel value, $Res Function(_$_CartDetailsModel) then) =
      __$$_CartDetailsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String reserveCode,
      String productId,
      int quantity,
      bool isDrugProduct,
      bool isFavoriteAdded,
      String productImagePath,
      String frontProductImageFullPath,
      bool isDisplayWhiteImage,
      String productImageAlt,
      bool isReducedTaxRateProduct,
      bool isTodayDeliveryLimitedProduct,
      String todayDeliveryLimitedDatetime,
      bool isMarketDeliveryLimitedProduct,
      List<MarketTimeFromToModel> marketTimes,
      bool isPosOrderLimitedProduct,
      bool isPosOrderAllLimitedProduct,
      String posOrderLimitedDatetime,
      bool isNanacoPointPromotionDetails,
      int nanacoPointUnitPoint,
      bool isExceedStock,
      String productName,
      bool isMixMatchDiscount,
      bool isSetSaleDiscount,
      bool isProgressiveDiscount,
      bool isCardMemberDiscount,
      bool isIyCardDiscount,
      bool isCouponDiscount,
      bool isSellingOffDiscount,
      int price,
      int noTaxPrice,
      int maxBuyCount,
      String productDetailKey,
      int salePrice,
      bool isTaxIncluded,
      bool isInDeliveryLeadTime,
      bool isReserveProduct,
      bool isBeforeChangeProductClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          int? epochChangeProductClosingDatetime,
      bool isRegularShipmentApplyProduct,
      bool isRegularShipmentDiscount});
}

/// @nodoc
class __$$_CartDetailsModelCopyWithImpl<$Res>
    extends _$CartDetailsModelCopyWithImpl<$Res, _$_CartDetailsModel>
    implements _$$_CartDetailsModelCopyWith<$Res> {
  __$$_CartDetailsModelCopyWithImpl(
      _$_CartDetailsModel _value, $Res Function(_$_CartDetailsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reserveCode = null,
    Object? productId = null,
    Object? quantity = null,
    Object? isDrugProduct = null,
    Object? isFavoriteAdded = null,
    Object? productImagePath = null,
    Object? frontProductImageFullPath = null,
    Object? isDisplayWhiteImage = null,
    Object? productImageAlt = null,
    Object? isReducedTaxRateProduct = null,
    Object? isTodayDeliveryLimitedProduct = null,
    Object? todayDeliveryLimitedDatetime = null,
    Object? isMarketDeliveryLimitedProduct = null,
    Object? marketTimes = null,
    Object? isPosOrderLimitedProduct = null,
    Object? isPosOrderAllLimitedProduct = null,
    Object? posOrderLimitedDatetime = null,
    Object? isNanacoPointPromotionDetails = null,
    Object? nanacoPointUnitPoint = null,
    Object? isExceedStock = null,
    Object? productName = null,
    Object? isMixMatchDiscount = null,
    Object? isSetSaleDiscount = null,
    Object? isProgressiveDiscount = null,
    Object? isCardMemberDiscount = null,
    Object? isIyCardDiscount = null,
    Object? isCouponDiscount = null,
    Object? isSellingOffDiscount = null,
    Object? price = null,
    Object? noTaxPrice = null,
    Object? maxBuyCount = null,
    Object? productDetailKey = null,
    Object? salePrice = null,
    Object? isTaxIncluded = null,
    Object? isInDeliveryLeadTime = null,
    Object? isReserveProduct = null,
    Object? isBeforeChangeProductClosingDatetime = null,
    Object? epochChangeProductClosingDatetime = freezed,
    Object? isRegularShipmentApplyProduct = null,
    Object? isRegularShipmentDiscount = null,
  }) {
    return _then(_$_CartDetailsModel(
      reserveCode: null == reserveCode
          ? _value.reserveCode
          : reserveCode // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      isDrugProduct: null == isDrugProduct
          ? _value.isDrugProduct
          : isDrugProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isFavoriteAdded: null == isFavoriteAdded
          ? _value.isFavoriteAdded
          : isFavoriteAdded // ignore: cast_nullable_to_non_nullable
              as bool,
      productImagePath: null == productImagePath
          ? _value.productImagePath
          : productImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      frontProductImageFullPath: null == frontProductImageFullPath
          ? _value.frontProductImageFullPath
          : frontProductImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
      isDisplayWhiteImage: null == isDisplayWhiteImage
          ? _value.isDisplayWhiteImage
          : isDisplayWhiteImage // ignore: cast_nullable_to_non_nullable
              as bool,
      productImageAlt: null == productImageAlt
          ? _value.productImageAlt
          : productImageAlt // ignore: cast_nullable_to_non_nullable
              as String,
      isReducedTaxRateProduct: null == isReducedTaxRateProduct
          ? _value.isReducedTaxRateProduct
          : isReducedTaxRateProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isTodayDeliveryLimitedProduct: null == isTodayDeliveryLimitedProduct
          ? _value.isTodayDeliveryLimitedProduct
          : isTodayDeliveryLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      todayDeliveryLimitedDatetime: null == todayDeliveryLimitedDatetime
          ? _value.todayDeliveryLimitedDatetime
          : todayDeliveryLimitedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      isMarketDeliveryLimitedProduct: null == isMarketDeliveryLimitedProduct
          ? _value.isMarketDeliveryLimitedProduct
          : isMarketDeliveryLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      marketTimes: null == marketTimes
          ? _value._marketTimes
          : marketTimes // ignore: cast_nullable_to_non_nullable
              as List<MarketTimeFromToModel>,
      isPosOrderLimitedProduct: null == isPosOrderLimitedProduct
          ? _value.isPosOrderLimitedProduct
          : isPosOrderLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isPosOrderAllLimitedProduct: null == isPosOrderAllLimitedProduct
          ? _value.isPosOrderAllLimitedProduct
          : isPosOrderAllLimitedProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      posOrderLimitedDatetime: null == posOrderLimitedDatetime
          ? _value.posOrderLimitedDatetime
          : posOrderLimitedDatetime // ignore: cast_nullable_to_non_nullable
              as String,
      isNanacoPointPromotionDetails: null == isNanacoPointPromotionDetails
          ? _value.isNanacoPointPromotionDetails
          : isNanacoPointPromotionDetails // ignore: cast_nullable_to_non_nullable
              as bool,
      nanacoPointUnitPoint: null == nanacoPointUnitPoint
          ? _value.nanacoPointUnitPoint
          : nanacoPointUnitPoint // ignore: cast_nullable_to_non_nullable
              as int,
      isExceedStock: null == isExceedStock
          ? _value.isExceedStock
          : isExceedStock // ignore: cast_nullable_to_non_nullable
              as bool,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      isMixMatchDiscount: null == isMixMatchDiscount
          ? _value.isMixMatchDiscount
          : isMixMatchDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isSetSaleDiscount: null == isSetSaleDiscount
          ? _value.isSetSaleDiscount
          : isSetSaleDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isProgressiveDiscount: null == isProgressiveDiscount
          ? _value.isProgressiveDiscount
          : isProgressiveDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isCardMemberDiscount: null == isCardMemberDiscount
          ? _value.isCardMemberDiscount
          : isCardMemberDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isIyCardDiscount: null == isIyCardDiscount
          ? _value.isIyCardDiscount
          : isIyCardDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isCouponDiscount: null == isCouponDiscount
          ? _value.isCouponDiscount
          : isCouponDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      isSellingOffDiscount: null == isSellingOffDiscount
          ? _value.isSellingOffDiscount
          : isSellingOffDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      noTaxPrice: null == noTaxPrice
          ? _value.noTaxPrice
          : noTaxPrice // ignore: cast_nullable_to_non_nullable
              as int,
      maxBuyCount: null == maxBuyCount
          ? _value.maxBuyCount
          : maxBuyCount // ignore: cast_nullable_to_non_nullable
              as int,
      productDetailKey: null == productDetailKey
          ? _value.productDetailKey
          : productDetailKey // ignore: cast_nullable_to_non_nullable
              as String,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      isTaxIncluded: null == isTaxIncluded
          ? _value.isTaxIncluded
          : isTaxIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      isInDeliveryLeadTime: null == isInDeliveryLeadTime
          ? _value.isInDeliveryLeadTime
          : isInDeliveryLeadTime // ignore: cast_nullable_to_non_nullable
              as bool,
      isReserveProduct: null == isReserveProduct
          ? _value.isReserveProduct
          : isReserveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isBeforeChangeProductClosingDatetime: null ==
              isBeforeChangeProductClosingDatetime
          ? _value.isBeforeChangeProductClosingDatetime
          : isBeforeChangeProductClosingDatetime // ignore: cast_nullable_to_non_nullable
              as bool,
      epochChangeProductClosingDatetime: freezed ==
              epochChangeProductClosingDatetime
          ? _value.epochChangeProductClosingDatetime
          : epochChangeProductClosingDatetime // ignore: cast_nullable_to_non_nullable
              as int?,
      isRegularShipmentApplyProduct: null == isRegularShipmentApplyProduct
          ? _value.isRegularShipmentApplyProduct
          : isRegularShipmentApplyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentDiscount: null == isRegularShipmentDiscount
          ? _value.isRegularShipmentDiscount
          : isRegularShipmentDiscount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDetailsModel extends _CartDetailsModel
    with DiagnosticableTreeMixin {
  const _$_CartDetailsModel(
      {this.reserveCode = '',
      this.productId = '',
      this.quantity = 0,
      this.isDrugProduct = false,
      this.isFavoriteAdded = false,
      this.productImagePath = '',
      this.frontProductImageFullPath = '',
      this.isDisplayWhiteImage = false,
      this.productImageAlt = '',
      this.isReducedTaxRateProduct = false,
      this.isTodayDeliveryLimitedProduct = false,
      this.todayDeliveryLimitedDatetime = '',
      this.isMarketDeliveryLimitedProduct = false,
      final List<MarketTimeFromToModel> marketTimes =
          const <MarketTimeFromToModel>[],
      this.isPosOrderLimitedProduct = false,
      this.isPosOrderAllLimitedProduct = false,
      this.posOrderLimitedDatetime = '',
      this.isNanacoPointPromotionDetails = false,
      this.nanacoPointUnitPoint = 0,
      this.isExceedStock = false,
      this.productName = '',
      this.isMixMatchDiscount = false,
      this.isSetSaleDiscount = false,
      this.isProgressiveDiscount = false,
      this.isCardMemberDiscount = false,
      this.isIyCardDiscount = false,
      this.isCouponDiscount = false,
      this.isSellingOffDiscount = false,
      this.price = 0,
      this.noTaxPrice = 0,
      this.maxBuyCount = 0,
      this.productDetailKey = '',
      this.salePrice = 0,
      this.isTaxIncluded = false,
      this.isInDeliveryLeadTime = false,
      this.isReserveProduct = false,
      this.isBeforeChangeProductClosingDatetime = false,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          this.epochChangeProductClosingDatetime,
      this.isRegularShipmentApplyProduct = false,
      this.isRegularShipmentDiscount = false})
      : _marketTimes = marketTimes,
        super._();

  factory _$_CartDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$$_CartDetailsModelFromJson(json);

/* 予約コード */
  @override
  @JsonKey()
  final String reserveCode;
/* 商品コード */
  @override
  @JsonKey()
  final String productId;
/* 数量 */
  @override
  @JsonKey()
  final int quantity;
/* 医薬品扱い商品判定 ``` true：医薬品扱い false：医薬品扱いでない ``` */
  @override
  @JsonKey()
  final bool isDrugProduct;
/* お気に入り追加済み判定 ``` true：お気に入り追加済み false：お気に入り未追加 ``` */
  @override
  @JsonKey()
  final bool isFavoriteAdded;
/* 商品画像パス（コンテキストルートは含まない） */
  @override
  @JsonKey()
  final String productImagePath;
/* 商品画像のフロント用フルパス */
  @override
  @JsonKey()
  final String frontProductImageFullPath;
/*
    ホワイト画像表示フラグ
    - 通常商品の場合
      true：「販促対象」かつ「画像なし」の商品​の場合
      false：「販促対象」かつ「画像なし」の商品​以外の場合
    - 予約商品の場合
      true：「画像なし」の商品​の場合
      false：「画像なし」の商品​以外の場合
    */
  @override
  @JsonKey()
  final bool isDisplayWhiteImage;
/* 商品画像-商品名 */
  @override
  @JsonKey()
  final String productImageAlt;
/* 軽減税率商品判定 ``` true：軽減税率商品 false：軽減税率商品でない ``` */
  @override
  @JsonKey()
  final bool isReducedTaxRateProduct;
/* 当日配送限り商品判定 ``` true：当日配送限り商品 false：当日配送限り商品でない ``` */
  @override
  @JsonKey()
  final bool isTodayDeliveryLimitedProduct;
/* 当日配送限り商品有効期間 YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @JsonKey()
  final String todayDeliveryLimitedDatetime;
/* 配送便限定市商品判定 ``` true：配送便限定市商品 false：配送便限定市商品でない ``` */
  @override
  @JsonKey()
  final bool isMarketDeliveryLimitedProduct;
/* 市商品時間帯リスト */
  final List<MarketTimeFromToModel> _marketTimes;
/* 市商品時間帯リスト */
  @override
  @JsonKey()
  List<MarketTimeFromToModel> get marketTimes {
    if (_marketTimes is EqualUnmodifiableListView) return _marketTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_marketTimes);
  }

/* POS発注制限あり商品判定 ``` true：POS発注制限あり商品 false：POS発注制限あり商品でない ``` */
  @override
  @JsonKey()
  final bool isPosOrderLimitedProduct;
/* 全配送日・全便のPOS発注制限あり商品判定 ``` true：全配送日・全便のPOS発注制限あり商品 false：全配送日・全便のPOS発注制限あり商品でない ``` */
  @override
  @JsonKey()
  final bool isPosOrderAllLimitedProduct;
/* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 */
  @override
  @JsonKey()
  final String posOrderLimitedDatetime;
/* nanaco販促ポイント対象商品判定 ``` true：nanaco販促ポイント対象商品 false：nanaco販促ポイント対象商品でない ``` */
  @override
  @JsonKey()
  final bool isNanacoPointPromotionDetails;
/* nanaco付与単位ポイント */
  @override
  @JsonKey()
  final int nanacoPointUnitPoint;
/* 注文時在庫数超過判定 ``` true：注文時在庫数超過 false：注文時在庫数超過でない ``` */
  @override
  @JsonKey()
  final bool isExceedStock;
/* 商品名 */
  @override
  @JsonKey()
  final String productName;
/* よりどりまとめて値引判定 ``` true：よりどりまとめて値引対象商品 false：よりどりまとめて値引対象外 ``` */
  @override
  @JsonKey()
  final bool isMixMatchDiscount;
/* セット販売等割引判定 ``` true：セット販売・セット値引・予約セット割引のいずれかの対象商品 false：上記割引対象外 ``` */
  @override
  @JsonKey()
  final bool isSetSaleDiscount;
/* 点数まとめて値引判定 ``` true：点数まとめて値引対象商品 false：点数まとめて値引対象外 ``` */
  @override
  @JsonKey()
  final bool isProgressiveDiscount;
/* カード会員割引判定 ``` true：カード会員割引対象商品 false：カード会員割引対象外 ``` */
  @override
  @JsonKey()
  final bool isCardMemberDiscount;
/* アイワイ/セブンカード割引判定 ``` true：アイワイ/セブンカード割引対象商品 false：アイワイ/セブンカード割引対象外 ``` */
  @override
  @JsonKey()
  final bool isIyCardDiscount;
/* クーポン指定商品値引判定 ``` true：クーポン指定商品値引対象商品 false：クーポン指定商品値引対象外 ``` */
  @override
  @JsonKey()
  final bool isCouponDiscount;
/* 売り切りセール値引判定 ``` true：売り切りセール値引対象商品 false：売り切りセール値引対象外 ``` */
  @override
  @JsonKey()
  final bool isSellingOffDiscount;
/* 売価(税込) */
  @override
  @JsonKey()
  final int price;
/* 売価(税抜) */
  @override
  @JsonKey()
  final int noTaxPrice;
/* 購入可能数 */
  @override
  @JsonKey()
  final int maxBuyCount;
/* JAN明細分割キー */
  @override
  @JsonKey()
  final String productDetailKey;
/* 販売額小計 */
  @override
  @JsonKey()
  final int salePrice;
/* 税込判定 ``` true：税込である false：税込みでない ``` */
  @override
  @JsonKey()
  final bool isTaxIncluded;
/* 納品リードタイム期間内判定 ``` true：納品リードタイム期間内 false：納品リードタイム期間外 ``` */
  @override
  @JsonKey()
  final bool isInDeliveryLeadTime;
/* 予約商品判定 ``` true：予約商品 false：予約商品でない ``` */
  @override
  @JsonKey()
  final bool isReserveProduct;
/* フロント商品変更締め日時前の判定 ``` true：締め日時前 false：締め日時を過ぎている ``` */
  @override
  @JsonKey()
  final bool isBeforeChangeProductClosingDatetime;
/* 商品変更締め日時 - ※yyyy-MM-ddTHH:mm:ss+09:00 - カートのフロント変更締日時とカート商品のフロント商品変更締日時が同じ場合、nullを返却 */
  @override
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_product_closing_datetime')
  final int? epochChangeProductClosingDatetime;
/* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
  @override
  @JsonKey()
  final bool isRegularShipmentApplyProduct;
/* 定期便割引判定 - true：割引あり - false：割引なし */
  @override
  @JsonKey()
  final bool isRegularShipmentDiscount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartDetailsModel(reserveCode: $reserveCode, productId: $productId, quantity: $quantity, isDrugProduct: $isDrugProduct, isFavoriteAdded: $isFavoriteAdded, productImagePath: $productImagePath, frontProductImageFullPath: $frontProductImageFullPath, isDisplayWhiteImage: $isDisplayWhiteImage, productImageAlt: $productImageAlt, isReducedTaxRateProduct: $isReducedTaxRateProduct, isTodayDeliveryLimitedProduct: $isTodayDeliveryLimitedProduct, todayDeliveryLimitedDatetime: $todayDeliveryLimitedDatetime, isMarketDeliveryLimitedProduct: $isMarketDeliveryLimitedProduct, marketTimes: $marketTimes, isPosOrderLimitedProduct: $isPosOrderLimitedProduct, isPosOrderAllLimitedProduct: $isPosOrderAllLimitedProduct, posOrderLimitedDatetime: $posOrderLimitedDatetime, isNanacoPointPromotionDetails: $isNanacoPointPromotionDetails, nanacoPointUnitPoint: $nanacoPointUnitPoint, isExceedStock: $isExceedStock, productName: $productName, isMixMatchDiscount: $isMixMatchDiscount, isSetSaleDiscount: $isSetSaleDiscount, isProgressiveDiscount: $isProgressiveDiscount, isCardMemberDiscount: $isCardMemberDiscount, isIyCardDiscount: $isIyCardDiscount, isCouponDiscount: $isCouponDiscount, isSellingOffDiscount: $isSellingOffDiscount, price: $price, noTaxPrice: $noTaxPrice, maxBuyCount: $maxBuyCount, productDetailKey: $productDetailKey, salePrice: $salePrice, isTaxIncluded: $isTaxIncluded, isInDeliveryLeadTime: $isInDeliveryLeadTime, isReserveProduct: $isReserveProduct, isBeforeChangeProductClosingDatetime: $isBeforeChangeProductClosingDatetime, epochChangeProductClosingDatetime: $epochChangeProductClosingDatetime, isRegularShipmentApplyProduct: $isRegularShipmentApplyProduct, isRegularShipmentDiscount: $isRegularShipmentDiscount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartDetailsModel'))
      ..add(DiagnosticsProperty('reserveCode', reserveCode))
      ..add(DiagnosticsProperty('productId', productId))
      ..add(DiagnosticsProperty('quantity', quantity))
      ..add(DiagnosticsProperty('isDrugProduct', isDrugProduct))
      ..add(DiagnosticsProperty('isFavoriteAdded', isFavoriteAdded))
      ..add(DiagnosticsProperty('productImagePath', productImagePath))
      ..add(DiagnosticsProperty(
          'frontProductImageFullPath', frontProductImageFullPath))
      ..add(DiagnosticsProperty('isDisplayWhiteImage', isDisplayWhiteImage))
      ..add(DiagnosticsProperty('productImageAlt', productImageAlt))
      ..add(DiagnosticsProperty(
          'isReducedTaxRateProduct', isReducedTaxRateProduct))
      ..add(DiagnosticsProperty(
          'isTodayDeliveryLimitedProduct', isTodayDeliveryLimitedProduct))
      ..add(DiagnosticsProperty(
          'todayDeliveryLimitedDatetime', todayDeliveryLimitedDatetime))
      ..add(DiagnosticsProperty(
          'isMarketDeliveryLimitedProduct', isMarketDeliveryLimitedProduct))
      ..add(DiagnosticsProperty('marketTimes', marketTimes))
      ..add(DiagnosticsProperty(
          'isPosOrderLimitedProduct', isPosOrderLimitedProduct))
      ..add(DiagnosticsProperty(
          'isPosOrderAllLimitedProduct', isPosOrderAllLimitedProduct))
      ..add(DiagnosticsProperty(
          'posOrderLimitedDatetime', posOrderLimitedDatetime))
      ..add(DiagnosticsProperty(
          'isNanacoPointPromotionDetails', isNanacoPointPromotionDetails))
      ..add(DiagnosticsProperty('nanacoPointUnitPoint', nanacoPointUnitPoint))
      ..add(DiagnosticsProperty('isExceedStock', isExceedStock))
      ..add(DiagnosticsProperty('productName', productName))
      ..add(DiagnosticsProperty('isMixMatchDiscount', isMixMatchDiscount))
      ..add(DiagnosticsProperty('isSetSaleDiscount', isSetSaleDiscount))
      ..add(DiagnosticsProperty('isProgressiveDiscount', isProgressiveDiscount))
      ..add(DiagnosticsProperty('isCardMemberDiscount', isCardMemberDiscount))
      ..add(DiagnosticsProperty('isIyCardDiscount', isIyCardDiscount))
      ..add(DiagnosticsProperty('isCouponDiscount', isCouponDiscount))
      ..add(DiagnosticsProperty('isSellingOffDiscount', isSellingOffDiscount))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('noTaxPrice', noTaxPrice))
      ..add(DiagnosticsProperty('maxBuyCount', maxBuyCount))
      ..add(DiagnosticsProperty('productDetailKey', productDetailKey))
      ..add(DiagnosticsProperty('salePrice', salePrice))
      ..add(DiagnosticsProperty('isTaxIncluded', isTaxIncluded))
      ..add(DiagnosticsProperty('isInDeliveryLeadTime', isInDeliveryLeadTime))
      ..add(DiagnosticsProperty('isReserveProduct', isReserveProduct))
      ..add(DiagnosticsProperty('isBeforeChangeProductClosingDatetime',
          isBeforeChangeProductClosingDatetime))
      ..add(DiagnosticsProperty('epochChangeProductClosingDatetime',
          epochChangeProductClosingDatetime))
      ..add(DiagnosticsProperty(
          'isRegularShipmentApplyProduct', isRegularShipmentApplyProduct))
      ..add(DiagnosticsProperty(
          'isRegularShipmentDiscount', isRegularShipmentDiscount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDetailsModel &&
            (identical(other.reserveCode, reserveCode) ||
                other.reserveCode == reserveCode) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isDrugProduct, isDrugProduct) ||
                other.isDrugProduct == isDrugProduct) &&
            (identical(other.isFavoriteAdded, isFavoriteAdded) ||
                other.isFavoriteAdded == isFavoriteAdded) &&
            (identical(other.productImagePath, productImagePath) ||
                other.productImagePath == productImagePath) &&
            (identical(other.frontProductImageFullPath, frontProductImageFullPath) ||
                other.frontProductImageFullPath == frontProductImageFullPath) &&
            (identical(other.isDisplayWhiteImage, isDisplayWhiteImage) ||
                other.isDisplayWhiteImage == isDisplayWhiteImage) &&
            (identical(other.productImageAlt, productImageAlt) ||
                other.productImageAlt == productImageAlt) &&
            (identical(other.isReducedTaxRateProduct, isReducedTaxRateProduct) ||
                other.isReducedTaxRateProduct == isReducedTaxRateProduct) &&
            (identical(other.isTodayDeliveryLimitedProduct, isTodayDeliveryLimitedProduct) ||
                other.isTodayDeliveryLimitedProduct ==
                    isTodayDeliveryLimitedProduct) &&
            (identical(other.todayDeliveryLimitedDatetime, todayDeliveryLimitedDatetime) ||
                other.todayDeliveryLimitedDatetime ==
                    todayDeliveryLimitedDatetime) &&
            (identical(other.isMarketDeliveryLimitedProduct, isMarketDeliveryLimitedProduct) ||
                other.isMarketDeliveryLimitedProduct ==
                    isMarketDeliveryLimitedProduct) &&
            const DeepCollectionEquality()
                .equals(other._marketTimes, _marketTimes) &&
            (identical(other.isPosOrderLimitedProduct, isPosOrderLimitedProduct) ||
                other.isPosOrderLimitedProduct == isPosOrderLimitedProduct) &&
            (identical(other.isPosOrderAllLimitedProduct, isPosOrderAllLimitedProduct) ||
                other.isPosOrderAllLimitedProduct ==
                    isPosOrderAllLimitedProduct) &&
            (identical(other.posOrderLimitedDatetime, posOrderLimitedDatetime) ||
                other.posOrderLimitedDatetime == posOrderLimitedDatetime) &&
            (identical(other.isNanacoPointPromotionDetails, isNanacoPointPromotionDetails) ||
                other.isNanacoPointPromotionDetails ==
                    isNanacoPointPromotionDetails) &&
            (identical(other.nanacoPointUnitPoint, nanacoPointUnitPoint) ||
                other.nanacoPointUnitPoint == nanacoPointUnitPoint) &&
            (identical(other.isExceedStock, isExceedStock) ||
                other.isExceedStock == isExceedStock) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.isMixMatchDiscount, isMixMatchDiscount) || other.isMixMatchDiscount == isMixMatchDiscount) &&
            (identical(other.isSetSaleDiscount, isSetSaleDiscount) || other.isSetSaleDiscount == isSetSaleDiscount) &&
            (identical(other.isProgressiveDiscount, isProgressiveDiscount) || other.isProgressiveDiscount == isProgressiveDiscount) &&
            (identical(other.isCardMemberDiscount, isCardMemberDiscount) || other.isCardMemberDiscount == isCardMemberDiscount) &&
            (identical(other.isIyCardDiscount, isIyCardDiscount) || other.isIyCardDiscount == isIyCardDiscount) &&
            (identical(other.isCouponDiscount, isCouponDiscount) || other.isCouponDiscount == isCouponDiscount) &&
            (identical(other.isSellingOffDiscount, isSellingOffDiscount) || other.isSellingOffDiscount == isSellingOffDiscount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.noTaxPrice, noTaxPrice) || other.noTaxPrice == noTaxPrice) &&
            (identical(other.maxBuyCount, maxBuyCount) || other.maxBuyCount == maxBuyCount) &&
            (identical(other.productDetailKey, productDetailKey) || other.productDetailKey == productDetailKey) &&
            (identical(other.salePrice, salePrice) || other.salePrice == salePrice) &&
            (identical(other.isTaxIncluded, isTaxIncluded) || other.isTaxIncluded == isTaxIncluded) &&
            (identical(other.isInDeliveryLeadTime, isInDeliveryLeadTime) || other.isInDeliveryLeadTime == isInDeliveryLeadTime) &&
            (identical(other.isReserveProduct, isReserveProduct) || other.isReserveProduct == isReserveProduct) &&
            (identical(other.isBeforeChangeProductClosingDatetime, isBeforeChangeProductClosingDatetime) || other.isBeforeChangeProductClosingDatetime == isBeforeChangeProductClosingDatetime) &&
            (identical(other.epochChangeProductClosingDatetime, epochChangeProductClosingDatetime) || other.epochChangeProductClosingDatetime == epochChangeProductClosingDatetime) &&
            (identical(other.isRegularShipmentApplyProduct, isRegularShipmentApplyProduct) || other.isRegularShipmentApplyProduct == isRegularShipmentApplyProduct) &&
            (identical(other.isRegularShipmentDiscount, isRegularShipmentDiscount) || other.isRegularShipmentDiscount == isRegularShipmentDiscount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        reserveCode,
        productId,
        quantity,
        isDrugProduct,
        isFavoriteAdded,
        productImagePath,
        frontProductImageFullPath,
        isDisplayWhiteImage,
        productImageAlt,
        isReducedTaxRateProduct,
        isTodayDeliveryLimitedProduct,
        todayDeliveryLimitedDatetime,
        isMarketDeliveryLimitedProduct,
        const DeepCollectionEquality().hash(_marketTimes),
        isPosOrderLimitedProduct,
        isPosOrderAllLimitedProduct,
        posOrderLimitedDatetime,
        isNanacoPointPromotionDetails,
        nanacoPointUnitPoint,
        isExceedStock,
        productName,
        isMixMatchDiscount,
        isSetSaleDiscount,
        isProgressiveDiscount,
        isCardMemberDiscount,
        isIyCardDiscount,
        isCouponDiscount,
        isSellingOffDiscount,
        price,
        noTaxPrice,
        maxBuyCount,
        productDetailKey,
        salePrice,
        isTaxIncluded,
        isInDeliveryLeadTime,
        isReserveProduct,
        isBeforeChangeProductClosingDatetime,
        epochChangeProductClosingDatetime,
        isRegularShipmentApplyProduct,
        isRegularShipmentDiscount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartDetailsModelCopyWith<_$_CartDetailsModel> get copyWith =>
      __$$_CartDetailsModelCopyWithImpl<_$_CartDetailsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDetailsModelToJson(
      this,
    );
  }
}

abstract class _CartDetailsModel extends CartDetailsModel {
  const factory _CartDetailsModel(
      {final String reserveCode,
      final String productId,
      final int quantity,
      final bool isDrugProduct,
      final bool isFavoriteAdded,
      final String productImagePath,
      final String frontProductImageFullPath,
      final bool isDisplayWhiteImage,
      final String productImageAlt,
      final bool isReducedTaxRateProduct,
      final bool isTodayDeliveryLimitedProduct,
      final String todayDeliveryLimitedDatetime,
      final bool isMarketDeliveryLimitedProduct,
      final List<MarketTimeFromToModel> marketTimes,
      final bool isPosOrderLimitedProduct,
      final bool isPosOrderAllLimitedProduct,
      final String posOrderLimitedDatetime,
      final bool isNanacoPointPromotionDetails,
      final int nanacoPointUnitPoint,
      final bool isExceedStock,
      final String productName,
      final bool isMixMatchDiscount,
      final bool isSetSaleDiscount,
      final bool isProgressiveDiscount,
      final bool isCardMemberDiscount,
      final bool isIyCardDiscount,
      final bool isCouponDiscount,
      final bool isSellingOffDiscount,
      final int price,
      final int noTaxPrice,
      final int maxBuyCount,
      final String productDetailKey,
      final int salePrice,
      final bool isTaxIncluded,
      final bool isInDeliveryLeadTime,
      final bool isReserveProduct,
      final bool isBeforeChangeProductClosingDatetime,
      @NullableStringToEpochTimeConverter()
      @JsonKey(name: 'change_product_closing_datetime')
          final int? epochChangeProductClosingDatetime,
      final bool isRegularShipmentApplyProduct,
      final bool isRegularShipmentDiscount}) = _$_CartDetailsModel;
  const _CartDetailsModel._() : super._();

  factory _CartDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_CartDetailsModel.fromJson;

  @override /* 予約コード */
  String get reserveCode;
  @override /* 商品コード */
  String get productId;
  @override /* 数量 */
  int get quantity;
  @override /* 医薬品扱い商品判定 ``` true：医薬品扱い false：医薬品扱いでない ``` */
  bool get isDrugProduct;
  @override /* お気に入り追加済み判定 ``` true：お気に入り追加済み false：お気に入り未追加 ``` */
  bool get isFavoriteAdded;
  @override /* 商品画像パス（コンテキストルートは含まない） */
  String get productImagePath;
  @override /* 商品画像のフロント用フルパス */
  String get frontProductImageFullPath;
  @override /*
    ホワイト画像表示フラグ
    - 通常商品の場合
      true：「販促対象」かつ「画像なし」の商品​の場合
      false：「販促対象」かつ「画像なし」の商品​以外の場合
    - 予約商品の場合
      true：「画像なし」の商品​の場合
      false：「画像なし」の商品​以外の場合
    */
  bool get isDisplayWhiteImage;
  @override /* 商品画像-商品名 */
  String get productImageAlt;
  @override /* 軽減税率商品判定 ``` true：軽減税率商品 false：軽減税率商品でない ``` */
  bool get isReducedTaxRateProduct;
  @override /* 当日配送限り商品判定 ``` true：当日配送限り商品 false：当日配送限り商品でない ``` */
  bool get isTodayDeliveryLimitedProduct;
  @override /* 当日配送限り商品有効期間 YYYY-MM-DDThh:mm:ss+09:00 */
  String get todayDeliveryLimitedDatetime;
  @override /* 配送便限定市商品判定 ``` true：配送便限定市商品 false：配送便限定市商品でない ``` */
  bool get isMarketDeliveryLimitedProduct;
  @override /* 市商品時間帯リスト */
  List<MarketTimeFromToModel> get marketTimes;
  @override /* POS発注制限あり商品判定 ``` true：POS発注制限あり商品 false：POS発注制限あり商品でない ``` */
  bool get isPosOrderLimitedProduct;
  @override /* 全配送日・全便のPOS発注制限あり商品判定 ``` true：全配送日・全便のPOS発注制限あり商品 false：全配送日・全便のPOS発注制限あり商品でない ``` */
  bool get isPosOrderAllLimitedProduct;
  @override /* POS発注制限あり商品配達可能日　※YYYY-MM-DDThh:mm:ss+09:00 */
  String get posOrderLimitedDatetime;
  @override /* nanaco販促ポイント対象商品判定 ``` true：nanaco販促ポイント対象商品 false：nanaco販促ポイント対象商品でない ``` */
  bool get isNanacoPointPromotionDetails;
  @override /* nanaco付与単位ポイント */
  int get nanacoPointUnitPoint;
  @override /* 注文時在庫数超過判定 ``` true：注文時在庫数超過 false：注文時在庫数超過でない ``` */
  bool get isExceedStock;
  @override /* 商品名 */
  String get productName;
  @override /* よりどりまとめて値引判定 ``` true：よりどりまとめて値引対象商品 false：よりどりまとめて値引対象外 ``` */
  bool get isMixMatchDiscount;
  @override /* セット販売等割引判定 ``` true：セット販売・セット値引・予約セット割引のいずれかの対象商品 false：上記割引対象外 ``` */
  bool get isSetSaleDiscount;
  @override /* 点数まとめて値引判定 ``` true：点数まとめて値引対象商品 false：点数まとめて値引対象外 ``` */
  bool get isProgressiveDiscount;
  @override /* カード会員割引判定 ``` true：カード会員割引対象商品 false：カード会員割引対象外 ``` */
  bool get isCardMemberDiscount;
  @override /* アイワイ/セブンカード割引判定 ``` true：アイワイ/セブンカード割引対象商品 false：アイワイ/セブンカード割引対象外 ``` */
  bool get isIyCardDiscount;
  @override /* クーポン指定商品値引判定 ``` true：クーポン指定商品値引対象商品 false：クーポン指定商品値引対象外 ``` */
  bool get isCouponDiscount;
  @override /* 売り切りセール値引判定 ``` true：売り切りセール値引対象商品 false：売り切りセール値引対象外 ``` */
  bool get isSellingOffDiscount;
  @override /* 売価(税込) */
  int get price;
  @override /* 売価(税抜) */
  int get noTaxPrice;
  @override /* 購入可能数 */
  int get maxBuyCount;
  @override /* JAN明細分割キー */
  String get productDetailKey;
  @override /* 販売額小計 */
  int get salePrice;
  @override /* 税込判定 ``` true：税込である false：税込みでない ``` */
  bool get isTaxIncluded;
  @override /* 納品リードタイム期間内判定 ``` true：納品リードタイム期間内 false：納品リードタイム期間外 ``` */
  bool get isInDeliveryLeadTime;
  @override /* 予約商品判定 ``` true：予約商品 false：予約商品でない ``` */
  bool get isReserveProduct;
  @override /* フロント商品変更締め日時前の判定 ``` true：締め日時前 false：締め日時を過ぎている ``` */
  bool get isBeforeChangeProductClosingDatetime;
  @override /* 商品変更締め日時 - ※yyyy-MM-ddTHH:mm:ss+09:00 - カートのフロント変更締日時とカート商品のフロント商品変更締日時が同じ場合、nullを返却 */
  @NullableStringToEpochTimeConverter()
  @JsonKey(name: 'change_product_closing_datetime')
  int? get epochChangeProductClosingDatetime;
  @override /* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
  bool get isRegularShipmentApplyProduct;
  @override /* 定期便割引判定 - true：割引あり - false：割引なし */
  bool get isRegularShipmentDiscount;
  @override
  @JsonKey(ignore: true)
  _$$_CartDetailsModelCopyWith<_$_CartDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
