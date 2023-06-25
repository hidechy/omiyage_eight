import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/api/model/shops_medicine_confirms_model.dart';
import '../../gen/assets.gen.dart';
import '../../util/launcher.dart';
import '../state/shop_info_state.dart';
import 'app_colors.dart';
import 'html_parser.dart';

/// 医薬品の購入事前確認
class DrugConfirmation extends StatelessWidget {
  const DrugConfirmation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!context.select((ShopInfoState state) => state.shopInfo.isDrugShop)) {
      return const SizedBox.shrink();
    }
    return Container(
      width: double.infinity,
      height: 550,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.inactive,
          width: 1.0,
        ),
      ),
      child: Scrollbar(
        child: SingleChildScrollView(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 14,
              height: 19 / 14,
              color: AppColors.black2,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '医薬品の販売について',
                  style: TextStyle(
                    fontSize: 18,
                    height: 25 / 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Text(
                    '※このページは医薬品のご購入に関わらず表示させて頂いております。',
                    style: TextStyle(
                      fontSize: 14,
                      height: 19 / 14,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 32),
                  child: Text(
                    'お客様へ',
                    style: TextStyle(
                      fontSize: 16,
                      height: 22 / 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text(
                    '当店は、情報提供を適切に行う為の構造設備及び販売体制を、次のように整備しております。'
                    'この掲示は「医薬品、医療機器等の品質、有効性及び安全性の確保等に関する法律」第九条の四、'
                    '第二十九条の三により規定されております。（以下、「医薬品医療機器等法」と記載）',
                    style: TextStyle(
                      fontSize: 14,
                      height: 19 / 14,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MedicineConfirmColumns(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MedicineConfirmColumns extends StatelessWidget {
  const MedicineConfirmColumns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (ConfirmColumn column in ConfirmColumn.values) _MedicineConfirmInfoWidget(column),
      ],
    );
  }
}

class _MedicineConfirmInfoWidget extends StatelessWidget {
  const _MedicineConfirmInfoWidget(this.value, {Key? key}) : super(key: key);

  final ConfirmColumn value;

  @override
  Widget build(BuildContext context) {
    final confirmsModel = context.select((ShopInfoState state) => state.medicineConfirms);
    if (confirmsModel == null) {
      return const SizedBox.shrink();
    }

    var result = _getConfirmColumn(value, confirmsModel);
    final title = result[0];
    final info = result[1];

    switch (value) {
      case ConfirmColumn.sellers:
        final infoParts = DefaultTextStyle(
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(confirmsModel.sellers),
              const SizedBox(height: 12),
              const Text(
                '※個人別の担当業務については勤務表に記載がございます。',
                style: TextStyle(
                  color: AppColors.gray1,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 16 / 12,
                ),
              ),
            ],
          ),
        );
        return _ConfirmColumnTable(title, infoParts);

      case ConfirmColumn.medicineSalesType:
        final infoParts = DefaultTextStyle(
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('<店頭販売>'),
              Visibility(
                visible: confirmsModel.medicineSalesType == '1',
                child: const Text('要指導医薬品 ／ 第一類医薬品 ／'),
              ),
              Text(confirmsModel.handledMedicineTypes),
              const Text('\n<特定販売>（インターネット販売）'),
              Text(confirmsModel.handledMedicineTypes),
            ],
          ),
        );
        return _ConfirmColumnTable(title, infoParts);

      case ConfirmColumn.comment:
        final infoParts = Text(
          '薬剤師は、${confirmsModel.pharmacistComment}'
          '登録販売者は、${confirmsModel.sellerComment}'
          '登録販売者(研修中)は、青緑色の制服に研修中登録販売者と書いた名札を付けています。'
          'その他の従業員は、${confirmsModel.otherComment}',
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          overflow: TextOverflow.clip,
        );
        return _ConfirmColumnTable(title, infoParts);

      case ConfirmColumn.businessTime:
        Widget infoParts;
        if (confirmsModel.isEqualsMedicineBusinessTime) {
          infoParts = DefaultTextStyle(
            style: const TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(confirmsModel.mondayBusinessTime),
                if (confirmsModel.businessTimeSupplement != '') HtmlParser(value: confirmsModel.businessTimeSupplement),
              ],
            ),
          );
        } else {
          infoParts = DefaultTextStyle(
            style: const TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
              height: 19 / 14,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('月${confirmsModel.mondayBusinessTime}\n'
                    '火${confirmsModel.tuesdayBusinessTime}\n'
                    '水${confirmsModel.wednesdayBusinessTime}\n'
                    '木${confirmsModel.thursdayBusinessTime}\n'
                    '金${confirmsModel.fridayBusinessTime}\n'
                    '土${confirmsModel.saturdayBusinessTime}\n'
                    '日${confirmsModel.sundayBusinessTime}'),
                if (confirmsModel.businessTimeSupplement != '') HtmlParser(value: confirmsModel.businessTimeSupplement),
              ],
            ),
          );
        }
        return _ConfirmColumnTable(title, infoParts);

      case ConfirmColumn.shopTelNumber:
        final info2 = result[2];
        final infoParts = RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: info,
                recognizer: TapGestureRecognizer()..onTap = () => _callPhone('tel:$info'),
                style: const TextStyle(
                  color: AppColors.main,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text: info2,
                style: const TextStyle(
                  fontSize: 14,
                  color: AppColors.black2,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        );
        return _ConfirmColumnTable(title, infoParts);
      case ConfirmColumn.systemInfo:
        return const _SystemInfoWidget();
      case ConfirmColumn.inquiryCounter:
        return DefaultTextStyle(
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const Text(
                '苦情相談窓口について',
                style: TextStyle(
                  color: AppColors.black2,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 22 / 16,
                ),
              ),
              const SizedBox(height: 16),
              _TelLinkText(confirmsModel.permissionShopName, confirmsModel.shopTelNumber),
              const SizedBox(height: 16),
              _TelLinkText(confirmsModel.insuranceName, confirmsModel.insuranceTelNumber),
            ],
          ),
        );

      default:
        final infoParts = Text(
          info,
          style: const TextStyle(
            color: AppColors.black2,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            height: 19 / 14,
          ),
          overflow: TextOverflow.clip,
        );
        return _ConfirmColumnTable(
          title,
          infoParts,
          type: value,
        );
    }
  }

  // 確認項目のタイトルと店舗情報
  List<String> _getConfirmColumn(ConfirmColumn value, ShopsMedicineConfirmsModel confirmsModel) {
    switch (value) {
      case ConfirmColumn.permissionType:
        return ['許可区分：', confirmsModel.permissionTypeName];
      case ConfirmColumn.establisherName:
        return ['店舗販売事業者：', confirmsModel.establisherName];
      case ConfirmColumn.establisherAdress:
        return ['本社所在地：', confirmsModel.establisherAddress];
      case ConfirmColumn.establishedRepresentative:
        return ['代表者：', confirmsModel.establishedRepresentative];
      case ConfirmColumn.permissionNumber:
        return ['許可番号：', confirmsModel.permissionNumber];
      case ConfirmColumn.permissionShopName:
        return ['店舗名称：', confirmsModel.permissionShopName];
      case ConfirmColumn.permissionShopAddress:
        return ['店舗所在地：', confirmsModel.permissionShopAddress];
      case ConfirmColumn.validityPeriod:
        return ['有効期間：', confirmsModel.validityPeriod];
      case ConfirmColumn.shopAdministratorName:
        return ['店舗管理者：', confirmsModel.shopAdministratorName];
      case ConfirmColumn.pharmacists:
        return ['薬剤師：', confirmsModel.pharmacists];
      case ConfirmColumn.sellers:
        return ['登録販売者：', ''];
      case ConfirmColumn.medicineSalesType:
        return ['取扱医薬品の種類：', ''];
      case ConfirmColumn.comment:
        return ['店舗に勤務する者の名札等による区別に関する説明：', ''];
      case ConfirmColumn.businessTime:
        return ['営業時間：', ''];
      case ConfirmColumn.consultationTime:
        return ['営業時間外で相談できる時間：', 'なし'];
      case ConfirmColumn.receptionTime:
        return ['営業時間外で医薬品の購入又は譲受けの申し込みを受理する時間：', '閉店より開店まで（インターネットサイトにて）'];
      case ConfirmColumn.shopTelNumber:
        return ['相談時及び緊急時の電話番号：', confirmsModel.shopTelNumber, '（受付時間：営業時間に同じ）'];
      case ConfirmColumn.systemInfo:
        return ['要指導医薬品及び一般用医薬品の販売に関する事項', ''];
      case ConfirmColumn.inquiryCounter:
        return ['苦情相談窓口について', ''];
    }
  }
}

class _SystemInfoWidget extends StatelessWidget {
  const _SystemInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: AppColors.black2,
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 19 / 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: 32),
          Text(
            '要指導医薬品及び一般用医薬品の販売に関する制度に関する事項',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 25 / 18,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '要指導医薬品、一般用医薬品の定義及び解説',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '■要指導医薬品',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text('下記のイからニに掲げるもののうち、その効能及び効果において人体に対する作用が著しくないものであって、薬剤師その他の医薬関係者'
              'から提供された情報に基づく需要者の選択により使用されることが目的とされているものであり、かつ、その適正な使用のために薬剤師の'
              '対面による情報の提供及び薬学的知見に基づく指導が行われることが必要なもの。'),
          SizedBox(height: 16),
          Text('[イ] 再審査を終えていないダイレクトOTC ／ [ロ]スイッチ直後品目 ／[ハ] 毒薬 ／ [ニ] 劇薬'),
          SizedBox(height: 24),
          Text(
            '■一般用医薬品',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          _ConfirmColumnTable(
              '第1類医薬品：',
              Text(
                'その副作用等により日常生活に支障を来す程度の健康被害が生ずるおそれがある医薬品のうちその使用に関し'
                '特に注意が必要なものとして厚生労働大臣が指定するもの及びその製造販売の承認の申請に際して'
                '医薬品医療機器等法第１４条第８項第１号に該当するとされた医薬品であって'
                '当該申請に係る承認を受けてから厚生労働省令で定める期間を経過しないもの。'
                '（一般用医薬品の中で特にリスクが高い医薬品を指します。）',
                overflow: TextOverflow.clip,
              )),
          _ConfirmColumnTable(
              '第2類医薬品：',
              Text(
                'その副作用等により日常生活に支障を来す程度の健康被害が生ずるおそれがある医薬品（第１類医薬品を除く。）'
                'であって厚生労働大臣が指定するもの。（一般用医薬品の中でリスクが比較的高い医薬品を指します。）'
                '第２類医薬品の中で、特別な注意を要するものとして厚生労働大臣が指定するものを'
                '「指定第２類医薬品」として区別しています。',
                overflow: TextOverflow.clip,
              )),
          _ConfirmColumnTable(
            '第3類医薬品：',
            Text(
              '第１類医薬品及び第２類医薬品以外の一般用医薬品。（一般用医薬品の中で比較的リスクが低い医薬品を指します。）',
              overflow: TextOverflow.clip,
            ),
          ),
          Divider(),
          SizedBox(height: 24),
          Text(
            '■要指導医薬品、一般用医薬品の表示に関する解説',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text('個々の医薬品については、下記のとおり表示されています。'),
          SizedBox(height: 16),
          _ConfirmColumnTable(
            '要指導医薬品：',
            Text(
              '「要指導医薬品」の文字を記載し、枠で囲みます。',
              overflow: TextOverflow.clip,
            ),
          ),
          _ConfirmColumnTable(
            '一般用医薬品：',
            Text(
              '一般用医薬品は、リスク区分ごとに、「第１類医薬品」「第２類医薬品」「第３類医薬品」の文字を記載し、枠で囲みます。'
              '指定第２類医薬品は、２の文字を○（丸枠）又は□（四角枠）で囲みます。',
              overflow: TextOverflow.clip,
            ),
          ),
          Divider(),
          SizedBox(height: 16),
          Text('※要指導医薬品、一般用医薬品の直接の容器又は直接の被包に記載します。'
              'また、直接の容器又は直接の被包の記載が外から見えない場合は、外部の容器又は外部の被包にも併せて記載します。'),
          SizedBox(height: 24),
          Text(
            '■ 要指導医薬品、一般用医薬品の情報の提供及び指導等に関する解説、指定第２類医薬品の禁忌の確認・専門家への相談について',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text('要指導医薬品、第１類医薬品、第２類医薬品及び第３類医薬品にあっては、それぞれ情報提供及び指導の義務に差があります。'
              'また、対応する専門家も下記のように決まっています。指定第２類医薬品の購入の際には、'
              '薬剤師又は登録販売者から禁忌の確認をさせていただきます。また、必要に応じて相談されることをお勧めします。'
              '登録販売者とは、都道府県の試験に合格した第２類医薬品及び第３類医薬品の販売を担う専門家です。'),
          SizedBox(height: 16),
          _ExpertInfoHorizontalScrollWidget(),
          SizedBox(height: 24),
          Text(
            '■ 要指導医薬品の陳列等に関する解説',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text(
            '要指導医薬品は、要指導医薬品陳列区画のカウンター内部若しくは鍵をかけた陳列設備に陳列しています。',
          ),
          SizedBox(height: 24),
          Text(
            '■ 一般用医薬品の陳列等に関する解説',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text('＜店頭の陳列＞\n '
              '第１類医薬品は、第１類医薬品陳列区画のカウンター内部若しくは鍵をかけた陳列設備に陳列しています。 \n'
              '指定第２類医薬品は、情報提供を行うための設備から７メートル以内の範囲に陳列しています。 '
              '第２類医薬品、第３類医薬品については、それぞれ区別して陳列棚に配置しています。'),
          SizedBox(height: 16),
          Text('＜ネットの陳列＞\n '
              '一般用医薬品のリスク分類別に指定第２類医薬品、第２類医薬品、第３類医薬品の順に陳列しています。\n'
              '商品ごとにリスク表示を明記しております。'),
          SizedBox(height: 16),
          Text('一般用医薬品の個々の画面ごとに、使用上の注意としてしてはいけないこと（禁忌事項）と相談することを表示しています。\n'),
          SizedBox(height: 24),
          Text(
            '■ 医薬品による健康被害の救済に関する制度の解説',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text('＜医薬品副作用被害救済制度＞ \n'
              '医薬品を適正に使用したにもかかわらず副作用により、入院治療程度の疾病や障害等の健康被害を受けた方の救済を図るため、'
              '医療費、医療手当、障害年金などの給付を行う制度です。救済の認定基準や手続きについては、下記にお問合せください。'),
          SizedBox(height: 16),
          _URLLinkText('独立行政法人医薬品医療機器総合機構（', 'https://www.pmda.go.jp/index.html'),
          SizedBox(height: 16),
          _TelLinkText(
            '健康救済制度相談窓口',
            '0120-149-931',
            text2: '（9:00 ～ 17:00 月～金 祝日年末年始除く）',
          ),
          SizedBox(height: 24),
          Text(
            '■ 個人情報の適正な取扱いを確保するための措置',
            style: TextStyle(
              color: AppColors.black2,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 19 / 14,
            ),
          ),
          SizedBox(height: 16),
          Text('医薬品に関する情報提供等で知り得た個人情報は、薬品売場内で適切に管理させていただき、第三者への提供等はいたしません。'
              'ただし、行政当局の要請等で報告の必要があると判断された場合には、情報を提供させていただく場合がございます。'),
          SizedBox(height: 16),
          _URLLinkText('厚生労働省一般用医薬品販売サイト一覧（', 'https://www.mhlw.go.jp/bunya/iyakuhin/ippanyou/hanbailist/'),
        ],
      ),
    );
  }
}

class _URLLinkText extends StatelessWidget {
  const _URLLinkText(this.text, this.link, {Key? key}) : super(key: key);

  final String text;
  final String link;

  @override
  Widget build(BuildContext context) {
    const defaultStyle = TextStyle(
      fontSize: 14,
      color: AppColors.black2,
      fontWeight: FontWeight.w300,
    );
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: text, style: defaultStyle),
          TextSpan(
            text: link,
            recognizer: TapGestureRecognizer()..onTap = () => browse(Uri.parse(link)),
            style: const TextStyle(
              color: AppColors.main,
              decoration: TextDecoration.underline,
            ),
          ),
          const WidgetSpan(
            child: SizedBox(width: 4),
          ),
          WidgetSpan(
            child: Assets.icons.externalLink.svg(),
          ),
          const TextSpan(text: ')', style: defaultStyle),
        ],
      ),
    );
  }
}

class _TelLinkText extends StatelessWidget {
  const _TelLinkText(this.text, this.tel, {this.text2 = '', Key? key}) : super(key: key);

  final String text;
  final String text2;
  final String tel;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: '$text：',
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.black2,
              fontWeight: FontWeight.w300,
            ),
          ),
          TextSpan(
            text: tel,
            recognizer: TapGestureRecognizer()..onTap = () => _callPhone('tel:$tel'),
            style: const TextStyle(
              color: AppColors.main,
              decoration: TextDecoration.underline,
            ),
          ),
          if (text2.isNotEmpty)
            TextSpan(
              text: text2,
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.black2,
                fontWeight: FontWeight.w300,
              ),
            ),
        ],
      ),
    );
  }
}

Future<void> _callPhone(String number) async {
  final telNumber = Uri.parse(number);
  if (await canLaunchUrl(telNumber)) {
    launchUrl(telNumber);
  }
}

class _ConfirmColumnTable extends StatelessWidget {
  const _ConfirmColumnTable(this.title, this.infoParts, {this.type, Key? key}) : super(key: key);

  final String title;
  final Widget infoParts;
  final ConfirmColumn? type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 84,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.black2,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    height: 19 / 14,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(child: infoParts)
            ],
          ),
        ),
        Visibility(
          visible: type == ConfirmColumn.shopTelNumber,
          child: const Divider(),
        )
      ],
    );
  }
}

class _InfoRowTable extends StatelessWidget {
  const _InfoRowTable(this.title, this.infoText1, this.infoText2, this.infoText3, {Key? key}) : super(key: key);

  final String title;
  final String infoText1;
  final String infoText2;
  final String infoText3;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 16),
              SizedBox(
                width: 108,
                child: Text(title),
              ),
              const SizedBox(width: 24),
              Expanded(child: Text(infoText1)),
              const SizedBox(width: 24),
              Expanded(child: Text(infoText2)),
              const SizedBox(width: 24),
              Expanded(child: Text(infoText3)),
            ],
          ),
        ),
      ],
    );
  }
}

class _ExpertInfoHorizontalScrollWidget extends StatelessWidget {
  const _ExpertInfoHorizontalScrollWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: AppColors.black2,
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 19 / 14,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 800,
          child: Column(
            children: const [
              _InfoRowTable(
                'リスク分類',
                '情報提供',
                '相談があった場合の応答',
                '対応する専門家',
              ),
              _InfoRowTable(
                '要指導医薬品',
                '書面で情報提供及び指導',
                '義務',
                '薬剤師',
              ),
              _InfoRowTable(
                '第1類医薬品',
                '書面で情報提供',
                '義務',
                '薬剤師',
              ),
              _InfoRowTable(
                '指定第2類医薬品',
                '情報提供は努力義務',
                '義務',
                '薬剤師又は登録販売者',
              ),
              _InfoRowTable(
                '第2類医薬品',
                '情報提供は努力義務',
                '義務',
                '薬剤師又は登録販売者',
              ),
              _InfoRowTable(
                '第3類医薬品',
                '医薬品医療機器等法上定めなし',
                '義務',
                '薬剤師又は登録販売者',
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

enum ConfirmColumn {
  permissionType,
  establisherName,
  establisherAdress,
  establishedRepresentative,
  permissionNumber,
  permissionShopName,
  permissionShopAddress,
  validityPeriod,
  shopAdministratorName,
  pharmacists,
  sellers,
  medicineSalesType,
  comment,
  businessTime,
  consultationTime,
  receptionTime,
  shopTelNumber,
  systemInfo,
  inquiryCounter,
}
