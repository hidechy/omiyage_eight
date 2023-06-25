import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

import '../../../data/api/model/response_model.dart';
import '../../../gen/assets.gen.dart';
import '../../common/app_colors.dart';
import '../../common/app_dialogs.dart';
import '../../common/app_loading.dart';
import '../../common/error_handler.dart';
import '../../state/customer_state.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';
import 'product_detail_distribute_page.dart';

// TODO 設計書と動作が違うところがあるのでロジックの見直しを行う https://7andi-digital.atlassian.net/browse/IYNS-14272
class FavoriteButton extends StatelessWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productId = context.select((ProductDetailPageState state) => state.productDetailModel.product.productId);
    final isMember = context.select((CustomerState state) => state.isMember);
    final isVisitor = context.select((CustomerState state) => state.isVisitor);
    final canReload = context.select((ProductDetailPageState state) => state.canReload);
    // 会員ログインをしたが商品詳細は見学状態の場合、再読み込み
    if (isMember && isVisitor && canReload) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          showLoadingModal(
            context: context,
            future: () => context.read<ProductDetailPageViewModel>().load(productId),
          );
        },
      );
    }

    return SizedBox(
      height: 51,
      child: Stack(
        children: [
          const Center(
            child: Divider(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                padding: const EdgeInsetsDirectional.all(0),
                splashColor: AppColors.white,
                icon: Visibility(
                  visible: context.select((ProductDetailPageState state) => state.isFavoriteAdded),
                  child: Assets.icons.circularFavoriteFill.svg(),
                  replacement: Assets.icons.circularFavorite.svg(),
                ),
                onPressed: () async {
                  if (isVisitor) {
                    final navigatorState = Navigator.of(context);
                    final result = await showLoginDialog(context: context);
                    if (result ?? false) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        navigatorState.pushReplacement(
                          ProductDetailDistributePage.route(productId: productId),
                        );
                      });
                    }
                    return;
                  }
                  // アナリティクスイベントの送信
                  showLoadingModal(
                    context: context,
                    future: () async => await context.read<ProductDetailPageViewModel>().changeFavoriteState(productId),
                    errorOperators: [ErrorOperatorWrapper(_handler)],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
    final httpStatus = error.response!.statusCode;
    // お気に入り削除APIの404は共通エラーとしてハンドリングせず、成功時と同等の処理を行う
    if (httpStatus != HttpStatus.badRequest && httpStatus != HttpStatus.notFound) {
      return handler.next(error);
    }
    if (error.requestOptions.method != 'DELETE' && httpStatus == HttpStatus.notFound) {
      return handler.next(error);
    }

    // ignore: prefer_void_to_null
    final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
    final statusCode = errorResponse.statusCode;
    if (statusCode == 'E-00006') {
      context.read<ProductDetailPageViewModel>().setFavoriteStateIntoProductDetailPageState();
      return handler.resolve();
    }
    if (statusCode != 'E-00007') {
      return handler.next(error);
    }

    final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
    // それ以外のエラー
    final errorTitle = {
      '2000204': '医薬品追加不可',
      '2000205': '登録済み',
    }[errorReasonCode];
    final errorMessage = {
      '2000204': '医薬品はお気に入りに登録することができません',
      '2000205': '既にお気に入りに登録されています',
    }[errorReasonCode];
    if (errorMessage == null) {
      return handler.next(error);
    }
    return handler.resolve(
      HandledError(
        title: errorTitle,
        message: errorMessage,
      ),
    );
  }
}
