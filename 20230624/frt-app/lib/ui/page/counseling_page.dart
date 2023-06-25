import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/cart_added_item_model.dart';
import '../../data/api/model/product_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/answer.dart';
import '../../enum/screen_name.dart';
import '../../util/logger.dart';
import '../common/app_buttons.dart';
import '../common/app_dialogs.dart';
import '../common/app_loading.dart';
import '../common/app_radio.dart';
import '../common/cart.dart';
import '../common/cart_button.dart';
import '../common/error_handler.dart';
import '../common/total_price.dart';
import '../state/counseling_page_state.dart';
import '../state/customer_state.dart';
import '../view_model/counseling_page_view_model.dart';

/// カウンセリングページ
class CounselingPage extends StatelessWidget {
  const CounselingPage({Key? key}) : super(key: key);

  static Route<Object?> route(ProductModel productModel) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: productModel,
          child: const CounselingPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.counselingPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build CounselingPage');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          '販売前カウンセリング',
        ),
      ),
      body: StateNotifierProvider<CounselingPageViewModel, CounselingPageState>(
        create: (_) => CounselingPageViewModel(),
        builder: (context, _) {
          return Stack(
            children: [
              LoadingFullScreen(
                future: () =>
                    // 販売前質問取得API呼び出し
                    context
                        .read<CounselingPageViewModel>()
                        .getQuestions(productId: context.watch<ProductModel>().productId),
                content: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: const [
                        _Explanation(),
                        _Question1(),
                        _Question2(),
                        _Question3(),
                        Padding(padding: EdgeInsets.only(top: 24)),
                        _AnswerButton(),
                        Padding(padding: EdgeInsets.only(top: 90)),
                      ],
                    ),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomCenter,
                child: TotalPrice(),
              ),
            ],
          );
        },
      ),
      floatingActionButton: const CartButton(),
    );
  }
}

/// 説明文
class _Explanation extends StatelessWidget {
  const _Explanation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 26, top: 24, right: 26, bottom: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFCCCCCC),
            width: 1,
          ),
        ),
      ),
      child: const Center(
        child: Text(
          'ご購入にはカウンセリングが必要です。\n商品購入前に以下の設問にお答えください。',
          style: TextStyle(
            fontSize: 14,
            color: Color(0xFF000000),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Question1 extends StatelessWidget {
  const _Question1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Question(
      value: context.select((CounselingPageState state) => state.question.counseling1),
      handleRadio: context.read<CounselingPageViewModel>().handleRadio1,
      answerType: context.select((CounselingPageState value) => value.answerType1),
    );
  }
}

class _Question2 extends StatelessWidget {
  const _Question2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Question(
      // 設問１が未選択またはいいえの時、非活性
      isActive: context.select((CounselingPageState value) => value.answerType1) == AnswerFlag.yes,
      value: context.select((CounselingPageState state) => state.question.counseling2),
      handleRadio: context.read<CounselingPageViewModel>().handleRadio2,
      answerType: context.select((CounselingPageState value) => value.answerType2),
    );
  }
}

class _Question3 extends StatelessWidget {
  const _Question3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Question(
      value: context.select((CounselingPageState state) => state.question.counseling3),
      handleRadio: context.read<CounselingPageViewModel>().handleRadio3,
      answerType: context.select((CounselingPageState value) => value.answerType3),
    );
  }
}

/// 設問部分
class _Question extends StatelessWidget {
  const _Question({
    Key? key,
    required this.value,
    this.handleRadio,
    this.answerType,
    this.isActive = true,
  }) : super(key: key);

  final String value;
  final ValueChanged<AnswerFlag?>? handleRadio;
  final AnswerFlag? answerType;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFCCCCCC),
            width: 1,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 設問内容
          Text(
            value,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Color(0xFF000000),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  child: _radioAndLabel(
                    isActive: isActive,
                    value: AnswerFlag.yes,
                    groupValue: answerType,
                    onChanged: handleRadio,
                    text: 'はい',
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 36),
                  child: _radioAndLabel(
                    isActive: isActive,
                    value: AnswerFlag.no,
                    groupValue: answerType,
                    onChanged: handleRadio,
                    text: 'いいえ',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// 設問選択肢
  Widget _radioAndLabel({
    required AnswerFlag value,
    required AnswerFlag? groupValue,
    required ValueChanged<AnswerFlag?>? onChanged,
    required String text,
    bool isActive = true,
  }) {
    return GestureDetector(
      onTap: isActive ? (() => onChanged!(value)) : null,
      child: Row(
        children: [
          AppRadio(
            value: value,
            groupValue: groupValue,
            onChanged: isActive ? onChanged : null,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Color(0xFF333333),
            ),
          ),
        ],
      ),
    );
  }
}

/// 回答するボタン
class _AnswerButton extends StatelessWidget {
  const _AnswerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productModel = context.watch<ProductModel>();

    final isMember = context.select((CustomerState state) => state.isMember);
    Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
      return addToCartErrorHandler(
        error,
        context,
        isMember,
        handler,
        productName: productModel.productName,
        limitedNumber: productModel.limitedNumber,
      );
    }

    return BlueElevatedButton.large(
      widthFactor: 0.745,
      // 未回答がある場合、ボタンを非活性にする
      onPressed: ([
        context.select((CounselingPageState value) => value.answerType1),
        context.select((CounselingPageState value) => value.answerType2),
        context.select((CounselingPageState value) => value.answerType3)
      ].contains(null))
          ? null
          : () async {
              var counselingResult = CounselingResult.unanswered;
              // 商品追加APIの呼び出し
              final result = await showLoadingModal(
                context: context,
                future: () async {
                  counselingResult =
                      await context.read<CounselingPageViewModel>().addToCart(productId: productModel.productId);
                  return true;
                },
                errorOperators: [ErrorOperatorWrapper(_handler)],
              );
              if (result != true) {
                return;
              }
              // 確認モーダル表示
              await showNormalConfirmationDialog<void>(
                context: context,
                dialogName: counselingResult == CounselingResult.unavailable
                    ? ScreenName.counselingNGModal.value
                    : ScreenName.counselingOKModal.value,
                title: counselingResult == CounselingResult.unavailable
                    ? 'お客様の今のお肌状態では、\n申し訳ございませんが販売できません。'
                    : 'カートに商品を追加しました',
                content: _dialogContent(counselingResult),
                applicationText: '買い物を続ける',
                onApplied: (_context) => () {
                  Navigator.pop(_context);
                  Navigator.pop(context);
                },
              );
            },
      analyticsEventType: AnalyticsEventType.answerCounseling,
      child: const Text('回答する'),
    );
  }

  Widget? _dialogContent(CounselingResult counselingResult) {
    final counselingResultMessage = {
      CounselingResult.available: 'ご回答ありがとうございます\n引き続きお買い物を続けてください',
      CounselingResult.caution: 'ご利用にあたっては商品の説明をよく読み\n十分にご確認の上でご使用ください',
    }[counselingResult];
    return counselingResultMessage == null ? null : Text(counselingResultMessage);
  }
}
