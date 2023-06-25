import 'package:flutter/material.dart';

import 'app_colors.dart';

class AttentionText extends StatelessWidget {
  const AttentionText({Key? key}) : super(key: key);

  final List<String> _attentionTexts = const [
    '表記の価格に配達料は含まれておりません。',
    '表記の価格はネットスーパー価格です。またユニットプライス（単位あたりの単価）表示は税込です。画面掲載の本体価格は、税込価格から計算しております。',
    '写真はイメージです。実際の商品とは異なる場合がございます。',
    '酒類の販売につきましては、法令により20歳未満の方には販売できません。担当イトーヨーカドー店舗とご登録の住所が都道府県を異にする場合も、法令により酒類の販売はできませんのでご容赦ください。',
    'また、20歳以上の方のご注文であっても商品受け取りを20歳未満の方に代行されると、商品のお渡しができません。配達時に年齢確認のため身分証明書のご提示を求める場合がございます。',
    'お届け商品につきましては、天候不順および市場等の事情により、 お届けができない場合や、産地が変更になる場合がございます。\nご注文商品の準備・品切れにつきましては、鮮度維持を保つためにご注文いただきました順に商品のご準備はさせて頂いておらず、配達日時に合わせご用意・ご準備させて頂いております。 なお、商品在庫につきましては、万全を期すように努力しておりますが万一、在庫がない場合は、代替えもしくはキャンセルさせて頂く場合がございます。その場合、お電話にてご連絡させて頂きます。ご不在時には、電子メール、書面、又は留守電でのご連絡をさせて頂く場合がございます。予めご了承ください。',
    '生鮮食品(鮮魚・精肉・野菜・果物)、惣菜、加工食品、および介護用品等については、ご注文と異なる商品・不良品の場合を除き、返品または交換に応じかねます。',
    '水着・下着は、衛生上の理由からご返品・ご交換をお受けできませんので、予めご了承ください。',
    '商品の値札やラベル・袋・化粧箱等は、お届けした状態でお返し頂けないとご返品・ご交換をお断りする場合がございます。',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.inactive,
          width: 1.0,
        ),
      ),
      child: Column(
        children: _attentionTexts
            .map(
              (text) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _text('・ '),
                  Expanded(
                    child: _text(text),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _text(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: AppColors.black2,
      ),
    );
  }
}
