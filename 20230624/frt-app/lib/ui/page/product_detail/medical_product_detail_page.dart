import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../enum/category_type.dart';
import '../../../enum/drug_type.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/cart_info_manager.dart';
import '../../common/about_medical_product.dart';
import '../../common/app_buttons.dart';
import '../../common/app_checkbox.dart';
import '../../common/app_colors.dart';
import '../../common/attention_text.dart';
import '../../common/compliance_warning_labels.dart';
import '../../common/drug_shop_info.dart';
import '../../common/html_parser.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';
import 'advertising_term.dart';
import 'cancel_possibility_notes.dart';
import 'card_member_discount_label.dart';
import 'limited_delivery_datetime.dart';
import 'market_time.dart';
import 'medicine_confirmations_page.dart';
import 'nanaco_point_label.dart';
import 'order_medicine_process_page.dart';
import 'prince_and_unit.dart';
import 'prodcut_images.dart';
import 'product_change_deadline_text.dart';
import 'product_description_text.dart';
import 'product_label.dart';
import 'product_name_label.dart';
import 'product_number_select_box.dart';
import 'product_page_cart_button.dart';
import 'product_specification_text.dart';
import 'production_notes.dart';
import 'received_date_notes.dart';
import 'sale_by_mesaure_detail_notes.dart';
import 'stock_number.dart';

class MedicalProductDetailPage extends StatelessWidget {
  const MedicalProductDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _medicineConfirmationsDisplay(context);
      },
    );

    return SingleChildScrollView(
      controller: context.read<ProductDetailPageViewModel>().controller,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ComplianceWarningLabels(
              categoryType: CategoryType.drug,
              key: context.read<ProductDetailPageViewModel>().topGlobalKey,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 10),
            child: AboutMedicalProduct(),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 36, left: 16, right: 16),
            child: ProductImages(),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                AdvertisingTerm(),
                LimitedDeliveryDatetime(),
                MarketTime(),
                CancelPossibilityNotes(),
                ProductLabels(position: ProductLabelPosition.top),
                StockNumber(),
                ProductLabels(position: ProductLabelPosition.bottom),
                ProductSpecificationText(),
                ProductChangeDeadlineText(),
                ProductNameLabel(),
                NanacoPointLabel(),
                PriceAndUnit(),
                ProductionNotes(),
                CardMemberDiscountLabel(),
                ReceivedDateNotes(),
                ProductNumberSelectBox(),
                _CheckReadingWarning(),
                SizedBox(height: 12),
                _DrugTypeMessage(),
                SizedBox(height: 16),
                ProductPageCartButton(),
                SizedBox(height: 24),
                SaleByMeasureDetailNotes(),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16),
            child: ProductDescriptionText(),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                SizedBox(height: 16),
                _MedicineQuestions(),
                SizedBox(height: 12),
                _CheckReadingWarning(),
                SizedBox(height: 12),
                _DrugTypeMessage(),
                SizedBox(height: 16),
                ProductPageCartButton(),
                SizedBox(height: 16),
                AttentionText(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: DrugShopInfo(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}

class _MedicineQuestions extends StatelessWidget {
  const _MedicineQuestions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDetail = context.select((ProductDetailPageState state) => state.productDetailModel);
    final warningMessage = productDetail.drugType == DrugType.firstClassDrugs
        ? 'チェック項目に該当する方は購入できません。\n医師、薬剤師にご相談してください。'
        : 'チェック項目に該当する方は購入できません。\n医師、薬剤師又は登録販売者にご相談してください。';

    return Column(
      children: [
        Text(
          '${productDetail.product.productName}の使用上の注意',
          style: const TextStyle(
            color: AppColors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 22 / 16,
          ),
          key: context.read<ProductDetailPageViewModel>().targetGlobalKey,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.inactive,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _TabooQuestions(warningMessage: warningMessage),
              _ConsultQuestions(warningMessage: warningMessage),
              const _AttachedDocument(),
            ],
          ),
        )
      ],
    );
  }
}

class _TabooQuestions extends StatelessWidget {
  const _TabooQuestions({Key? key, required this.warningMessage}) : super(key: key);
  final String warningMessage;

  @override
  Widget build(BuildContext context) {
    final productDetail = context.select((ProductDetailPageState state) => state.productDetailModel);
    final tabooCheckList = context.select((ProductDetailPageState state) => state.tabooCheckList);
    final medicineTaboos = productDetail.medicineQuestion?.medicineTaboos;

    return Visibility(
      visible: medicineTaboos?.isNotEmpty ?? false,
      child: Container(
        padding: const EdgeInsets.only(top: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.inactive),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'してはいけないこと',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 22 / 16,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              warningMessage,
              style: const TextStyle(
                color: AppColors.emphasis1,
                fontSize: 14,
                height: 19 / 14,
              ),
            ),
            const SizedBox(height: 12),
            for (var index = 0; index < medicineTaboos!.length; index++)
              Padding(
                padding: EdgeInsets.only(
                  bottom: index == medicineTaboos.length ? 16 : 24,
                ),
                child: medicineTaboos[index].isDisplayMedicineBuyCheck
                    ? AppCheckbox(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        value: tabooCheckList.isNotEmpty ? tabooCheckList[index] : false,
                        onChanged: (_) => context.read<ProductDetailPageViewModel>().switchTabooCheckList(index),
                        child: Flexible(
                          child: _MedicineQuestionText(text: medicineTaboos[index].medicineQuestion),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(left: 32),
                        child: _MedicineQuestionText(text: medicineTaboos[index].medicineQuestion),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}

class _ConsultQuestions extends StatelessWidget {
  const _ConsultQuestions({Key? key, required this.warningMessage}) : super(key: key);
  final String warningMessage;

  @override
  Widget build(BuildContext context) {
    final productDetail = context.select((ProductDetailPageState state) => state.productDetailModel);
    final consultCheckList = context.select((ProductDetailPageState state) => state.consultCheckList);
    final medicineConsuls = productDetail.medicineQuestion?.medicineConsuls;

    return Visibility(
      visible: medicineConsuls?.isNotEmpty ?? false,
      child: Container(
        padding: const EdgeInsets.only(top: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: AppColors.inactive),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '相談すること',
              style: TextStyle(
                color: AppColors.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 22 / 16,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              warningMessage,
              style: const TextStyle(
                color: AppColors.emphasis1,
                fontSize: 14,
                height: 19 / 14,
              ),
            ),
            const SizedBox(height: 12),
            for (var index = 0; index < medicineConsuls!.length; index++)
              Padding(
                padding: EdgeInsets.only(bottom: index == medicineConsuls.length ? 16 : 24),
                child: medicineConsuls[index].isDisplayMedicineBuyCheck
                    ? AppCheckbox(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        value: consultCheckList.isNotEmpty ? consultCheckList[index] : false,
                        onChanged: (_) => context.read<ProductDetailPageViewModel>().switchConsultCheckList(index),
                        child: Flexible(
                          child: _MedicineQuestionText(text: medicineConsuls[index].medicineQuestion),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(left: 32),
                        child: _MedicineQuestionText(text: medicineConsuls[index].medicineQuestion),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}

class _MedicineQuestionText extends StatelessWidget {
  const _MedicineQuestionText({required this.text, Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: HtmlParser(
        value: text,
      ),
    );
  }
}

class _AttachedDocument extends StatelessWidget {
  const _AttachedDocument({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pdfUrl = context.select((ProductDetailPageState state) => state.productDetailModel.medicineQuestion?.pdfUrl);

    return Padding(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '商品の添付文書を必ずご確認の上ご購入ください',
            style: TextStyle(
              color: AppColors.black,
              fontSize: 14,
              height: 19 / 14,
            ),
          ),
          const SizedBox(height: 12),
          BlueTextButton.underline(
            onPressed: pdfUrl == null
                ? null
                : () async {
                    await launchUrl(Uri.parse(pdfUrl), mode: LaunchMode.externalApplication);
                  },
            child: Row(
              children: [
                const Text(
                  '商品の添付文書はこちらから(PDF)',
                  style: TextStyle(
                    fontSize: 14,
                    height: 19 / 14,
                  ),
                ),
                const SizedBox(width: 4),
                Assets.icons.externalLink.svg(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CheckReadingWarning extends StatelessWidget {
  const _CheckReadingWarning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.emphasis2,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          AppCheckbox(
            crossAxisAlignment: CrossAxisAlignment.start,
            value: context.select((ProductDetailPageState state) => state.isReadWarning),
            onChanged: (_) => context.read<ProductDetailPageViewModel>().switchReadWarning(),
            child: Flexible(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'ページ中部の',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          height: 19 / 14,
                        ),
                      ),
                      TextSpan(
                        text: '使用上の注意、添付文書',
                        style: const TextStyle(
                          color: AppColors.main,
                          fontSize: 14,
                          height: 19 / 14,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => context.read<ProductDetailPageViewModel>().scrollToWarning(),
                      ),
                      const TextSpan(
                        text: 'をすべて確認しました。',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 14,
                          height: 19 / 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DrugTypeMessage extends StatelessWidget {
  const _DrugTypeMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productDetail = context.select((ProductDetailPageState state) => state.productDetailModel);
    final visible = productDetail.drugType == DrugType.firstClassDrugs ||
        productDetail.drugType == DrugType.designatedSecondClassDrugs;
    final message = productDetail.drugType == DrugType.firstClassDrugs
        ? 'こちらの商品は第一類医薬品です。必ず、「使用上の注意」内の「してはいけないこと」の説明の確認をお願いいたします。ご不明な点等ございましたら購入時に薬剤師に相談することをお勧めいたします。'
        : 'こちらの商品は指定第２類医薬品です。必ず、「使用上の注意」内の「してはいけないこと」の説明の確認をお願いいたします。ご不明な点等ございましたら購入時に薬剤師又は登録販売者に相談することをお勧めいたします。';

    return Visibility(
      visible: visible,
      child: Text(
        message,
        style: const TextStyle(
          color: AppColors.black,
          fontSize: 14,
          height: 19 / 14,
        ),
      ),
    );
  }
}

void _medicineConfirmationsDisplay(BuildContext context) async {
  final productDetailState = context.read<ProductDetailPageState>();
  final productDetailViewModel = context.read<ProductDetailPageViewModel>();
  final cartInfoState = context.read<CartInfoState>();
  final navigatorState = Navigator.of(context);

  final isConsentMedicine = cartInfoState.isConsentMedicine;
  final isConfirmationsView = productDetailState.isConfirmationsView;

  // 購入事前確認未承認の場合、購入事前確認画面を表示する
  if (!isConfirmationsView && !isConsentMedicine) {
    productDetailViewModel.isConfirmationsView = true;
    final isApproved =
        await Navigator.of(context, rootNavigator: true).push(MedicineConfirmationsPage.route()) ?? false;

    if (isApproved) {
      navigatorState.push(OrderMedicineProcessPage.route());
    } else {
      // 商品カセットへ遷移
      navigatorState.pop(context);
    }
  }
}
