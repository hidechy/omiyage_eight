import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/api/model/response_model.dart';
import '../../../enum/drug_type.dart';
import '../../../enum/gender_type.dart';
import '../../../enum/screen_name.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/logger.dart';
import '../../common/alert_insertion_bar.dart';
import '../../common/app_buttons.dart';
import '../../common/app_checkbox.dart';
import '../../common/app_colors.dart';
import '../../common/app_dialogs.dart';
import '../../common/app_loading.dart';
import '../../common/app_radio.dart';
import '../../common/cart.dart';
import '../../common/error_handler.dart';
import '../../common/html_parser.dart';
import '../../state/customer_state.dart';
import '../../state/medicine_answer_form_page_state.dart';
import '../../view_model/medicine_answer_form_view_model.dart';
import 'medicine_confirmations_page.dart';

class MedicineAnswerFormPageArguments {
  MedicineAnswerFormPageArguments({
    required this.productId,
  });

  final String productId;
}

enum MedicineQuestionType {
  anotherUser,
  noEffect,
  pregnancy,
  lactation,
  examinations,
  firstUse,
  thisDrugSideEffect,
  sideEffect,
  exceeding,
  drugStock,
  otherPurpose,
}

extension MedicineQuestionText on MedicineQuestionType {
  String get questionText {
    switch (this) {
      case MedicineQuestionType.anotherUser:
        return '購入される方が使用者ではない。（ご登録いただいている方ではない）';
      case MedicineQuestionType.noEffect:
        return '';
      case MedicineQuestionType.pregnancy:
        return '現在、妊娠中である。';
      case MedicineQuestionType.lactation:
        return '現在、授乳中である。';
      case MedicineQuestionType.examinations:
        return '現在、医療機関を受診している又は医薬品を使用している。';
      case MedicineQuestionType.firstUse:
        return 'この医薬品を使用するのが初めてである。';
      case MedicineQuestionType.thisDrugSideEffect:
        return 'いままでにこの医薬品で副作用を起こしたことがある。';
      case MedicineQuestionType.sideEffect:
        return 'いままでに他の医薬品で副作用を起こしたことがある。';
      case MedicineQuestionType.exceeding:
        return '現在、この医薬品を長期間（添付文書に記載されている期間以上）継続して使用している。';
      case MedicineQuestionType.drugStock:
        return '他の薬局等で同じ商品を購入し買い置きがすでにある。';
      case MedicineQuestionType.otherPurpose:
        return 'この医薬品の添付文書に記載されている以外の目的で使用する。';
    }
  }

  Widget view(BuildContext context) {
    switch (this) {
      case MedicineQuestionType.noEffect:
        return Visibility(
          visible: context.read<MedicineAnswerFormViewModel>().isDisplayNoEffectCell(),
          child: const _QuestionView(MedicineQuestionType.noEffect),
        );
      case MedicineQuestionType.lactation:
        return Selector2<CustomerState, MedicineAnswerFormPageState, bool>(
          selector: (context, customerState, state) =>
              (state.medicineAnswerForm.userGender ?? customerState.member!.gender) == Gender.female,
          builder: (_, isFemale, __) => Visibility(
            visible: isFemale,
            child: const _QuestionView(MedicineQuestionType.lactation),
          ),
        );
      case MedicineQuestionType.pregnancy:
        return Selector2<CustomerState, MedicineAnswerFormPageState, bool>(
          selector: (context, customerState, state) =>
              (state.medicineAnswerForm.userGender ?? customerState.member!.gender) == Gender.female,
          builder: (_, isFemale, __) => Visibility(
            visible: isFemale,
            child: const _QuestionView(MedicineQuestionType.pregnancy),
          ),
        );
      default:
        return _QuestionView(this);
    }
  }

  bool isCheck(BuildContext context) {
    switch (this) {
      case MedicineQuestionType.anotherUser:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.anotherUserFlag);
      case MedicineQuestionType.noEffect:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.noEffectFlag);
      case MedicineQuestionType.pregnancy:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.pregnancyFlag);
      case MedicineQuestionType.lactation:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.lactationFlag);
      case MedicineQuestionType.examinations:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.examinationsFlag);
      case MedicineQuestionType.firstUse:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.firstUseFlag);
      case MedicineQuestionType.thisDrugSideEffect:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.thisDrugSideEffectFlag);
      case MedicineQuestionType.sideEffect:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.sideEffectFlag);
      case MedicineQuestionType.exceeding:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.exceedingFlag);
      case MedicineQuestionType.drugStock:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.drugStockFlag);
      case MedicineQuestionType.otherPurpose:
        return context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.otherPurposeFlag);
    }
  }

  void onTap(BuildContext context) {
    switch (this) {
      case MedicineQuestionType.anotherUser:
        context.read<MedicineAnswerFormViewModel>().onChangeAnotherUserCheckBoxState();
        break;
      case MedicineQuestionType.noEffect:
        context.read<MedicineAnswerFormViewModel>().onChangeNoEffectCheckBoxState();
        break;
      case MedicineQuestionType.pregnancy:
        context.read<MedicineAnswerFormViewModel>().onChangePregnancyCheckBoxState();
        break;
      case MedicineQuestionType.lactation:
        context.read<MedicineAnswerFormViewModel>().onChangeLactationCheckBoxState();
        break;
      case MedicineQuestionType.examinations:
        context.read<MedicineAnswerFormViewModel>().onChangeExaminationsCheckBoxState();
        break;
      case MedicineQuestionType.firstUse:
        context.read<MedicineAnswerFormViewModel>().onChangeFirstUseCheckBoxState();
        break;
      case MedicineQuestionType.thisDrugSideEffect:
        context.read<MedicineAnswerFormViewModel>().onChangeThisDrugSideEffectCheckBoxState();
        break;
      case MedicineQuestionType.sideEffect:
        context.read<MedicineAnswerFormViewModel>().onChangeSideEffectCheckBoxState();
        break;
      case MedicineQuestionType.exceeding:
        context.read<MedicineAnswerFormViewModel>().onChangeExceedingCheckBoxState();
        break;
      case MedicineQuestionType.drugStock:
        context.read<MedicineAnswerFormViewModel>().onChangeDrugStockCheckBoxState();
        break;
      case MedicineQuestionType.otherPurpose:
        context.read<MedicineAnswerFormViewModel>().onChangeOtherPurposeCheckBoxState();
        break;
    }
  }
}

class MedicineAnswerFormPage extends StatelessWidget {
  const MedicineAnswerFormPage({Key? key}) : super(key: key);

  /// カートへ追加成功: true
  /// 購入事前確認画面を表示後同意: false
  /// その他: null
  /// を返却する
  static Route<bool?> route(String productId) => MaterialPageRoute<bool?>(
        builder: (_) => Provider.value(
          value: MedicineAnswerFormPageArguments(productId: productId),
          child: const MedicineAnswerFormPage(),
        ),
        settings: RouteSettings(
          name: name,
        ),
        fullscreenDialog: true,
      );

  static final name = ScreenName.medicineAnswerFormPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build MedicineAnswerFormPage');
    return StateNotifierProvider<MedicineAnswerFormViewModel, MedicineAnswerFormPageState>(
      create: (_) => MedicineAnswerFormViewModel(),
      builder: (context, _) {
        final productId = context.select((MedicineAnswerFormPageArguments value) => value.productId);
        return PrimaryScrollController(
          controller: context.read<MedicineAnswerFormViewModel>().scrollController,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('医薬品事前購入問診'),
              actions: [
                IconButton(
                  padding: const EdgeInsets.only(right: 21),
                  iconSize: 18,
                  color: AppColors.gray2,
                  onPressed: () => Navigator.pop(context),
                  icon: Assets.icons.clear.svg(),
                ),
              ],
              automaticallyImplyLeading: false,
            ),
            body: LoadingFullScreen(
              future: () => context.read<MedicineAnswerFormViewModel>().getQuestions(productId: productId),
              content: Column(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                      child: ListView(
                        controller: context.read<MedicineAnswerFormViewModel>().scrollController,
                        children: [
                          Visibility(
                            visible: context.select((MedicineAnswerFormPageState state) => state.isAlert),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                              child: AlertInsertionBar(),
                            ),
                          ),
                          const SizedBox(height: 24),
                          const Center(
                            child: Text(
                              '購入時確認',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.black2,
                                height: 25 / 18,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          _SubTitleTextRow(
                            const _CautionIcon(false),
                            'こちらの医薬品「${context.read<MedicineAnswerFormPageState>().medicineQuestionModel.productName}」をご購入前に下記の当てはまる項目を選択してください。',
                          ),
                          Visibility(
                            visible: context.select((MedicineAnswerFormPageState state) =>
                                state.medicineQuestionModel.productType == DrugType.designatedSecondClassDrugs),
                            child: Column(
                              children: const [
                                SizedBox(height: 12),
                                _AlertTextRow('こちらの商品は指定第２類薬品です。'
                                    '必ず、「使用上の注意」内の「してはいけないこと」の説明を確認をお願いいたします。 '
                                    'ご不明な点等ございましたら購入時に薬剤師又は登録販売者に相談することをお勧めいたします。'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),
                          for (MedicineQuestionType type in MedicineQuestionType.values)
                            if (type != MedicineQuestionType.drugStock && type != MedicineQuestionType.otherPurpose)
                              type.view(context),
                          SizedBox(height: context.read<MedicineAnswerFormViewModel>().isAbuseLimited() ? 35 : 24),
                          Visibility(
                            visible: context.read<MedicineAnswerFormViewModel>().isAbuseLimited(),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    const _SubTitleTextRow(_CautionIcon(false), '乱用医薬品についての確認事項'),
                                    const SizedBox(height: 12),
                                    _AlertTextRow(
                                        'こちらの医薬品「${context.select((MedicineAnswerFormPageState state) => state.medicineQuestionModel.productName)}」は乱用等の恐れのある医薬品に指定されています。 下記の当てはまる項目を選択してください。'),
                                    const SizedBox(height: 24),
                                    MedicineQuestionType.drugStock.view(context),
                                    MedicineQuestionType.otherPurpose.view(context),
                                    Visibility(
                                      visible: context.select((MedicineAnswerFormPageState state) =>
                                          state.medicineQuestionModel.isUnderage),
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                                        child: Text(
                                          '若年購入者の方はユーザー情報の氏名を記録させていただきます。',
                                          style: TextStyle(fontSize: 16, height: 22 / 16, color: AppColors.emphasis1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: context.read<MedicineAnswerFormViewModel>().isAbuseLimited() ? 24 : 0),
                          const Divider(height: 1.0),
                          const SizedBox(height: 16),
                          const _AttachedDocument(),
                          const SizedBox(height: 32),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: const Text(
                              '記入欄',
                              style: TextStyle(
                                fontSize: 14,
                                height: 19 / 14,
                                color: AppColors.blackAlpha80,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: const Text(
                              '上記以外でもご質問等ございましたら記入をお願いいたします。(300文字以内)',
                              style: TextStyle(fontSize: 14, height: 19 / 14, color: AppColors.blackAlpha80),
                            ),
                          ),
                          const SizedBox(height: 16),
                          const _QuestionEntryForm(),
                          const SizedBox(height: 12),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16.0),
                            child: const Text(
                              '※チェック内容、記入欄の内容に関係なく、店舗の薬剤師・登録販売者よりお客様へ確認の電話をさせていただく場合がございます。 医薬品の服用によりお客様に危害が及ぶ可能性があると判断した場合には販売を見合わせさせていただく場合がございます。 あらかじめご了承ください。',
                              style: TextStyle(fontSize: 12, height: 16 / 12, color: AppColors.blackAlpha80),
                            ),
                          ),
                          const SizedBox(height: 85),
                        ],
                      ),
                    ),
                  ),
                  _BottomView(context.read<MedicineAnswerFormViewModel>().scrollController, productId),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _SubTitleTextRow extends StatelessWidget {
  const _SubTitleTextRow(this._icon, this._text, {Key? key}) : super(key: key);

  final Widget _icon;
  final String _text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: _TextRow(
        _icon,
        Text(
          _text,
          style: const TextStyle(
            color: AppColors.blackAlpha80,
            fontSize: 14,
            height: 19 / 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class _TextRow extends StatelessWidget {
  const _TextRow(this._leftContent, this._rightContent, {Key? key}) : super(key: key);

  final Widget _rightContent;
  final Widget _leftContent;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _leftContent,
        const SizedBox(width: 8),
        Flexible(
          child: _rightContent,
        ),
      ],
    );
  }
}

class _CautionIcon extends StatelessWidget {
  const _CautionIcon(this._isErrorExpandView, {Key? key}) : super(key: key);

  final bool _isErrorExpandView;

  @override
  Widget build(BuildContext context) {
    final double value = _isErrorExpandView ? 15 : 22.5;
    return Container(
      margin: const EdgeInsets.only(top: 3.0),
      height: value,
      width: value,
      child: Assets.icons.warning.svg(),
    );
  }
}

class _AlertTextRow extends StatelessWidget {
  const _AlertTextRow(this._text, {Key? key}) : super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        _text,
        style: const TextStyle(
          height: 19 / 14,
          color: AppColors.blackAlpha80,
          fontSize: 14,
        ),
      ),
    );
  }
}

class _QuestionView extends StatefulWidget {
  const _QuestionView(this._type, {Key? key}) : super(key: key);

  final MedicineQuestionType _type;

  @override
  _QuestionViewState createState() => _QuestionViewState();
}

class _QuestionViewState extends State<_QuestionView> with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final viewModel = context.read<MedicineAnswerFormViewModel>();
    final isCheck = widget._type.isCheck(context);
    final isError = (widget._type == MedicineQuestionType.noEffect ||
            widget._type == MedicineQuestionType.thisDrugSideEffect ||
            widget._type == MedicineQuestionType.exceeding ||
            widget._type == MedicineQuestionType.drugStock ||
            widget._type == MedicineQuestionType.otherPurpose) &&
        isCheck;
    final color = isError ? AppColors.emphasis2 : AppColors.transparent;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          color: color,
          child: AppCheckbox(
            crossAxisAlignment: CrossAxisAlignment.start,
            value: isCheck,
            onChanged: (bool value) {
              if (value) {
                _animationController.forward();
              } else {
                _animationController.reverse();
              }
              widget._type.onTap(context);
              viewModel.updateCartButtonState();
            },
            child: Flexible(
              child: Container(
                margin: const EdgeInsets.only(top: 4.0),
                child: HtmlParser(
                  value: widget._type == MedicineQuestionType.noEffect
                      ? viewModel.getEffectQuestionText()
                      : widget._type.questionText,
                  fontStyle: const TextStyle(
                    color: AppColors.blackAlpha80,
                    height: 22 / 16,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizeTransition(
          sizeFactor: _expandAnimation,
          child: Container(
            color: color,
            padding: const EdgeInsets.only(left: 44, right: 16),
            child: _ExpandView(widget._type),
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

class _ExpandView extends StatelessWidget {
  const _ExpandView(this._type, {Key? key}) : super(key: key);

  final MedicineQuestionType _type;

  @override
  Widget build(BuildContext context) {
    switch (_type) {
      case MedicineQuestionType.anotherUser: // 別使用者
        return const _ExpandAnotherUserView();
      case MedicineQuestionType.noEffect: // 効能効果該当なし
        return const _ErrorMessageText('こちらの医薬品のご購入はできません。症状に対応したものをお選びいただくか医師・薬剤師への相談をお勧めいたします。');
      case MedicineQuestionType.examinations: // 併用医療機関／医薬品あり
        return const _ExpandExaminationsView();
      case MedicineQuestionType.pregnancy: // 妊娠中
        return const _ExpandPregnancyView();
      case MedicineQuestionType.lactation: // 授乳中
        return const SizedBox.shrink();
      case MedicineQuestionType.firstUse: // 初使用
        return const SizedBox.shrink();
      case MedicineQuestionType.thisDrugSideEffect: // この薬品での副作用経歴あり
        return const _ErrorMessageText('こちらの医薬品の購入はできません。（同様の副作用が起きる可能性が高いため）');
      case MedicineQuestionType.sideEffect: // 他の薬品での副作用経歴あり
        return const _ExpandSideEffectView();
      case MedicineQuestionType.exceeding: // 長期継続使用中
        return const _ErrorMessageText('こちらの医薬品の購入はできません。（長期連用による副作用が発生する恐れがあるため）症状が改善していない場合は医療機関への受診をお勧めいたします。');
      case MedicineQuestionType.drugStock: // 乱用抑止医薬品-買い置きあり
        return const _ErrorMessageText('こちらの医薬品の購入はできません。現在お持ちの医薬品を使用後改めて購入をお願いいたします。 症状が改善していない場合は医療機関への受診をお勧めいたします。');
      case MedicineQuestionType.otherPurpose: // 乱用抑止医薬品-別目的あり
        return const _ErrorMessageText('こちらの医薬品の購入はできません。適正な使用目的以外の使用はお客様の健康を害する恐れがあります。');
      default:
        return const SizedBox.shrink();
    }
  }
}

class _ExpandAnotherUserView extends StatelessWidget {
  const _ExpandAnotherUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MedicineAnswerFormViewModel>();
    final isErrorUserAge = context.select((MedicineAnswerFormPageState state) => state.isErrorUserAge);
    final isErrorUserGender = context.select((MedicineAnswerFormPageState state) => state.isErrorUserGender);
    return Column(
      children: [
        const SizedBox(height: 16),
        const SizedBox(
          width: double.infinity,
          child: _ExpandText('使用者が別の場合'),
        ),
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const _ExpandText('年齢'),
            const SizedBox(width: 8),
            SizedBox(
              width: 95,
              height: 40,
              child: TextFormField(
                maxLength: 3,
                maxLines: 1,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                initialValue: context.read<MedicineAnswerFormPageState>().medicineAnswerForm.userAge ?? '',
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16.0),
                    counterText: '',
                    enabledBorder: isErrorUserAge
                        ? const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.warning1, width: 2),
                          )
                        : null,
                    focusedBorder: isErrorUserAge
                        ? const OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.warning1, width: 2),
                          )
                        : null),
                onChanged: (text) {
                  viewModel.userAge = text;
                },
              ),
            ),
            const SizedBox(width: 8),
            const _ExpandText('歳'),
          ],
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: isErrorUserAge,
          child: const _ErrorMessageTextWithWarningMark('使用者の年齢は半角数字3桁以下で入力してください'),
        ),
        Row(
          children: const [
            _SelectGenderRadioButton(Gender.male),
            SizedBox(width: 36),
            _SelectGenderRadioButton(Gender.female),
          ],
        ),
        const SizedBox(height: 10),
        Visibility(
          visible: isErrorUserGender,
          child: const _ErrorMessageTextWithWarningMark('使用者の性別を選択してください'),
        ),
      ],
    );
  }
}

class _ExpandText extends StatelessWidget {
  const _ExpandText(this._text, {Key? key}) : super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: const TextStyle(
        fontSize: 16,
        height: 22 / 16,
        color: AppColors.blackAlpha80,
      ),
    );
  }
}

class _ErrorMessageTextWithWarningMark extends StatelessWidget {
  const _ErrorMessageTextWithWarningMark(this._text, {Key? key}) : super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _CautionIcon(true),
            const SizedBox(width: 4.0),
            Flexible(
              child: Text(
                _text,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontSize: 14,
                  height: 19 / 14,
                  color: AppColors.warning1,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _SelectGenderRadioButton extends StatelessWidget {
  const _SelectGenderRadioButton(this._gender, {Key? key}) : super(key: key);

  final Gender _gender;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MedicineAnswerFormViewModel>();
    final selectGender = context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.userGender);
    return GestureDetector(
      onTap: () => viewModel.selectGender = _gender,
      child: Row(
        children: [
          AppRadio(
            value: _gender,
            groupValue: selectGender,
            onChanged: (_) => viewModel.selectGender = _gender,
          ),
          const SizedBox(width: 4),
          _ExpandText(_gender.value),
        ],
      ),
    );
  }
}

class _ErrorMessageText extends StatelessWidget {
  const _ErrorMessageText(this._text, {Key? key}) : super(key: key);

  final String _text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(
          _text,
          style: const TextStyle(
            fontSize: 16,
            height: 22 / 16,
            color: AppColors.warning1,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _ExpandExaminationsView extends StatelessWidget {
  const _ExpandExaminationsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isErrorExaminations = context.select((MedicineAnswerFormPageState state) => state.isErrorExaminations);
    return Column(
      children: [
        const SizedBox(height: 8),
        const _ExpandText('チェック項目最下部の記入欄に具体的内容の記入をお願いいたします。'),
        Visibility(
          visible: isErrorExaminations,
          child: Column(
            children: const [
              SizedBox(height: 8),
              _ErrorMessageTextWithWarningMark(
                'チェック項目最下部の記入欄に現在受診している医療機関、または、使用している医薬品を入力してください',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ExpandPregnancyView extends StatelessWidget {
  const _ExpandPregnancyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<MedicineAnswerFormViewModel>();
    final isErrorPregnancyWeek = context.select((MedicineAnswerFormPageState state) => state.isErrorPregnancyWeek);
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            const _ExpandText('妊娠週数'),
            const SizedBox(width: 8),
            SizedBox(
              width: 95,
              height: 40,
              child: TextFormField(
                maxLength: 2,
                maxLines: 1,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                initialValue: context.read<MedicineAnswerFormPageState>().medicineAnswerForm.pregnancyWeek ?? '',
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16.0),
                  counterText: '',
                  enabledBorder: isErrorPregnancyWeek
                      ? const OutlineInputBorder(borderSide: BorderSide(color: AppColors.warning1, width: 2))
                      : null,
                  focusedBorder: isErrorPregnancyWeek
                      ? const OutlineInputBorder(borderSide: BorderSide(color: AppColors.warning1, width: 2))
                      : null,
                ),
                onChanged: (text) {
                  viewModel.pregnancyWeek = text;
                },
              ),
            ),
            const SizedBox(width: 8),
            const _ExpandText('週'),
          ],
        ),
        const SizedBox(height: 8),
        Visibility(
          visible: isErrorPregnancyWeek,
          child: const _ErrorMessageTextWithWarningMark('妊娠週数は半角数字2桁以下で入力してください'),
        ),
      ],
    );
  }
}

class _ExpandSideEffectView extends StatelessWidget {
  const _ExpandSideEffectView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isError = context.select((MedicineAnswerFormPageState state) => state.isErrorSideEffect);
    return Column(
      children: [
        const SizedBox(height: 8),
        const _ExpandText('チェック項目最下部の記入欄に具体的内容の記入をお願いいたします。'),
        Visibility(
            visible: isError,
            child: Column(
              children: const [
                SizedBox(height: 13),
                _ErrorMessageTextWithWarningMark('チェック項目最下部の記入欄に副作用の具体的内容を入力してください'),
              ],
            )),
      ],
    );
  }
}

class _QuestionEntryForm extends StatelessWidget {
  const _QuestionEntryForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isErrorExaminations = context.select((MedicineAnswerFormPageState state) => state.isErrorExaminations);
    final isErrorSideEffect = context.select((MedicineAnswerFormPageState state) => state.isErrorSideEffect);
    final isInvalidCharacters = context.select((MedicineAnswerFormPageState state) => state.isInvalidCharacters);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 160,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.top,
              maxLength: 300,
              maxLines: null,
              expands: true,
              initialValue: context.read<MedicineAnswerFormPageState>().medicineAnswerForm.otherAnswer ?? '',
              decoration: InputDecoration(
                hintText: 'チェック内容によって、記入欄への入力が必須になる場合がございます。',
                contentPadding: const EdgeInsets.all(16.0),
                hintStyle: const TextStyle(fontSize: 14, height: 19 / 14),
                hintMaxLines: 2,
                counterText: '',
                enabledBorder: highlightBorderIfNeeded(isErrorExaminations, isErrorSideEffect, isInvalidCharacters),
                focusedBorder: highlightBorderIfNeeded(isErrorExaminations, isErrorSideEffect, isInvalidCharacters),
              ),
              onChanged: (text) {
                context.read<MedicineAnswerFormViewModel>().numberOfInputCharacters = text;
              },
            ),
          ),
          Visibility(
            visible: isErrorExaminations,
            child: Column(
              children: const [
                SizedBox(height: 13),
                _ErrorMessageTextWithWarningMark('現在受診している医療機関、または、使用している医薬品を入力してください'),
              ],
            ),
          ),
          Visibility(
            visible: isErrorSideEffect,
            child: Column(
              children: const [
                SizedBox(height: 13),
                _ErrorMessageTextWithWarningMark('副作用の具体的内容を入力してください'),
              ],
            ),
          ),
          Visibility(
            visible: isInvalidCharacters,
            child: Column(
              children: const [
                SizedBox(height: 13),
                _ErrorMessageTextWithWarningMark('環境依存文字は入力できません'),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Text(
              '入力文字数：${context.select((MedicineAnswerFormPageState state) => state.medicineAnswerForm.otherAnswer?.length ?? 0)}/300文字',
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 12,
                height: 16 / 12,
                color: AppColors.black2,
              ),
            ),
          )
        ],
      ),
    );
  }

  OutlineInputBorder? highlightBorderIfNeeded(
      bool isErrorExaminations, bool isErrorSideEffect, bool isInvalidCharacters) {
    if (isErrorExaminations || isErrorSideEffect || isInvalidCharacters) {
      return const OutlineInputBorder(borderSide: BorderSide(color: AppColors.warning1, width: 2));
    }
    return null;
  }
}

class _BottomView extends StatelessWidget {
  const _BottomView(this._scrollController, this._productId, {Key? key}) : super(key: key);

  final ScrollController? _scrollController;
  final String _productId;

  @override
  Widget build(BuildContext context) {
    final isMember = context.select((CustomerState state) => state.isMember);
    final productName = context.select((MedicineAnswerFormPageState state) => state.medicineQuestionModel.productName);
    Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
      return addToCartErrorHandler(
        error,
        context,
        isMember,
        handler,
        productName: productName,
        limitedNumber: '1',
      );
    }

    Future<ErrorHandlerState> _medicineNotConfirmedErrorHandler(
      DioError error,
      BuildContext context,
      ErrorHandler handler,
    ) async {
      final httpStatus = error.response!.statusCode;
      if (httpStatus != HttpStatus.badRequest) {
        return handler.next(error);
      }
      // ignore: prefer_void_to_null
      final errorResponse = ResponseModel<Null>.fromJson(error.response!.data);
      final statusCode = errorResponse.statusCode;
      if (!(statusCode == 'E-00007' || statusCode == 'E-00002')) {
        return handler.next(error);
      }
      final errorReasonCode = errorResponse.errorDetails.first.errorReasonCode;
      // 事前購入未承認の場合
      if (errorReasonCode == '2000215') {
        final navigatorState = Navigator.of(context);
        // ローディングモーダルを閉じた後に実行する
        WidgetsBinding.instance.addPostFrameCallback((_) async {
          final isApproved = await navigatorState.push(MedicineConfirmationsPage.route()) ?? false;
          // 事前確認に同意済みならカート追加失敗を返す
          navigatorState.pop(isApproved ? false : null);
        });
        return handler.resolve();
      }
      return handler.next(error);
    }

    Future<ErrorHandlerState> _validationErrorHandler(Object error, BuildContext context, ErrorHandler handler) async {
      if (error is! FormatException) {
        return handler.next(error);
      }
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController?.animateTo(
          0,
          duration: const Duration(milliseconds: 100),
          curve: Curves.bounceInOut,
        );
      });
      return handler.resolve();
    }

    return SafeArea(
      child: Container(
        height: 85,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.bottomCenter,
            end: FractionalOffset.topCenter,
            colors: [
              AppColors.white,
              AppColors.whiteAlpha70,
              AppColors.whiteAlpha0,
            ],
          ),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Expanded(
              flex: 1,
              child: GreyOutlinedButton.medium(
                widthFactor: 0.98,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('キャンセル'),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              flex: 1,
              child: BlueElevatedButton.medium(
                widthFactor: 0.98,
                onPressed: context.select((MedicineAnswerFormPageState state) => state.isInvalidCartButton)
                    ? null
                    : () async {
                        final isSucceeded = await showLoadingModal(
                          context: context,
                          future: () async {
                            await context.read<MedicineAnswerFormViewModel>().validateInputInfo();
                            return await context.read<MedicineAnswerFormViewModel>().onTapCart(_productId);
                          },
                          errorOperators: [
                            ErrorOperatorWrapper(null, _validationErrorHandler),
                            ErrorOperatorWrapper(_handler),
                            ErrorOperatorWrapper(_medicineNotConfirmedErrorHandler),
                          ],
                        );
                        if (isSucceeded == true) {
                          //カート追加成功時マイクロインタラクションを実行
                          HapticFeedback.lightImpact();

                          final repeatMessage =
                              context.read<MedicineAnswerFormPageState>().medicineQuestionModel.medicineRepeatMessage;
                          if (repeatMessage.isNotEmpty) {
                            await showConfirmationDialog<void>(
                              context: context,
                              dialogName: 'MedicineRepeatMessageModal',
                              title: '購入に注意が必要な商品です',
                              content: Column(
                                children: [
                                  HtmlParser(
                                    value: repeatMessage,
                                    fontStyle: const TextStyle(
                                      color: AppColors.gray1,
                                      height: 19 / 14,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    padding: const EdgeInsets.all(16.0),
                                    color: AppColors.background2,
                                    child: Text(
                                      productName,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        color: AppColors.black2,
                                        height: 19 / 14,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              applicationText: 'OK',
                              onApplied: (context) => () {
                                Navigator.pop(context);
                              },
                            );
                          }

                          Navigator.pop(context, true);
                        }
                      },
                child: const Text('カートへ'),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

class _AttachedDocument extends StatelessWidget {
  const _AttachedDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '商品の添付文書を必ずご確認の上ご購入ください',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 14, height: 19 / 14, color: AppColors.blackAlpha80),
          ),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: BlueTextButton.underline(
            onPressed: () async {
              await launchUrl(Uri.parse(context.read<MedicineAnswerFormPageState>().medicineQuestionModel.pdfUrl),
                  mode: LaunchMode.externalApplication);
            },
            child: const Text(
              '商品の添付文書はこちらから(PDF)',
              style: TextStyle(
                fontSize: 14,
                height: 19 / 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
