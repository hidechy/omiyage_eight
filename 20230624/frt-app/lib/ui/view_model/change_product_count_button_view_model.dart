import 'package:flutter/widgets.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../data/repository/carts_repository.dart';
import '../../util/cart_info_manager.dart';
import '../common/app_dialogs.dart';

class ChangeProductCountButtonViewModel {
  ChangeProductCountButtonViewModel({
    required this.context,
    required this.productId,
    required this.confirmationRequired,
    required this.cartId,
    required this.itemCount,
    required this.productDetailKey,
  });

  final BuildContext context;
  final String productId;
  final bool confirmationRequired;
  final int cartId;
  final int itemCount;
  final String productDetailKey;

  Future<bool> plus() {
    return _changeItemCount(itemCount + 1);
  }

  Future<bool> minus() {
    return _changeItemCount(itemCount - 1);
  }

  Future<bool> _changeItemCount(int itemCount) async {
    var confirmFlag = confirmationRequired ? '0' : '1';
    var response = await GetIt.I<CartsRepository>().changeItemCount(
      cartId: cartId,
      productId: productId,
      itemCount: itemCount,
      productDetailKey: productDetailKey,
      confirmFlag: confirmFlag,
    );
    var responseData = response.first;
    if (responseData.needPriceChangeConfirm) {
      final isConfirmed = await showNormalSelectionDialog<bool>(
        context: context,
        dialogName: 'PriceChangedConfirmationModal',
        title: 'カート追加時から売価に変更がありました。\n現在の価格でカートに追加します',
        applicationText: '追加する',
        onApplied: (context) => () => Navigator.of(context).pop(true),
        cancellationText: 'キャンセル',
        onCanceled: (context) => () => Navigator.of(context).pop(false),
      );
      if (isConfirmed ?? false) {
        confirmFlag = '1';
        response = await GetIt.I<CartsRepository>().changeItemCount(
          cartId: cartId,
          productId: productId,
          itemCount: itemCount,
          productDetailKey: productDetailKey,
          confirmFlag: confirmFlag,
        );
        responseData = response.first;
      } else {
        // 別に値はなんでもいいが気分的に
        return false;
      }
    }
    context.read<CartInfoManager>().info = responseData.cart;
    return true;
  }
}
