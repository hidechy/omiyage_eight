import 'package:flutter/cupertino.dart';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/response_model.dart';
import '../../data/repository/carts_repository.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/cart_order_status_type.dart';
import '../../enum/screen_name.dart';
import '../../util/cart_info_manager.dart';
import '../page/root_page.dart';
import 'app_buttons.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'app_loading.dart';
import 'error_handler.dart';

class OrderChangingBar extends StatelessWidget {
  const OrderChangingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cartId = context.select((CartInfoState state) => state.cartId);
    final orderStatus = context.select((CartInfoState state) => state.orderStatus);
    return orderStatus == CartOrderStatusType.nowChanging
        ? Container(
            width: double.infinity,
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(color: AppColors.background3),
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    '注文の商品を変更中です',
                    style: TextStyle(
                      color: AppColors.main,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                BlueOutlinedButton.medium(
                  width: 174,
                  onPressed: () {
                    showAttentionSelectionDialog<void>(
                      context: context,
                      dialogName: ScreenName.shopTopCancelOrderChangeModal.value,
                      title: '変更内容は破棄されます\n注文変更を終了しますか？',
                      applicationText: '終了する',
                      onApplied: (context) => () async {
                        Navigator.pop(context);
                        final isSuccess = await showLoadingModal(
                          context: context,
                          future: () async {
                            await GetIt.I<CartsRepository>().cancelChangeOrder(cartId: cartId);
                            return true;
                          },
                          errorOperators: [
                            ErrorOperatorWrapper(_handler),
                          ],
                        );
                        if (isSuccess == true) {
                          RootPage.flush();
                        }
                      },
                      cancellationText: 'キャンセル',
                      onCanceled: (context) => () => Navigator.pop(context),
                    );
                  },
                  analyticsEventType: AnalyticsEventType.cancelOrderChange,
                  child: const Text(
                    '注文変更を取り消す',
                    style: TextStyle(
                      color: AppColors.main,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          )
        : const SizedBox.shrink();
  }

  Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
    final httpStatus = error.response!.statusCode;
    if (httpStatus == 404) {
      // 注文変更取消しAPIの404は成功として扱う
      // そのため、404でresolveする前に、アプリ内で永続化している注文変更カートも削除する
      if (error.requestOptions.method == 'DELETE' && error.requestOptions.path.startsWith('/carts')) {
        await context.read<CartInfoManager>().ensure();
      }
      return handler.resolve();
    }
    if (httpStatus != 400) {
      return handler.next(error);
    }
    // ignore: prefer_void_to_null
    final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
    final statusCode = errorResponse.statusCode;
    if (statusCode != 'E-00007') {
      return handler.next(error);
    }
    final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
    if (errorReasonCode != '2000007') {
      return handler.next(error);
    }
    return handler.resolve();
  }
}
