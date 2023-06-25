import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/response_model.dart';
import '../../util/cart_info_manager.dart';
import '../view_model/change_product_count_button_view_model.dart';
import 'app_colors.dart';
import 'app_dialogs.dart';
import 'app_loading.dart';
import 'error_handler.dart';

class ChangeProductCountButton extends StatelessWidget {
  const ChangeProductCountButton._({
    Key? key,
    required this.canRemove,
    required this.productId,
    required this.productName,
    this.productDetailKey,
    this.widthFactor,
    this.width,
    required this.height,
    required this.iconSize,
    required this.iconStroke,
    required this.radius,
    required this.padding,
    required this.fontSize,
    required this.fontWeight,
    required this.buttonFlex,
    required this.counterFlex,
  })  : assert(widthFactor != null || width != null),
        super(key: key);

  const ChangeProductCountButton.small({
    Key? key,
    bool canRemove = true,
    required String productId,
    required String productName,
    String? productDetailKey,
    double? widthFactor,
    double? width,
  }) : this._(
          key: key,
          canRemove: canRemove,
          productId: productId,
          productName: productName,
          productDetailKey: productDetailKey,
          widthFactor: widthFactor,
          width: width,
          height: 24,
          iconSize: 5,
          iconStroke: 1,
          radius: 2,
          padding: 5,
          fontSize: 12,
          fontWeight: FontWeight.w300,
          buttonFlex: 22,
          counterFlex: 28,
        );

  const ChangeProductCountButton.large({
    Key? key,
    bool canRemove = true,
    required String productId,
    required String productName,
    String? productDetailKey,
    double? widthFactor,
    double? width,
  }) : this._(
          key: key,
          canRemove: canRemove,
          productId: productId,
          productName: productName,
          productDetailKey: productDetailKey,
          widthFactor: widthFactor,
          width: width,
          height: 48,
          iconSize: 12,
          iconStroke: 2,
          radius: 4,
          padding: 10,
          fontSize: 24,
          fontWeight: FontWeight.w600,
          buttonFlex: 227,
          counterFlex: 291,
        );

  final bool canRemove;
  final String productId;
  final String productName;
  final String? productDetailKey;
  final double? widthFactor;
  final double? width;
  final double height;
  final double iconSize;
  final double iconStroke;
  final double radius;
  final double padding;
  final double fontSize;
  final FontWeight fontWeight;
  final int buttonFlex;
  final int counterFlex;

  @override
  Widget build(BuildContext context) {
    Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final statusCode = errorResponse.statusCode;
      final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;

      if (!(statusCode == 'E-00007' || statusCode == 'E-00002')) {
        return handler.next(error);
      }
      String? message;
      switch (errorReasonCode) {
        case '2000088':
        case '1001036':
          message = '購入可能数を超えています。購入数を確認してください。';
          break;
        case '2100029':
          message = '誠に申し訳御座いませんが、$productNameは現在注文変更可能期間外のため、お買い物カゴ内の数量を変更頂けません。';
          break;
        case '2100095':
          showReEnsureCartFailureModal(context);
          return handler.resolve();
        default:
          return handler.next(error);
      }
      return handler.resolve(
        HandledError(
          title: '',
          message: message,
        ),
      );
    }

    final cart = context.select((CartInfoState state) => state);
    final cartDetail = cart.cartDetail(productId, productDetailKey);
    if (cartDetail == null) {
      return const SizedBox.shrink();
    }
    final count = cartDetail.quantity;
    final viewModel = ChangeProductCountButtonViewModel(
      context: context,
      productId: productId,
      // canRemoveがfalseになるのはカート画面だけで価格変更確認が必要なのもカート画面だけ
      confirmationRequired: !canRemove,
      cartId: cart.cartId,
      itemCount: count,
      productDetailKey: cartDetail.productDetailKey,
    );

    final disableRemove = (!canRemove && viewModel.itemCount == 1);
    final row = SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: Row(
        children: [
          Expanded(
            flex: buttonFlex,
            child: _IconButton.minus(
              height: height,
              radius: radius,
              iconSize: iconSize,
              iconStroke: iconStroke,
              canPress: !disableRemove,
              onPressed: disableRemove
                  // disableRemoveがtrueになるのはカート画面のみの話である
                  // 以下処理をnullで返すと商品詳細に遷移してしまうため、遷移が走らないように空関数を設定している
                  ? () {}
                  : () => showLoadingModal(
                        context: context,
                        future: viewModel.minus,
                        errorOperators: [
                          ErrorOperatorWrapper(_handler),
                        ],
                      ),
            ),
          ),
          Expanded(
            flex: counterFlex,
            child: _Counter(
              count: viewModel.itemCount,
              height: height,
              padding: padding,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
          Expanded(
            flex: buttonFlex,
            child: _IconButton.plus(
              height: height,
              radius: radius,
              iconSize: iconSize,
              iconStroke: iconStroke,
              canPress: true,
              onPressed: () => showLoadingModal(
                context: context,
                future: viewModel.plus,
                errorOperators: [
                  ErrorOperatorWrapper(_handler),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    return widthFactor == null
        ? row
        : FractionallySizedBox(
            widthFactor: widthFactor,
            child: row,
          );
  }
}

class _Counter extends StatelessWidget {
  const _Counter({
    Key? key,
    required this.count,
    required this.height,
    required this.padding,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  final int count;
  final double height;
  final double padding;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(
          color: AppColors.whiteBorder,
          width: 1,
        ),
      ),
      constraints: BoxConstraints(
        maxHeight: height,
        minWidth: fontSize * 3,
      ),
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          count.toString(),
          style: TextStyle(
            color: AppColors.black2,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  _IconButton.minus({
    Key? key,
    required this.height,
    required double radius,
    required double iconSize,
    required double iconStroke,
    required this.onPressed,
    this.canPress = true,
  }) : super(key: key) {
    borderRadius = BorderRadius.only(
      topLeft: Radius.circular(radius),
      bottomLeft: Radius.circular(radius),
    );
    icon = _ButtonIcon.minus(size: iconSize, stroke: iconStroke);
  }

  _IconButton.plus({
    Key? key,
    required this.height,
    required double radius,
    required double iconSize,
    required double iconStroke,
    required this.onPressed,
    this.canPress = true,
  }) : super(key: key) {
    borderRadius = BorderRadius.only(
      topRight: Radius.circular(radius),
      bottomRight: Radius.circular(radius),
    );
    icon = _ButtonIcon.plus(size: iconSize, stroke: iconStroke);
  }

  final double height;
  final VoidCallback? onPressed;
  late final BorderRadius borderRadius;
  late final Widget icon;
  final bool canPress;

  @override
  Widget build(BuildContext context) => Material(
        color: AppColors.whiteBorder,
        borderRadius: borderRadius,
        child: IconButton(
          onPressed: onPressed,
          padding: EdgeInsets.zero,
          highlightColor: canPress ? ThemeData().highlightColor : Colors.transparent,
          splashColor: canPress ? ThemeData().splashColor : Colors.transparent,
          icon: Container(
            height: height,
            alignment: Alignment.center,
            child: icon,
          ),
        ),
      );
}

class _ButtonIcon extends StatelessWidget {
  const _ButtonIcon._({
    Key? key,
    required this.size,
    required CustomPainter painter,
  })  : _painter = painter,
        super(key: key);

  _ButtonIcon.minus({
    required double size,
    required double stroke,
  }) : this._(
          size: size,
          painter: _MinusIconPainter(stroke: stroke),
        );

  _ButtonIcon.plus({
    required double size,
    required double stroke,
  }) : this._(
          size: size,
          painter: _PlusIconPainter(stroke: stroke),
        );

  final double size;
  final CustomPainter _painter;

  @override
  Widget build(BuildContext context) => SizedBox.fromSize(
        size: Size.square(size),
        child: CustomPaint(painter: _painter),
      );
}

class _MinusIconPainter extends CustomPainter {
  const _MinusIconPainter({
    required this.stroke,
  }) : super();

  final double stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.blackBorder
      ..strokeWidth = stroke;

    final height = size.height / 2;
    canvas.drawLine(Offset(0, height), Offset(size.width, height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class _PlusIconPainter extends CustomPainter {
  const _PlusIconPainter({
    required this.stroke,
  }) : super();

  final double stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.blackBorder
      ..strokeWidth = stroke;

    final height = size.height / 2;
    final width = size.width / 2;
    canvas.drawLine(Offset(0, height), Offset(size.width, height), paint);
    canvas.drawLine(Offset(width, 0), Offset(width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
