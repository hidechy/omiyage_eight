import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/card_member_type.dart';
import '../../../util/access_point_info_manager.dart';

part 'card_customer_discount_model.freezed.dart';

part 'card_customer_discount_model.g.dart';

/// カード会員割引情報のModel
@freezed
class CardCustomerDiscountModel with _$CardCustomerDiscountModel {
  const CardCustomerDiscountModel._();

  factory CardCustomerDiscountModel.fromJson(Map<String, dynamic> json) => _$CardCustomerDiscountModelFromJson(json);

  const factory CardCustomerDiscountModel({
    /* カード会員割引対象判定 - true：カード会員割引適用 - false：非カード会員割引適用 */
    @Default(false) bool isCardMemberDiscount,
    /* カード会員適用割引率 - カード会員適用割引率が設定されていない場合、nullを返却*/
    @Default(0) int cardMemberSaleRate,
    /* カード会員割引区分 ``` \"01\"：セブンカード・7CSカード \"02\"：セブンカード・ポイントカード・7CSカード \"03\"：セブンカード・nanaco・シニアnanaco・7CSカード \"04\"：nanaco・シニアnanaco \"05\"：セブンカード・ポイントカード・nanaco・シニアnanaco・7CSカード \"06\"：シニアnanaco ``` */
    @Default(CardMemberType.none) CardMemberType cardMemberType,
    /* カード会員割引コード */
    @Default('') String cardMemberDiscountCode,
  }) = _CardCustomerDiscountModel;

  List<String> get discountCardImages {
    switch (cardMemberType) {
      case CardMemberType.seven7CS:
      case CardMemberType.sevenSevenPoint7CS:
        return [
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-seven.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-sevenplus.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-clubon.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-millennium.png',
        ];
      case CardMemberType.nanacoSeniorNanaco:
        return [
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-nanaco.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-senior.png',
        ];
      case CardMemberType.sevenNanacoSeniorNanaco7CS:
      case CardMemberType.sevenSevenPointNanacoSeniorNanaco7CS:
        return [
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-seven.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-sevenplus.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-nanaco.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-senior.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-clubon.png',
          '$iynsStaticImagesBaseUrlAndPath/icon-credit-millennium.png',
        ];
      case CardMemberType.seniorNanaco:
        return ['$iynsStaticImagesBaseUrlAndPath/icon-credit-senior.png'];
      case CardMemberType.none:
        return const [];
    }
  }
}
