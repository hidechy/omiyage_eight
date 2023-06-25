import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/carts_repository.dart';
import '../../data/repository/front_repository.dart';
import '../../data/repository/products_repository.dart';
import '../../enum/gender_type.dart';
import '../../enum/question_type.dart';
import '../../util/cart_info_manager.dart';
import '../state/medicine_answer_form_page_state.dart';

class MedicineAnswerFormViewModel extends StateNotifier<MedicineAnswerFormPageState> with LocatorMixin {
  MedicineAnswerFormViewModel() : super(MedicineAnswerFormPageState());

  CartInfoManager get _cartInfoManager => read();
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  bool isDisplayNoEffectCell() {
    for (final item in state.medicineQuestionModel.medicineUnables) {
      if (!item.abuseLimitedFlag) {
        return true;
      }
    }
    return false;
  }

  String getEffectQuestionText() {
    return '下記の症状に該当しない。 \n\n ${state.medicineQuestionModel.medicineUnables[0].effect}';
  }

  set userAge(String age) {
    state = state.copyWith.medicineAnswerForm(userAge: age);
  }

  set pregnancyWeek(String week) {
    state = state.copyWith.medicineAnswerForm(pregnancyWeek: week);
  }

  bool isAbuseLimited() {
    return state.medicineQuestionModel.medicineUnables.any((item) => item.abuseLimitedFlag);
  }

  void updateCartButtonState() {
    state = state.copyWith(
        isInvalidCartButton: state.medicineAnswerForm.noEffectFlag ||
            state.medicineAnswerForm.thisDrugSideEffectFlag ||
            state.medicineAnswerForm.exceedingFlag ||
            state.medicineAnswerForm.drugStockFlag ||
            state.medicineAnswerForm.otherPurposeFlag);
  }

  void onChangeAnotherUserCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(anotherUserFlag: !state.medicineAnswerForm.anotherUserFlag);
  }

  set selectGender(Gender gender) {
    state = state.copyWith.medicineAnswerForm(userGender: gender);
  }

  void onChangeNoEffectCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(noEffectFlag: !state.medicineAnswerForm.noEffectFlag);
  }

  void onChangePregnancyCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(pregnancyFlag: !state.medicineAnswerForm.pregnancyFlag);
  }

  void onChangeLactationCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(lactationFlag: !state.medicineAnswerForm.lactationFlag);
  }

  void onChangeExaminationsCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(examinationsFlag: !state.medicineAnswerForm.examinationsFlag);
  }

  void onChangeFirstUseCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(firstUseFlag: !state.medicineAnswerForm.firstUseFlag);
  }

  void onChangeThisDrugSideEffectCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(thisDrugSideEffectFlag: !state.medicineAnswerForm.thisDrugSideEffectFlag);
  }

  void onChangeSideEffectCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(sideEffectFlag: !state.medicineAnswerForm.sideEffectFlag);
  }

  void onChangeExceedingCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(exceedingFlag: !state.medicineAnswerForm.exceedingFlag);
  }

  void onChangeDrugStockCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(drugStockFlag: !state.medicineAnswerForm.drugStockFlag);
  }

  void onChangeOtherPurposeCheckBoxState() {
    state = state.copyWith.medicineAnswerForm(otherPurposeFlag: !state.medicineAnswerForm.otherPurposeFlag);
  }

  set numberOfInputCharacters(String text) {
    state = state.copyWith.medicineAnswerForm(otherAnswer: text);
  }

  Future<bool> onTapCart(String productId) async {
    final response = await GetIt.I<CartsRepository>().addItems(
      cartId: _cartInfoManager.info.cartId,
      productId: productId,
      itemCount: 1,
      medicineAnswerForm: state.medicineAnswerForm,
    );
    _cartInfoManager.info = response.first.cart;
    return true;
  }

  Future<void> validateInputInfo() async {
    // 「別使用者」セルの性別選択がされていない
    final isErrorUserGender = state.medicineAnswerForm.anotherUserFlag && state.medicineAnswerForm.userGender == null;

    // 「別使用者」セルの年齢が入力されていない
    final isErrorUserAge =
        state.medicineAnswerForm.anotherUserFlag && (state.medicineAnswerForm.userAge?.isEmpty ?? true);

    // 「妊娠」セルの妊娠週数が入力されていない
    final isErrorPregnancyWeek =
        state.medicineAnswerForm.pregnancyFlag && (state.medicineAnswerForm.pregnancyWeek?.isEmpty ?? true);

    // 「医薬品併用」セルのチェックボックスがON状態かつ記入欄が空の場合
    final isErrorExaminations =
        state.medicineAnswerForm.examinationsFlag && (state.medicineAnswerForm.otherAnswer?.isEmpty ?? true);

    // 「他の医薬品での副作用」セルのチェックボックスがON状態かつ記入欄が空の場合
    final isErrorSideEffect =
        state.medicineAnswerForm.sideEffectFlag && (state.medicineAnswerForm.otherAnswer?.isEmpty ?? true);

    // 機種依存文字チェック
    final isInvalidCharacters = await _checkInvalidCharacters();

    state = state.copyWith(
      isErrorUserGender: isErrorUserGender,
      isErrorUserAge: isErrorUserAge,
      isErrorPregnancyWeek: isErrorPregnancyWeek,
      isErrorExaminations: isErrorExaminations,
      isErrorSideEffect: isErrorSideEffect,
      isInvalidCharacters: isInvalidCharacters,
    );

    // エラーのフィールドが存在するとき、FormatExceptionをthrowする
    if (state.isAlert) {
      throw const FormatException();
    }
  }

  Future<bool> getQuestions({required String productId}) async {
    final cartId = _cartInfoManager.info.cartId;
    final response = await GetIt.I<ProductsRepository>()
        .getQuestions(cartId: cartId, productId: productId, questionType: QuestionType.medicine);
    state = state.copyWith(medicineQuestionModel: response.data.first.medicineQuestion!);
    return true;
  }

  /// 機種依存文字チェック
  Future<bool> _checkInvalidCharacters() async {
    if (state.medicineAnswerForm.otherAnswer?.isEmpty ?? true) {
      return false;
    }
    final response = await GetIt.I<FrontRepository>().checkPlatformCharacters(
      target: state.medicineAnswerForm.otherAnswer!,
    );
    return !response.first.isValid;
  }
}
