import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flash/flash.dart';

import 'error_handler.dart';

class PullToRefresh extends StatelessWidget {
  PullToRefresh({
    Key? key,
    required this.child,
    required this.onRefresh,
    List<ErrorOperator>? errorOperators,
  })  : operators = ErrorOperators.of(errorOperators)
          ..addAll(
            ErrorOperators.common(),
          ),
        super(key: key);
  final Widget child;
  final Future<void> Function(BuildContext context) onRefresh;
  final ErrorOperators operators;

  Future<void> _onRefresh(
    BuildContext context,
  ) async {
    try {
      await onRefresh(context);
    } catch (e) {
      final handledError = await operators.handle(e, context);
      final errorMessage = handledError?.message;
      if (errorMessage != null) {
        _showBasicsFlash(context: context, errorMessage: errorMessage);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomRefreshIndicator(
      onRefresh: () async => await _onRefresh(context),
      child: child,
      builder: (
        BuildContext context,
        Widget child,
        IndicatorController controller,
      ) {
        return AnimatedBuilder(
          animation: controller,
          builder: (BuildContext context, _) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                if (controller.isLoading)
                  // スピナーの場所
                  const Positioned(
                    top: 24,
                    child: CupertinoActivityIndicator(),
                  ),
                // 画面をpullする際のオフセット位置
                Transform.translate(
                  offset: Offset(0, 58 * controller.value),
                  child: child,
                ),
              ],
            );
          },
        );
      },
    );
  }

  void _showBasicsFlash({
    FlashBehavior flashStyle = FlashBehavior.floating,
    required BuildContext context,
    required String errorMessage,
  }) {
    showFlash(
      context: context,
      duration: const Duration(seconds: 4),
      builder: (context, controller) {
        return Flash<dynamic>(
          controller: controller,
          behavior: flashStyle,
          boxShadows: kElevationToShadow[16],
          margin: const EdgeInsets.symmetric(horizontal: 16),
          position: FlashPosition.top,
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 20),
            content: Text(
              errorMessage,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        );
      },
    );
  }
}
