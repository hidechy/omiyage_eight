import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_details_list_model.freezed.dart';
part 'order_details_list_model.g.dart';

@freezed
class OrderDetailsListModel with _$OrderDetailsListModel {
  const OrderDetailsListModel._();

  const factory OrderDetailsListModel({
    /* 割引対象表示記号 ~~~ 以下の判定によって表示する表示記号を制御しているため判定をAPI側で巻き取り表示記号を返却 1. ミックスマッチ値引きを含んだJANかどうかを判定 2. セット割値引きを含んだJANかどうかを判定する 3. 累進割引が効いたJANかどうかを判定する 4. カード会員割引が効いたJANかどうかを判定 5. アイワイ/セブンカード割引が効いているかつ、IYC割引対象のJANであるかを判定 6. クーポン指定商品値引 円引/%割引 対象判定 ~~~ */
    @Default('') String orderDiscountSymbol,
    /* この商品が予約商品なのか判定 - true：予約商品である - false：予約商品でない */
    @Default(false) bool isReserveProduct,
    /* 予約商品コードを返却 */
    @Default('') String reserveCode,
    /* この商品が代替商品なのか判定 - true：代替商品である - false：代替商品ではない */
    @Default(false) bool isAlternativeProduct,
    /* 産地を返却 */
    @Default('') String producingArea,
    /* 商品名称を返却 */
    @Default('') String productName,
    /* 軽減税率商品の判定を返却 - true：軽減税率商品である - false：軽減税率商品ではない */
    @Default(false) bool isReducedTaxRateProduct,
    /* (売単価 - 一括値引額 - 期間割引値引額)を算出して返却 */
    @Default(0) int price,
    /* この受注商品が商品２を持つのか（飲料なのか）判定する - true：飲料である - false：飲料ではない */
    @Default(false) bool isDrink,
    /* 常温個数を返却 */
    @Default(0) int quantity,
    /* 冷蔵個数を返却 */
    @Default(0) int coolQuantity,
    /* 割引対象区分を返却 ``` \"1\"：(％) \"2\"：(円) ``` */
    @Default(DiscountType.rate) DiscountType discountType,
    /* 税込み判定 */
    @Default(false) bool isTaxIncluded,
    /* 定期便申込商品判定 - true：定期便申込商品 - false：定期便申込商品でない */
    @Default(false) bool isRegularShipmentApplyProduct,
    /* 商品ID */
    @Default('') String productId,
    /* 定貫区分 ``` null：OB商品、\"1\"：不定貫商品、\"2\"：定貫商品```  */
    @Default(FixedWeightDiv.ob) FixedWeightDiv fixedWeightDiv,
    /* 税抜き価格 */
    @Default(0) int basePrice,
    /* 販売額小計 */
    @Default(0) int salePrice,
    /* 商品画像のファイルパス - pri1imagefileの有無で異なる - front_div='3：スマートフォン'の場合、thumbnailのあとに「pc」が入る */
    @Default('') String thumbnailImagePath,
    /* 商品画像のファイル名 pri1imagefileの有無で異なる */
    @Default('') String thumbnailImageFileName,
    /* 税区分を返却 \"1\"：税込み \"2\"：非課税 */
    @Default(TaxDiv.taxIncluded) TaxDiv taxDiv,
    /* 商品画像のフロント用フルパス_BFFADD_ ``` 商品の画像なしの場合：”/static/asset/white.jpg” 商品の画像ありの場合：ファイルパス + ”/” + ファイル名 ファイルパスまたはファイル名が無い場合：null ``` */
    @Default('') String frontThumbnailImageFullPath,
  }) = _OrderDetailsListModel;

  factory OrderDetailsListModel.fromJson(Map<String, dynamic> json) => _$OrderDetailsListModelFromJson(json);

  int get totalQuantity => quantity + coolQuantity;
}

/* 割引対象区分を返却 */
enum DiscountType {
  /* ％ */
  @JsonValue('1')
  rate,
  /* 円 */
  @JsonValue('2')
  cash,
}

/* 定貫区分 */
enum FixedWeightDiv {
  /* 不定貫商品 */
  @JsonValue('1')
  saleByMeasure,
  /* 定貫商品 */
  @JsonValue('2')
  regular,
  /* OB商品 */
  @JsonValue(null)
  ob,
}

/* 税区分 */
enum TaxDiv {
  /* 税込み */
  @JsonValue('1')
  taxIncluded,
  /* 非課税 */
  @JsonValue('2')
  taxExempt,
}
