import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../enum/analytics_event_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../../util/cart_info_manager.dart';
import '../page/cart_page.dart';
import 'app_cached_network_image.dart';
import 'app_colors.dart';
import 'app_image_not_found.dart';
import 'app_media_query.dart';
import 'app_toast.dart';

class CartButton extends StatefulWidget {
  const CartButton({
    Key? key,
  }) : super(key: key);

  @override
  CartButtonState createState() => CartButtonState();
}

class CartButtonState extends State<CartButton> with TickerProviderStateMixin {
  late final _positionedController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 400),
  );
  late final AnimationController _scaleController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
  );

  @override
  void dispose() {
    _positionedController.dispose();
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartInfoState>();
    return ScaleTransition(
      scale: _scaleController
          .drive(
            CurveTween(curve: Curves.fastOutSlowIn),
          )
          .drive(
            Tween<double>(begin: 1.0, end: 1.2),
          ),
      child: SizedBox(
        height: 72,
        width: 72,
        child: FloatingActionButton(
          heroTag: null,
          onPressed: () {
            final analytics = GetIt.I<AnalyticsManager>();
            analytics.sendEvent(eventType: AnalyticsEventType.viewCart);
            Navigator.of(context, rootNavigator: true).push(CartPage.route());
          },
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 20,
                width: 72,
                child: Text(
                  cart.productCount.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: (cart.productCount >= 100) ? -1.0 : 1.0,
                  ),
                ),
              ),
              Positioned(
                left: 13,
                bottom: 20,
                child: SizedBox.square(
                  dimension: 40,
                  child: Assets.icons.cart.svg(),
                ),
              ),
              const Positioned(
                left: 0,
                bottom: 7,
                width: 72,
                child: Text(
                  'カート',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void afterAddToCart(String imageUrl) {
    final overlayEntry = OverlayEntry(
      builder: (BuildContext _) {
        final cartButtonBox = context.findRenderObject() as RenderBox;
        final cartButtonOffset = -cartButtonBox.globalToLocal(Offset.zero);
        final cartButtonSize = cartButtonBox.size;
        final beginTop = cartButtonOffset.dy - cartButtonSize.height - 16;
        final beginRight = AppMediaQuery.read(context).size.width - cartButtonOffset.dx - cartButtonSize.width;
        final beginBottom = AppMediaQuery.read(context).size.height - cartButtonOffset.dy + 16;
        return Stack(
          children: [
            PositionedTransition(
              rect: RelativeRectTween(
                begin: RelativeRect.fromLTRB(
                  cartButtonOffset.dx,
                  beginTop,
                  beginRight,
                  beginBottom,
                ),
                end: RelativeRect.fromLTRB(
                  cartButtonOffset.dx + cartButtonSize.width / 2,
                  beginTop + cartButtonSize.height * 2 + 16,
                  beginRight + cartButtonSize.width / 2,
                  beginBottom - cartButtonSize.height - 16,
                ),
              ).animate(
                CurvedAnimation(
                  parent: _positionedController,
                  curve: Curves.fastOutSlowIn,
                ),
              ),
              child: Container(
                width: cartButtonSize.width,
                height: cartButtonSize.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    width: 4.0,
                    color: AppColors.main,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: AppCachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: imageUrl,
                    errorBuilder: (_, __, ___) => const AppImageNotFound(),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      showAppToast(
        context: context,
        toastName: 'AddToCart',
        message: 'カートに追加しました',
        duration: 300,
        fadeDuration: 200,
      );

      Navigator.of(context, rootNavigator: true).overlay?.insert(overlayEntry);
      // カートに入る商品を確認してもらうために1秒待ってからforward開始
      Future.delayed(const Duration(milliseconds: 1000), () {
        _positionedController.forward().whenComplete(() {
          overlayEntry.remove();
          // 何回もアニメーションできるようにcontrollerの状態をreset
          _positionedController.reset();
        });
      });
      // 商品画像が完全に消える前にカートボタンを膨らませる方がカートに入った感があるので
      // scaleは商品画像のアニメーションが終わるちょっと前に開始
      Future.delayed(const Duration(milliseconds: 1200), () {
        HapticFeedback.lightImpact();
        _scaleController.forward().whenComplete(() => _scaleController.reverse());
      });
    });
  }
}
