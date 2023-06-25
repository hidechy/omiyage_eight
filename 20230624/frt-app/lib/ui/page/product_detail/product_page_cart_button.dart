import 'dart:io';

import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../../data/api/model/response_model.dart';
import '../../../enum/analytics_event_type.dart';
import '../../../enum/screen_name.dart';
import '../../../util/analytics_manager.dart';
import '../../../util/cart_info_manager.dart';
import '../../../util/customer_manager.dart';
import '../../common/app_buttons.dart';
import '../../common/app_colors.dart';
import '../../common/app_dialogs.dart';
import '../../common/app_loading.dart';
import '../../common/cart.dart';
import '../../common/error_handler.dart';
import '../../state/customer_state.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';
import '../counseling_page.dart';
import '../delivery_datetime_page.dart';
import '../root_page.dart';
import 'akachan_honpo_confirmations_page.dart';
import 'medicine_answer_form_page.dart';
import 'medicine_confirmations_page.dart';
import 'order_medicine_process_page.dart';

class ProductPageCartButton extends StatelessWidget {
  const ProductPageCartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector3<CartInfoState, ProductDetailPageState, CustomerState, Widget>(
      selector: (_, cart, product, customer) {
        // ボタンのデフォルトはカートへボタン
        Widget button = _addToCartButton(context, false, product, customer);
        final visitorCartFlag = cart.visitorCartFlag;
        final deemedDeliveryCartFlag = cart.deemedDeliveryCartFlag;
        final isAfterLimitedDeliveryDate = product.productDetailModel.product
                .afterLimitedDeliveryDate(
                  visitorCartFlag: visitorCartFlag,
                  deemedDeliveryCartFlag: deemedDeliveryCartFlag,
                )
                .isNotEmpty;

        final isUntilLimitedDeliveryDate = product.productDetailModel.product
                .untilLimitedDeliveryDate(
                  visitorCartFlag: visitorCartFlag,
                  deemedDeliveryCartFlag: deemedDeliveryCartFlag,
                )
                .isNotEmpty;

        final isSellOutDate = product.productDetailModel.product
            .sellOutDate(
              visitorCartFlag: visitorCartFlag,
              deemedDeliveryCartFlag: deemedDeliveryCartFlag,
            )
            .isNotEmpty;
        final visibleLimitedSaleDeliveryInfo =
            isSellOutDate || isAfterLimitedDeliveryDate || isUntilLimitedDeliveryDate;

        final currentColor = product.productNumberState.color;
        final currentSize = product.productNumberState.size;
        final currentMaxNumber = product.productNumberState.maxBuyPossibleNumber;
        final isProductNumber = product.productDetailModel.product.isProductNumber;
        final maxBuyPossibleNumber = product.productDetailModel.product.maxBuyPossibleNumber;

        // 在庫なし
        if (
            // 品番商品以外の在庫なし
            (!isProductNumber && maxBuyPossibleNumber == 0) ||
                // 品番商品の在庫なし、かつ色&サイズが選択済み
                (isProductNumber && currentMaxNumber == 0 && currentColor != null && currentSize != null)) {
          button = _addToCartButton(context, true, product, customer);
          // 配達日時変更
        } else if (visibleLimitedSaleDeliveryInfo) {
          button = _outlinedButton(
            context: context,
            buttonText: '受け取り日時を変更する',
            onPressed: () async {
              final analytics = GetIt.I<AnalyticsManager>();
              analytics.sendEvent(eventType: AnalyticsEventType.changeDeliveryTime);
              final viewModel = context.read<ProductDetailPageViewModel>();

              await showNormalSelectionDialog<void>(
                context: context,
                dialogName: ScreenName.deliveryTimeChangeModal.value,
                title: '受け取り日時を変更しますか？',
                content: const Center(
                  child: Text(
                    '選択する受け取り日時によってはカート内の商品を引き継げない場合がございます',
                  ),
                ),
                applicationText: '変更する',
                onApplied: (context) => () async {
                  final isVisitor = context.read<CustomerManager>().info.isVisitor;
                  if (isVisitor) {
                    viewModel.canReload = false;
                    final result = await showLoginDialog(context: context);
                    if (result ?? false) {
                      viewModel.canReload = true;
                    } else {
                      return;
                    }
                  }
                  final isEnsureCart = await Navigator.of(context, rootNavigator: true).pushReplacement(
                    DeliveryDatetimePage.route(fullscreenDialog: true),
                  );
                  // 便確保成功時、店舗トップに戻す
                  if (isEnsureCart ?? false) {
                    RootPage.flush();
                  }
                },
                cancellationText: 'キャンセル',
                onCanceled: (context) => () => Navigator.pop(context),
              );
            },
          );
        }
        return button;
      },
      builder: (_, data, __) => Center(
        child: FractionallySizedBox(
          widthFactor: 0.72,
          child: SizedBox(
            height: 48,
            child: data,
          ),
        ),
      ),
    );
  }

  Widget _addToCartButton(
      BuildContext context, bool outOfStack, ProductDetailPageState product, CustomerState customer) {
    final isMember = customer.isMember;
    final productName = product.productDetailModel.product.productName;
    final limitedNumber = product.productDetailModel.product.limitedNumber;
    final isProductNumber = product.productDetailModel.product.isProductNumber;
    final isCounselingProduct = product.productDetailModel.product.isCounselingProduct;
    final isAnsweredCounseling = product.productDetailModel.product.isAnsweredCounseling;
    final productId = product.productDetailModel.product.productId;
    final thumbnailImagePath = product.productDetailModel.imagePaths.firstOrNull ?? '';

    Future<ErrorHandlerState> _cartErrorHandler(DioError error, BuildContext context, ErrorHandler handler) async {
      return await addToCartErrorHandler(
        error,
        context,
        isMember,
        handler,
        productName: productName,
        limitedNumber: limitedNumber,
      );
    }

    final navigator = Navigator.of(context);

    Future<ErrorHandlerState> _productDetailCartErrorHandler(
      DioError error,
      BuildContext context,
      ErrorHandler handler,
    ) async {
      final httpStatus = error.response!.statusCode;
      if (httpStatus != HttpStatus.badRequest) {
        return handler.next(error);
      }
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final statusCode = errorResponse.statusCode;
      if (!(statusCode == 'E-00007' || statusCode == 'E-00002')) {
        return handler.next(error);
      }
      final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;

      final rootNavigator = Navigator.of(context);

      if (errorReasonCode == '2000216') {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          //赤ちゃん本舗商品事前購入未承認の場合
          await rootNavigator.push(AkachanHonpoConfirmationsPage.route()) ?? false;
        });

        return handler.resolve();
      } else if (errorReasonCode == '2000215') {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          // 事前購入未承認の場合
          final isApproved = await rootNavigator.push(MedicineConfirmationsPage.route()) ?? false;
          if (isApproved) {
            // 購入手順画面へ遷移
            await navigator.push(OrderMedicineProcessPage.route());
          }
        });

        return handler.resolve();
      } else if (errorReasonCode == '2000072') {
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          //問診未回答の場合問診画面へ遷移
          final didAddToCart = await rootNavigator.push(MedicineAnswerFormPage.route(productId));
          // 問診画面で購入事前確認画面が表示されて同意した場合
          if (didAddToCart == false) {
            await navigator.push(OrderMedicineProcessPage.route());
          }
        });
        return handler.resolve();
      }

      return handler.next(error);
    }

    final isVisitor = customer.isVisitor;
    final currentColor = product.productNumberState.color;
    final currentSize = product.productNumberState.size;
    final isDrugProduct = product.productDetailModel.product.isDrugProduct;
    final isReadWarning = product.isReadWarning;
    final isCheckedTaboos = product.tabooCheckList.contains(true);
    final isCheckedConsults = product.consultCheckList.contains(true);

    return AppElevatedButton(
      borderRadius: 2,
      onPressed: outOfStack ||
              // 品番商品 && カラー・サイズが未選択
              isProductNumber && (currentColor == null || currentSize == null) ||
              //医薬品 && 使用上の注意チェック未確認 || 禁止事項・相談事項該当
              isDrugProduct && (!isReadWarning || isCheckedTaboos || isCheckedConsults)
          ? null
          : () async {
              // カウンセリング商品判定がtrueで見学ログインの場合、ログインが必須
              if (isCounselingProduct && isVisitor) {
                showLoginDialog(context: context);
                // ログイン済み、カウンセリング商品判定true、カウンセリング済み判定false => APP_先出し_0041_カウンセリングに遷移
              } else if (isCounselingProduct && !isAnsweredCounseling && isMember) {
                Navigator.push(
                    context, CounselingPage.route(context.read<ProductDetailPageState>().productDetailModel.product));
                // 医薬品かつ未ログインの場合
              } else if (isDrugProduct && isVisitor) {
                final succeeded = await showLoginDialog(context: context);
                if (succeeded ?? false) {
                  await showLoadingModal(
                    context: context,
                    future: () => context.read<ProductDetailPageViewModel>().addToCart(
                          !isProductNumber
                              ? productId
                              : context.read<ProductDetailPageState>().productNumberState.productId!,
                          thumbnailImagePath,
                        ),
                    errorOperators: [
                      ErrorOperatorWrapper(_cartErrorHandler),
                      ErrorOperatorWrapper(_productDetailCartErrorHandler),
                    ],
                  );
                }
              } else {
                await showLoadingModal(
                  context: context,
                  future: () => context.read<ProductDetailPageViewModel>().addToCart(
                        !isProductNumber
                            ? productId
                            : context.read<ProductDetailPageState>().productNumberState.productId!,
                        thumbnailImagePath,
                      ),
                  errorOperators: [
                    ErrorOperatorWrapper(_cartErrorHandler),
                    ErrorOperatorWrapper(_productDetailCartErrorHandler),
                  ],
                );
              }
            },
      child: Text(
        outOfStack ? '在庫なし' : 'カートへ追加',
        style: const TextStyle(
          color: AppColors.white,
          fontSize: 18,
          height: 25 / 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _outlinedButton({
    required BuildContext context,
    required VoidCallback? onPressed,
    required String buttonText,
  }) {
    return AppOutlinedButton(
      contentPadding: EdgeInsets.zero,
      borderRadius: 2,
      borderWidth: 1,
      borderColor: AppColors.main,
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: const TextStyle(
          height: 25 / 18,
          fontSize: 18,
          color: AppColors.main,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
