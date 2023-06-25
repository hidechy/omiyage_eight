import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/cart_added_item_model.dart';
import '../../data/repository/carts_repository.dart';
import '../../data/repository/products_repository.dart';
import '../../enum/answer.dart';
import '../../enum/question_type.dart';
import '../../util/cart_info_manager.dart';
import '../../util/logger.dart';
import '../state/counseling_page_state.dart';

class CounselingPageViewModel extends StateNotifier<CounselingPageState> with LocatorMixin {
  CounselingPageViewModel() : super(CounselingPageState());

  CartInfoManager get _cartInfoManager => read();

  void handleRadio1(AnswerFlag? value) {
    if (value != null) {
      state = state.copyWith(answerType1: value);
    }
    // 設問1が「いいえ」の時、設問2は「いいえ」を自動選択する
    if (value == AnswerFlag.no) {
      state = state.copyWith(answerType2: AnswerFlag.no);
    }
  }

  void handleRadio2(AnswerFlag? value) {
    if (value != null) {
      state = state.copyWith(answerType2: value);
    }
  }

  void handleRadio3(AnswerFlag? value) {
    if (value != null) {
      state = state.copyWith(answerType3: value);
    }
  }

  /// 販売前質問取得API
  Future<bool> getQuestions({required String productId}) async {
    final cartId = _cartInfoManager.info.cartId;
    final response = await GetIt.I<ProductsRepository>()
        .getQuestions(cartId: cartId, productId: productId, questionType: QuestionType.counseling);
    logger.info(response.first);
    state = state.copyWith(question: response.first.counselingQuestion!);
    return true;
  }

  Future<CounselingResult> addToCart({required String productId}) async {
    final response = await GetIt.I<CartsRepository>().addItems(
      cartId: _cartInfoManager.info.cartId,
      productId: productId,
      itemCount: 1,
      answer1: state.answerType1,
      answer2: state.answerType2,
      answer3: state.answerType3,
    );
    logger.info('cartId=[${response.first.cart.cartId}');
    _cartInfoManager.info = response.first.cart;
    return response.first.counselingResult;
  }
}
