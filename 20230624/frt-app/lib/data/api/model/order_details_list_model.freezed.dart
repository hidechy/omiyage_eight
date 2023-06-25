// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_details_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailsListModel _$OrderDetailsListModelFromJson(
    Map<String, dynamic> json) {
  return _OrderDetailsListModel.fromJson(json);
}

/// @nodoc
mixin _$OrderDetailsListModel {
/* 割引対象表示記号 ~~~ 以下の判定によって表示する表示記号を制御しているため判定をAPI側で巻き取り表示記号を返却 1. ミックスマッチ値引きを含んだJANかどうかを判定 2. セット割値引きを含んだJANかどうかを判定する 3. 累進割引が効いたJANかどうかを判定する 4. カード会員割引が効いたJANかどうかを判定 5. アイワイ/セブンカード割引が効いているかつ、IYC割引対象のJANであるかを判定 6. クーポン指定商品値引 円引/%割引 対象判定 ~~~ */
  String get orderDiscountSymbol =>
      throw _privateConstructorUsedError; /* この商品が予約商品なのか判定 - true：予約商品である - false：予約商品でない */
  bool get isReserveProduct =>
      throw _privateConstructorUsedError; /* 予約商品コードを返却 */
  String get reserveCode =>
      throw _privateConstructorUsedError; /* この商品が代替商品なのか判定 - true：代替商品である - false：代替商品ではない */
  bool get isAlternativeProduct =>
      throw _privateConstructorUsedError; /* 産地を返却 */
  String get producingArea => throw _privateConstructorUsedError; /* 商品名称を返却 */
  String get productName =>
      throw _privateConstructorUsedError; /* 軽減税率商品の判定を返却 - true：軽減税率商品である - false：軽減税率商品ではない */
  bool get isReducedTaxRateProduct =>
      throw _privateConstructorUsedError; /* (売単価 - 一括値引額 - 期間割引値引額)を算出して返却 */
  int get price =>
      throw _privateConstructorUsedError; /* この受注商品が商品２を持つのか（飲料なのか）判定する - true：飲料である - false：飲料ではない */
  bool get isDrink => throw _privateConstructorUsedError; /* 常温個数を返却 */
  int get quantity => throw _privateConstructorUsedError; /* 冷蔵個数を返却 */
  int get coolQuantity =>
      throw _privateConstructorUsedError; /* 割引対象区分を返却 ``` \"1\"：(％) \"2\"：(円) ``` */
  DiscountType get discountType =>
      throw _privateConstructorUsedError; /* 税込み判定 */
  bool get isTaxIncluded =>
      throw _privateConstructorUsedError; /* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
  bool get isRegularShipmentApplyProduct =>
      throw _privateConstructorUsedError; /* 商品ID */
  String get productId =>
      throw _privateConstructorUsedError; /* 定貫区分 ``` null：OB商品、\"1\"：不定貫商品、\"2\"：定貫商品```  */
  FixedWeightDiv get fixedWeightDiv =>
      throw _privateConstructorUsedError; /* 税抜き価格 */
  int get basePrice => throw _privateConstructorUsedError; /* 販売額小計 */
  int get salePrice =>
      throw _privateConstructorUsedError; /* 商品画像のファイルパス - pri1imagefileの有無で異なる - front_div='3：スマートフォン'の場合、thumbnailのあとに「pc」が入る */
  String get thumbnailImagePath =>
      throw _privateConstructorUsedError; /* 商品画像のファイル名 pri1imagefileの有無で異なる */
  String get thumbnailImageFileName =>
      throw _privateConstructorUsedError; /* 税区分を返却 \"1\"：税込み \"2\"：非課税 */
  TaxDiv get taxDiv =>
      throw _privateConstructorUsedError; /* 商品画像のフロント用フルパス_BFFADD_ ``` 商品の画像なしの場合：”/static/asset/white.jpg” 商品の画像ありの場合：ファイルパス + ”/” + ファイル名 ファイルパスまたはファイル名が無い場合：null ``` */
  String get frontThumbnailImageFullPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailsListModelCopyWith<OrderDetailsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailsListModelCopyWith<$Res> {
  factory $OrderDetailsListModelCopyWith(OrderDetailsListModel value,
          $Res Function(OrderDetailsListModel) then) =
      _$OrderDetailsListModelCopyWithImpl<$Res, OrderDetailsListModel>;
  @useResult
  $Res call(
      {String orderDiscountSymbol,
      bool isReserveProduct,
      String reserveCode,
      bool isAlternativeProduct,
      String producingArea,
      String productName,
      bool isReducedTaxRateProduct,
      int price,
      bool isDrink,
      int quantity,
      int coolQuantity,
      DiscountType discountType,
      bool isTaxIncluded,
      bool isRegularShipmentApplyProduct,
      String productId,
      FixedWeightDiv fixedWeightDiv,
      int basePrice,
      int salePrice,
      String thumbnailImagePath,
      String thumbnailImageFileName,
      TaxDiv taxDiv,
      String frontThumbnailImageFullPath});
}

/// @nodoc
class _$OrderDetailsListModelCopyWithImpl<$Res,
        $Val extends OrderDetailsListModel>
    implements $OrderDetailsListModelCopyWith<$Res> {
  _$OrderDetailsListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDiscountSymbol = null,
    Object? isReserveProduct = null,
    Object? reserveCode = null,
    Object? isAlternativeProduct = null,
    Object? producingArea = null,
    Object? productName = null,
    Object? isReducedTaxRateProduct = null,
    Object? price = null,
    Object? isDrink = null,
    Object? quantity = null,
    Object? coolQuantity = null,
    Object? discountType = null,
    Object? isTaxIncluded = null,
    Object? isRegularShipmentApplyProduct = null,
    Object? productId = null,
    Object? fixedWeightDiv = null,
    Object? basePrice = null,
    Object? salePrice = null,
    Object? thumbnailImagePath = null,
    Object? thumbnailImageFileName = null,
    Object? taxDiv = null,
    Object? frontThumbnailImageFullPath = null,
  }) {
    return _then(_value.copyWith(
      orderDiscountSymbol: null == orderDiscountSymbol
          ? _value.orderDiscountSymbol
          : orderDiscountSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      isReserveProduct: null == isReserveProduct
          ? _value.isReserveProduct
          : isReserveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      reserveCode: null == reserveCode
          ? _value.reserveCode
          : reserveCode // ignore: cast_nullable_to_non_nullable
              as String,
      isAlternativeProduct: null == isAlternativeProduct
          ? _value.isAlternativeProduct
          : isAlternativeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      producingArea: null == producingArea
          ? _value.producingArea
          : producingArea // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      isReducedTaxRateProduct: null == isReducedTaxRateProduct
          ? _value.isReducedTaxRateProduct
          : isReducedTaxRateProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isDrink: null == isDrink
          ? _value.isDrink
          : isDrink // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      coolQuantity: null == coolQuantity
          ? _value.coolQuantity
          : coolQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      isTaxIncluded: null == isTaxIncluded
          ? _value.isTaxIncluded
          : isTaxIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentApplyProduct: null == isRegularShipmentApplyProduct
          ? _value.isRegularShipmentApplyProduct
          : isRegularShipmentApplyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      fixedWeightDiv: null == fixedWeightDiv
          ? _value.fixedWeightDiv
          : fixedWeightDiv // ignore: cast_nullable_to_non_nullable
              as FixedWeightDiv,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImageFileName: null == thumbnailImageFileName
          ? _value.thumbnailImageFileName
          : thumbnailImageFileName // ignore: cast_nullable_to_non_nullable
              as String,
      taxDiv: null == taxDiv
          ? _value.taxDiv
          : taxDiv // ignore: cast_nullable_to_non_nullable
              as TaxDiv,
      frontThumbnailImageFullPath: null == frontThumbnailImageFullPath
          ? _value.frontThumbnailImageFullPath
          : frontThumbnailImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OrderDetailsListModelCopyWith<$Res>
    implements $OrderDetailsListModelCopyWith<$Res> {
  factory _$$_OrderDetailsListModelCopyWith(_$_OrderDetailsListModel value,
          $Res Function(_$_OrderDetailsListModel) then) =
      __$$_OrderDetailsListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderDiscountSymbol,
      bool isReserveProduct,
      String reserveCode,
      bool isAlternativeProduct,
      String producingArea,
      String productName,
      bool isReducedTaxRateProduct,
      int price,
      bool isDrink,
      int quantity,
      int coolQuantity,
      DiscountType discountType,
      bool isTaxIncluded,
      bool isRegularShipmentApplyProduct,
      String productId,
      FixedWeightDiv fixedWeightDiv,
      int basePrice,
      int salePrice,
      String thumbnailImagePath,
      String thumbnailImageFileName,
      TaxDiv taxDiv,
      String frontThumbnailImageFullPath});
}

/// @nodoc
class __$$_OrderDetailsListModelCopyWithImpl<$Res>
    extends _$OrderDetailsListModelCopyWithImpl<$Res, _$_OrderDetailsListModel>
    implements _$$_OrderDetailsListModelCopyWith<$Res> {
  __$$_OrderDetailsListModelCopyWithImpl(_$_OrderDetailsListModel _value,
      $Res Function(_$_OrderDetailsListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderDiscountSymbol = null,
    Object? isReserveProduct = null,
    Object? reserveCode = null,
    Object? isAlternativeProduct = null,
    Object? producingArea = null,
    Object? productName = null,
    Object? isReducedTaxRateProduct = null,
    Object? price = null,
    Object? isDrink = null,
    Object? quantity = null,
    Object? coolQuantity = null,
    Object? discountType = null,
    Object? isTaxIncluded = null,
    Object? isRegularShipmentApplyProduct = null,
    Object? productId = null,
    Object? fixedWeightDiv = null,
    Object? basePrice = null,
    Object? salePrice = null,
    Object? thumbnailImagePath = null,
    Object? thumbnailImageFileName = null,
    Object? taxDiv = null,
    Object? frontThumbnailImageFullPath = null,
  }) {
    return _then(_$_OrderDetailsListModel(
      orderDiscountSymbol: null == orderDiscountSymbol
          ? _value.orderDiscountSymbol
          : orderDiscountSymbol // ignore: cast_nullable_to_non_nullable
              as String,
      isReserveProduct: null == isReserveProduct
          ? _value.isReserveProduct
          : isReserveProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      reserveCode: null == reserveCode
          ? _value.reserveCode
          : reserveCode // ignore: cast_nullable_to_non_nullable
              as String,
      isAlternativeProduct: null == isAlternativeProduct
          ? _value.isAlternativeProduct
          : isAlternativeProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      producingArea: null == producingArea
          ? _value.producingArea
          : producingArea // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      isReducedTaxRateProduct: null == isReducedTaxRateProduct
          ? _value.isReducedTaxRateProduct
          : isReducedTaxRateProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isDrink: null == isDrink
          ? _value.isDrink
          : isDrink // ignore: cast_nullable_to_non_nullable
              as bool,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      coolQuantity: null == coolQuantity
          ? _value.coolQuantity
          : coolQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      discountType: null == discountType
          ? _value.discountType
          : discountType // ignore: cast_nullable_to_non_nullable
              as DiscountType,
      isTaxIncluded: null == isTaxIncluded
          ? _value.isTaxIncluded
          : isTaxIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      isRegularShipmentApplyProduct: null == isRegularShipmentApplyProduct
          ? _value.isRegularShipmentApplyProduct
          : isRegularShipmentApplyProduct // ignore: cast_nullable_to_non_nullable
              as bool,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      fixedWeightDiv: null == fixedWeightDiv
          ? _value.fixedWeightDiv
          : fixedWeightDiv // ignore: cast_nullable_to_non_nullable
              as FixedWeightDiv,
      basePrice: null == basePrice
          ? _value.basePrice
          : basePrice // ignore: cast_nullable_to_non_nullable
              as int,
      salePrice: null == salePrice
          ? _value.salePrice
          : salePrice // ignore: cast_nullable_to_non_nullable
              as int,
      thumbnailImagePath: null == thumbnailImagePath
          ? _value.thumbnailImagePath
          : thumbnailImagePath // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImageFileName: null == thumbnailImageFileName
          ? _value.thumbnailImageFileName
          : thumbnailImageFileName // ignore: cast_nullable_to_non_nullable
              as String,
      taxDiv: null == taxDiv
          ? _value.taxDiv
          : taxDiv // ignore: cast_nullable_to_non_nullable
              as TaxDiv,
      frontThumbnailImageFullPath: null == frontThumbnailImageFullPath
          ? _value.frontThumbnailImageFullPath
          : frontThumbnailImageFullPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailsListModel extends _OrderDetailsListModel {
  const _$_OrderDetailsListModel(
      {this.orderDiscountSymbol = '',
      this.isReserveProduct = false,
      this.reserveCode = '',
      this.isAlternativeProduct = false,
      this.producingArea = '',
      this.productName = '',
      this.isReducedTaxRateProduct = false,
      this.price = 0,
      this.isDrink = false,
      this.quantity = 0,
      this.coolQuantity = 0,
      this.discountType = DiscountType.rate,
      this.isTaxIncluded = false,
      this.isRegularShipmentApplyProduct = false,
      this.productId = '',
      this.fixedWeightDiv = FixedWeightDiv.ob,
      this.basePrice = 0,
      this.salePrice = 0,
      this.thumbnailImagePath = '',
      this.thumbnailImageFileName = '',
      this.taxDiv = TaxDiv.taxIncluded,
      this.frontThumbnailImageFullPath = ''})
      : super._();

  factory _$_OrderDetailsListModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderDetailsListModelFromJson(json);

/* 割引対象表示記号 ~~~ 以下の判定によって表示する表示記号を制御しているため判定をAPI側で巻き取り表示記号を返却 1. ミックスマッチ値引きを含んだJANかどうかを判定 2. セット割値引きを含んだJANかどうかを判定する 3. 累進割引が効いたJANかどうかを判定する 4. カード会員割引が効いたJANかどうかを判定 5. アイワイ/セブンカード割引が効いているかつ、IYC割引対象のJANであるかを判定 6. クーポン指定商品値引 円引/%割引 対象判定 ~~~ */
  @override
  @JsonKey()
  final String orderDiscountSymbol;
/* この商品が予約商品なのか判定 - true：予約商品である - false：予約商品でない */
  @override
  @JsonKey()
  final bool isReserveProduct;
/* 予約商品コードを返却 */
  @override
  @JsonKey()
  final String reserveCode;
/* この商品が代替商品なのか判定 - true：代替商品である - false：代替商品ではない */
  @override
  @JsonKey()
  final bool isAlternativeProduct;
/* 産地を返却 */
  @override
  @JsonKey()
  final String producingArea;
/* 商品名称を返却 */
  @override
  @JsonKey()
  final String productName;
/* 軽減税率商品の判定を返却 - true：軽減税率商品である - false：軽減税率商品ではない */
  @override
  @JsonKey()
  final bool isReducedTaxRateProduct;
/* (売単価 - 一括値引額 - 期間割引値引額)を算出して返却 */
  @override
  @JsonKey()
  final int price;
/* この受注商品が商品２を持つのか（飲料なのか）判定する - true：飲料である - false：飲料ではない */
  @override
  @JsonKey()
  final bool isDrink;
/* 常温個数を返却 */
  @override
  @JsonKey()
  final int quantity;
/* 冷蔵個数を返却 */
  @override
  @JsonKey()
  final int coolQuantity;
/* 割引対象区分を返却 ``` \"1\"：(％) \"2\"：(円) ``` */
  @override
  @JsonKey()
  final DiscountType discountType;
/* 税込み判定 */
  @override
  @JsonKey()
  final bool isTaxIncluded;
/* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
  @override
  @JsonKey()
  final bool isRegularShipmentApplyProduct;
/* 商品ID */
  @override
  @JsonKey()
  final String productId;
/* 定貫区分 ``` null：OB商品、\"1\"：不定貫商品、\"2\"：定貫商品```  */
  @override
  @JsonKey()
  final FixedWeightDiv fixedWeightDiv;
/* 税抜き価格 */
  @override
  @JsonKey()
  final int basePrice;
/* 販売額小計 */
  @override
  @JsonKey()
  final int salePrice;
/* 商品画像のファイルパス - pri1imagefileの有無で異なる - front_div='3：スマートフォン'の場合、thumbnailのあとに「pc」が入る */
  @override
  @JsonKey()
  final String thumbnailImagePath;
/* 商品画像のファイル名 pri1imagefileの有無で異なる */
  @override
  @JsonKey()
  final String thumbnailImageFileName;
/* 税区分を返却 \"1\"：税込み \"2\"：非課税 */
  @override
  @JsonKey()
  final TaxDiv taxDiv;
/* 商品画像のフロント用フルパス_BFFADD_ ``` 商品の画像なしの場合：”/static/asset/white.jpg” 商品の画像ありの場合：ファイルパス + ”/” + ファイル名 ファイルパスまたはファイル名が無い場合：null ``` */
  @override
  @JsonKey()
  final String frontThumbnailImageFullPath;

  @override
  String toString() {
    return 'OrderDetailsListModel(orderDiscountSymbol: $orderDiscountSymbol, isReserveProduct: $isReserveProduct, reserveCode: $reserveCode, isAlternativeProduct: $isAlternativeProduct, producingArea: $producingArea, productName: $productName, isReducedTaxRateProduct: $isReducedTaxRateProduct, price: $price, isDrink: $isDrink, quantity: $quantity, coolQuantity: $coolQuantity, discountType: $discountType, isTaxIncluded: $isTaxIncluded, isRegularShipmentApplyProduct: $isRegularShipmentApplyProduct, productId: $productId, fixedWeightDiv: $fixedWeightDiv, basePrice: $basePrice, salePrice: $salePrice, thumbnailImagePath: $thumbnailImagePath, thumbnailImageFileName: $thumbnailImageFileName, taxDiv: $taxDiv, frontThumbnailImageFullPath: $frontThumbnailImageFullPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderDetailsListModel &&
            (identical(other.orderDiscountSymbol, orderDiscountSymbol) ||
                other.orderDiscountSymbol == orderDiscountSymbol) &&
            (identical(other.isReserveProduct, isReserveProduct) ||
                other.isReserveProduct == isReserveProduct) &&
            (identical(other.reserveCode, reserveCode) ||
                other.reserveCode == reserveCode) &&
            (identical(other.isAlternativeProduct, isAlternativeProduct) ||
                other.isAlternativeProduct == isAlternativeProduct) &&
            (identical(other.producingArea, producingArea) ||
                other.producingArea == producingArea) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(
                    other.isReducedTaxRateProduct, isReducedTaxRateProduct) ||
                other.isReducedTaxRateProduct == isReducedTaxRateProduct) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isDrink, isDrink) || other.isDrink == isDrink) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.coolQuantity, coolQuantity) ||
                other.coolQuantity == coolQuantity) &&
            (identical(other.discountType, discountType) ||
                other.discountType == discountType) &&
            (identical(other.isTaxIncluded, isTaxIncluded) ||
                other.isTaxIncluded == isTaxIncluded) &&
            (identical(other.isRegularShipmentApplyProduct,
                    isRegularShipmentApplyProduct) ||
                other.isRegularShipmentApplyProduct ==
                    isRegularShipmentApplyProduct) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.fixedWeightDiv, fixedWeightDiv) ||
                other.fixedWeightDiv == fixedWeightDiv) &&
            (identical(other.basePrice, basePrice) ||
                other.basePrice == basePrice) &&
            (identical(other.salePrice, salePrice) ||
                other.salePrice == salePrice) &&
            (identical(other.thumbnailImagePath, thumbnailImagePath) ||
                other.thumbnailImagePath == thumbnailImagePath) &&
            (identical(other.thumbnailImageFileName, thumbnailImageFileName) ||
                other.thumbnailImageFileName == thumbnailImageFileName) &&
            (identical(other.taxDiv, taxDiv) || other.taxDiv == taxDiv) &&
            (identical(other.frontThumbnailImageFullPath,
                    frontThumbnailImageFullPath) ||
                other.frontThumbnailImageFullPath ==
                    frontThumbnailImageFullPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        orderDiscountSymbol,
        isReserveProduct,
        reserveCode,
        isAlternativeProduct,
        producingArea,
        productName,
        isReducedTaxRateProduct,
        price,
        isDrink,
        quantity,
        coolQuantity,
        discountType,
        isTaxIncluded,
        isRegularShipmentApplyProduct,
        productId,
        fixedWeightDiv,
        basePrice,
        salePrice,
        thumbnailImagePath,
        thumbnailImageFileName,
        taxDiv,
        frontThumbnailImageFullPath
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderDetailsListModelCopyWith<_$_OrderDetailsListModel> get copyWith =>
      __$$_OrderDetailsListModelCopyWithImpl<_$_OrderDetailsListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderDetailsListModelToJson(
      this,
    );
  }
}

abstract class _OrderDetailsListModel extends OrderDetailsListModel {
  const factory _OrderDetailsListModel(
      {final String orderDiscountSymbol,
      final bool isReserveProduct,
      final String reserveCode,
      final bool isAlternativeProduct,
      final String producingArea,
      final String productName,
      final bool isReducedTaxRateProduct,
      final int price,
      final bool isDrink,
      final int quantity,
      final int coolQuantity,
      final DiscountType discountType,
      final bool isTaxIncluded,
      final bool isRegularShipmentApplyProduct,
      final String productId,
      final FixedWeightDiv fixedWeightDiv,
      final int basePrice,
      final int salePrice,
      final String thumbnailImagePath,
      final String thumbnailImageFileName,
      final TaxDiv taxDiv,
      final String frontThumbnailImageFullPath}) = _$_OrderDetailsListModel;
  const _OrderDetailsListModel._() : super._();

  factory _OrderDetailsListModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailsListModel.fromJson;

  @override /* 割引対象表示記号 ~~~ 以下の判定によって表示する表示記号を制御しているため判定をAPI側で巻き取り表示記号を返却 1. ミックスマッチ値引きを含んだJANかどうかを判定 2. セット割値引きを含んだJANかどうかを判定する 3. 累進割引が効いたJANかどうかを判定する 4. カード会員割引が効いたJANかどうかを判定 5. アイワイ/セブンカード割引が効いているかつ、IYC割引対象のJANであるかを判定 6. クーポン指定商品値引 円引/%割引 対象判定 ~~~ */
  String get orderDiscountSymbol;
  @override /* この商品が予約商品なのか判定 - true：予約商品である - false：予約商品でない */
  bool get isReserveProduct;
  @override /* 予約商品コードを返却 */
  String get reserveCode;
  @override /* この商品が代替商品なのか判定 - true：代替商品である - false：代替商品ではない */
  bool get isAlternativeProduct;
  @override /* 産地を返却 */
  String get producingArea;
  @override /* 商品名称を返却 */
  String get productName;
  @override /* 軽減税率商品の判定を返却 - true：軽減税率商品である - false：軽減税率商品ではない */
  bool get isReducedTaxRateProduct;
  @override /* (売単価 - 一括値引額 - 期間割引値引額)を算出して返却 */
  int get price;
  @override /* この受注商品が商品２を持つのか（飲料なのか）判定する - true：飲料である - false：飲料ではない */
  bool get isDrink;
  @override /* 常温個数を返却 */
  int get quantity;
  @override /* 冷蔵個数を返却 */
  int get coolQuantity;
  @override /* 割引対象区分を返却 ``` \"1\"：(％) \"2\"：(円) ``` */
  DiscountType get discountType;
  @override /* 税込み判定 */
  bool get isTaxIncluded;
  @override /* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
  bool get isRegularShipmentApplyProduct;
  @override /* 商品ID */
  String get productId;
  @override /* 定貫区分 ``` null：OB商品、\"1\"：不定貫商品、\"2\"：定貫商品```  */
  FixedWeightDiv get fixedWeightDiv;
  @override /* 税抜き価格 */
  int get basePrice;
  @override /* 販売額小計 */
  int get salePrice;
  @override /* 商品画像のファイルパス - pri1imagefileの有無で異なる - front_div='3：スマートフォン'の場合、thumbnailのあとに「pc」が入る */
  String get thumbnailImagePath;
  @override /* 商品画像のファイル名 pri1imagefileの有無で異なる */
  String get thumbnailImageFileName;
  @override /* 税区分を返却 \"1\"：税込み \"2\"：非課税 */
  TaxDiv get taxDiv;
  @override /* 商品画像のフロント用フルパス_BFFADD_ ``` 商品の画像なしの場合：”/static/asset/white.jpg” 商品の画像ありの場合：ファイルパス + ”/” + ファイル名 ファイルパスまたはファイル名が無い場合：null ``` */
  String get frontThumbnailImageFullPath;
  @override
  @JsonKey(ignore: true)
  _$$_OrderDetailsListModelCopyWith<_$_OrderDetailsListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
