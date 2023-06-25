import 'dart:async';

import 'package:flutter/material.dart';

import 'app_colors.dart';

/// トーストを表示する
Future<void> showAppToast({
  required BuildContext context,
  required String toastName,
  required String message,
  int? duration,
  int? fadeDuration,
}) {
  // トースト背景や戻るボタンの制御はこちら
  return showDialog(
    context: context,
    routeSettings: RouteSettings(name: toastName),
    barrierColor: AppColors.blackAlpha70,
    builder: (context) => WillPopScope(
      onWillPop: () async => false,
      child: AppToast(
        context: context,
        message: message,
        duration: duration,
        fadeDuration: fadeDuration,
      ),
    ),
  );
}

class AppToast extends StatefulWidget {
  const AppToast({
    Key? key,
    required this.context,
    required this.message,
    int? duration,
    int? fadeDuration,
  })  : duration = duration ?? 2000,
        fadeDuration = fadeDuration ?? 300,
        super(key: key);
  final BuildContext context;

  /// 表示するメッセージ
  final String message;

  /// 表示後、消えるミリ秒数
  final int duration;

  /// 表示するまでにかかるミリ秒数
  final int fadeDuration;

  @override
  State<AppToast> createState() => _AppToastState();
}

class _AppToastState extends State<AppToast> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.fadeDuration),
    );
    _animation = _animationController.drive(CurveTween(curve: Curves.easeInOutQuart));
    _animation.addStatusListener(_onAnimationStatusChanged);

    _animationController.forward();
  }

  @override
  void deactivate() {
    _timer?.cancel();
    _animationController.stop();
    super.deactivate();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _animation.removeStatusListener(_onAnimationStatusChanged);
    _animationController.dispose();
    super.dispose();
  }

  void _onAnimationStatusChanged(AnimationStatus animationStatus) {
    switch (animationStatus) {
      case AnimationStatus.dismissed:
      case AnimationStatus.forward:
      case AnimationStatus.reverse:
        break;
      case AnimationStatus.completed:
        // 表示後に指定時間待ってから消す
        _timer = Timer(
          Duration(milliseconds: widget.duration),
          () async {
            await _animationController.reverse();
            _timer?.cancel();
            Navigator.pop(widget.context);
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Dialog(
        backgroundColor: AppColors.white,
        insetPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: DefaultTextStyle(
            style: const TextStyle(
              color: AppColors.black2,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            child: Text(
              widget.message,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
