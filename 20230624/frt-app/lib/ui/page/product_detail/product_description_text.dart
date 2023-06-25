import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/app_colors.dart';
import '../../common/html_parser.dart';
import '../../state/product_detail_page_state.dart';

// PR文言・商品説明・メーカー
class ProductDescriptionText extends StatelessWidget {
  const ProductDescriptionText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isConfirmSodaStream =
        context.select((ProductDetailPageState state) => state.productDetailModel.isConfirmSodastream);
    final productComments = context.select((ProductDetailPageState state) => state.productDetailModel.productComments);
    final makerName = context.select((ProductDetailPageState state) => state.productDetailModel.makerName);
    final iconPrWord = context.select((ProductDetailPageState state) => state.productDetailModel.iconPrWord);
    return Wrap(
      runSpacing: 12,
      children: [
        Visibility(
          visible: iconPrWord.isNotEmpty,
          child: HtmlParser(
            value: iconPrWord,
            fontStyle: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w300,
              color: AppColors.blackAlpha80,
              height: 19 / 14,
            ),
          ),
        ),
        Visibility(
          visible: productComments.isNotEmpty || makerName.isNotEmpty,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  '商品説明',
                  style: TextStyle(
                    height: 19 / 14,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.blackAlpha80,
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Visibility(
                      visible: productComments.isNotEmpty,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: HtmlParser(
                          value: productComments.join('<br>'),
                          fontStyle: const TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w300,
                            color: AppColors.blackAlpha60,
                            height: 19 / 14,
                          ),
                        ),
                      ),
                    ),
                    Visibility(
                      visible: isConfirmSodaStream,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          children: const [
                            Text(
                              _sodaStreamText1,
                              style: TextStyle(
                                height: 19 / 14,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.blackAlpha60,
                              ),
                            ),
                            Text(
                              _sodaStreamText2,
                              style: TextStyle(
                                height: 19 / 14,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.emphasis1,
                              ),
                            ),
                            Text(
                              _sodaStreamText3,
                              style: TextStyle(
                                height: 19 / 14,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.blackAlpha60,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: makerName.isNotEmpty,
                      child: Text(
                        'メーカー：$makerName',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.gray1,
                          height: 19 / 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// ソーダストリームテキスト
const _sodaStreamText1 = '''
こちらの商品は非接触サービスの対象外です。　ソーダストリーム専用の炭酸ガスシリンダーです。
スターターキット購入時には既に１本が添付されていますが、予備用などにお求めください。
※海外で購入したソーダメーカーの規格には合わない場合がございます。

１．不要になったガスシリンダーは不燃ごみとして廃棄できません。
投棄せずお取り扱い店舗にお持ちいただくか、オンラインショッピングでのご交換、またはＳｏｄａＳｔｒｅａｍコールセンターにお電話ください。
２．このガスシリンダーの日本国内における再充填は法律により禁止されています。
３．高温になるような場所や直射日光の当たる場所を避け、ガスシリンダー本体が４０℃以上にならない場所で保管ください。
４．充填されているガスシリンダーは二酸化炭素ですので引火、燃焼するものではありませんが、火気の傍を避けてください。
万一、高温になりシリンダー内のガスが放出されたらそのまま放置してください。
ガスが放出されている際にはシリンダーが非常に冷たくなりますので触らないでください。
窓を開けるなどの換気をしてください。
５．幼児の手の届くところに置かないでください。
６．万一、ガス漏れの恐れがある場合は、窓を開けるなどの換気をしてください。
７．ガスシリンダーを改良したり、粗暴に取り扱わないでください。
※ガスボンベ（ガスシリンダー）は約６０リットル分の炭酸水をお作りいただけると記載させていただいておりますが、お作りいただく場所の気温、室温、環境等により、また炭酸ガスを注入するボタン・レバーを押す度合いによっても少しずつ炭酸ガスの使用量が異ります。
強めの炭酸水をお作りいただく場合などは、炭酸ガスをたくさん使用しますので、炭酸水の濃度を強くした分、炭酸ガスは減ってしまいます。
上記の様な事から目安として６０リットル分を記載させていただいております。

ＳｏｄａＳｔｒｅａｍ炭酸ガスシリンダー
内容物：ＣＯ２４１０ｇ　圧力：１２．４Ｍｐａ

こちらは、交換用ではなく予備用（新規購入用）です。
空のカートリッジ回収のお客様は交換用カートリッジをご購入下さいます様お願いいたします。

【メーカー名】ソーダストリーム
【重量】１２００ｇ
【規格サイズ】幅６５ｍｍ×奥行６５ｍｍ×高さ３７５ｍｍ

※写真はイメージです。実物とは異なる場合がございます。
''';

const _sodaStreamText2 = '''
【交換用ガスシリンダーの販売に関して】
ネットスーパーで交換用ガスシリンダーをご購入いただく際は、使用済みのガスシリンダーと交換での販売となります。商品のお届け時に使用済みのガスシリンダーを回収させていただきます。事前にご準備の程よろしくお願いいたします。
''';

const _sodaStreamText3 = '''
【ご確認事項】

ご使用前にガスシリンダーを確認いただき、凹み、穴が開いている等の損傷がないかご確認ください。損傷がある場合は、使用をお止めください。
高温になるような場所や直射日光の当たる場所を避け、ガスシリンダー本体が40℃を超えない換気の良い場所で保管してください。 幼児の手の届くところに置かないでください。
如何なる場合でもガスシリンダーを細工しないでください。ガスシリンダーに穴を開けたり、火に投げ込んだり、バルブの取り外しは行わないでください。
このガスシリンダーの日本国内における再充填は法律により禁止されています。
ガスシリンダーの中身は二酸化炭素ですので引火、燃焼するものではありませんが、高温になるのを避けるため火気の傍を避けてください。
万一、ガスシリンダー内のガスが放出され続ける状態になった場合は、そのまま放置しガスシリンダーには触らず、窓を開けるなどの換気をしてください。下記SodaStreamコールセンターまでご連絡ください。ガスシリンダーには安全装置がついており爆発等の心配はございません。
ガスシリンダーのソーダメーカーへの装着は、必ず専用ボトルが装着されていない状態で行ってください。ソーダメーカー使用中に絶対にガスシリンダーを緩めたり、取り外したりしないでください。
このガスシリンダーは、SodaStreamに回収義務があり、お客様ご自身による投棄は禁止されています。充填済みガスシリンダーの交換が不要で、返却を希望される場合は、SodaStreamコールセンターまでご連絡ください。
SodaStream炭酸ガスシリンダー　内容物: CO2 410g 圧力:12.4 Mpa

SodaStreamコールセンター:　0120-286-230(9:00-17:00　土日祝日・休業日除く)
''';
