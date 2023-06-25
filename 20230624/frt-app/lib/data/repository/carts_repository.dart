import '../../enum/answer.dart';
import '../api/model/cart_added_item_model.dart';
import '../api/model/cart_changed_quantity_model.dart';
import '../api/model/cart_model.dart';
import '../api/model/changed_cart_model.dart';
import '../api/model/medicine_answer_form.dart';
import '../api/model/response_model.dart';
import '../api/model/shopping_start_check_result_model.dart';

abstract class CartsRepository {
  /// カート商品追加
  /// @param cartId カートID
  /// @param productId 商品ID
  /// @param itemCount 数量　商品購入数
  /// @param answer1 カウンセリング回答1
  /// @param answer2 カウンセリング回答2
  /// @param answer3 カウンセリング回答3
  /// @param medicineAnswerForm 医薬品問診回答内容
  Future<ResponseModel<CartAddedItemModel>> addItems({
    required int cartId,
    required String productId,
    int itemCount,
    AnswerFlag? answer1,
    AnswerFlag? answer2,
    AnswerFlag? answer3,
    MedicineAnswerForm? medicineAnswerForm,
    String? tapContents,
  });

  /// カート情報取得API
  /// @param cartId カートID
  Future<ResponseModel<CartModel>> getCartInfo({int? cartId});

  /// みなし便確保API
  Future<ResponseModel<ShoppingStartCheckResultModel>> deemed({required String shopCode});

  /// カート商品数量変更API
  /// regular_shipment_apply_flagはDaoの中で"0": 定期便申込商品でないを固定で指定します
  ///
  /// @param cartId カートID
  /// @param productId 商品ID
  /// @param itemCount 数量　商品購入数
  /// @param productDetailKey JAN明細分割キー 表示価格を0埋めで9桁にした文字列
  /// @param confirmFlag 価格変更確認済みフラグ
  Future<ResponseModel<CartChangedQuantityModel>> changeItemCount({
    required int cartId,
    required String productId,
    required int itemCount,
    required String productDetailKey,
    String confirmFlag = '0',
  });

  /// カート商品削除API
  /// regular_shipment_apply_flagはDaoの中で"0": 定期便申込商品でないを固定で指定します
  ///
  /// @param cartId カートID
  /// @param productId 商品ID
  /// @param productDetailKey JAN明細分割キー 表示価格を0埋めで9桁にした文字列
  Future<ResponseModel<CartModel>> deleteItem({
    required int cartId,
    required String productId,
    required String productDetailKey,
  });

  /// カート商品全件削除API
  /// @param cartId カートID
  Future<ResponseModel<CartModel>> deleteAllItems({required int cartId});

  /// 便確保(新規注文)API
  Future<ResponseModel<ShoppingStartCheckResultModel>> newOrder({
    required String shopCode,
    // yyyyMMdd
    required String deliveryDate,
    required String deliveryTimeId,
    // false：初回の便選択時
    // true：初回選択時に配送日限定商品ありで返却後、モーダルの「削除する」で便選択を行う場合
    bool deleteLimitedProductFlag,
    // false：非接触受取りを利用しない（デフォルト）
    // true：非接触受取りを利用する
    bool? noContactFlag,
    required bool deletePrecartFlag,
  });

  /// カート情報変更API
  Future<ResponseModel<ChangedCartModel>> changeCartInfo({
    required int cartId,
    // yyyyMMdd
    String? deliveryDate,
    String? deliveryTimeId,
    // false: 下記以外
    // true: 配送日時限定商品の削除承諾
    bool deleteLimitedDeliveryProductFlag,
    bool? noContactFlag,
    bool? refreshOnlyFlag,
  });

  /// 注文変更取消しAPI
  Future<void> cancelChangeOrder({required int cartId});

  /// 赤ちゃん本舗購入事前確認登録
  Future<void> agreeAkachanHonpoConfirmations({required int cartId});

  /// 医薬品購入事前確認登録
  Future<void> agreeMedicineConfirmations({required int cartId});
}
