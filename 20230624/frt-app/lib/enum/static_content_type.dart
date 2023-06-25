import '../../util/access_point_info_manager.dart';

enum StaticContentType {
  guideTop,
  start,
  order,
  cansel,
  myList,
  other,
  about7Id,
  forgotPass,
  linkedId,
  businessUse,
  twoFactorAuth,
  returns,
  payment,
  campaign,
  fee,
  addChange,
  atHome,
  mailMag,
  nanaco,
  prepaid,
}

extension StaticContentTypeExt on StaticContentType {
  String get fileName {
    switch (this) {
      case StaticContentType.guideTop:
        return '0187_guidetop.html';
      case StaticContentType.start:
        return '0188_start.html';
      case StaticContentType.order:
        return '0189_order.html';
      case StaticContentType.cansel:
        return '0190_cansel.html';
      case StaticContentType.myList:
        return '0191_mylist.html';
      case StaticContentType.other:
        return '0192_other.html';
      case StaticContentType.about7Id:
        return '0193_about7id.html';
      case StaticContentType.forgotPass:
        return '0194_forgotpass.html';
      case StaticContentType.linkedId:
        return '0195_linkedid.html';
      case StaticContentType.businessUse:
        return '0196_businessuse.html';
      case StaticContentType.twoFactorAuth:
        return '0197_twofactorauth.html';
      case StaticContentType.returns:
        return '0198_return.html';
      case StaticContentType.payment:
        return '0199_payment.html';
      case StaticContentType.campaign:
        return '0200_campaign.html';
      case StaticContentType.fee:
        return '0201_fee.html';
      case StaticContentType.addChange:
        return '0202_addchange.html';
      case StaticContentType.atHome:
        return '0203_athome.html';
      case StaticContentType.mailMag:
        return '0204_mailmag.html';
      case StaticContentType.nanaco:
        return '0205_nanaco.html';
      case StaticContentType.prepaid:
        return '0206_prepaid.html';
    }
  }

  String get pageName {
    switch (this) {
      case StaticContentType.guideTop:
        return 'userGuide_0187_guidetop';
      case StaticContentType.start:
        return 'userGuide_0188_start';
      case StaticContentType.order:
        return 'userGuide_0189_order';
      case StaticContentType.cansel:
        return 'userGuide_0190_cancel';
      case StaticContentType.myList:
        return 'userGuide_0191_mylist';
      case StaticContentType.other:
        return 'userGuide_0192_other';
      case StaticContentType.about7Id:
        return 'userGuide_0193_about7id';
      case StaticContentType.forgotPass:
        return 'userGuide_0194_forgotpass';
      case StaticContentType.linkedId:
        return 'userGuide_0195_linkedid';
      case StaticContentType.businessUse:
        return 'userGuide_0196_buisinessuse';
      case StaticContentType.twoFactorAuth:
        return 'userGuide_0197_twofactorauth';
      case StaticContentType.returns:
        return 'userGuide_0198_return';
      case StaticContentType.payment:
        return 'userGuide_0199_payment';
      case StaticContentType.campaign:
        return 'userGuide_0200_campaign';
      case StaticContentType.fee:
        return 'userGuide_0201_fee';
      case StaticContentType.addChange:
        return 'userGuide_0202_addchange';
      case StaticContentType.atHome:
        return 'userGuide_0203_athome';
      case StaticContentType.mailMag:
        return 'userGuide_0204_mailmag';
      case StaticContentType.nanaco:
        return 'userGuide_0205_nanaco';
      case StaticContentType.prepaid:
        return 'userGuide_0206_prepaid';
    }
  }

  static String? urlToPage(String? url) {
    if (url != null) {
      final index =
          StaticContentType.values.indexWhere((element) => url.endsWith('$iynsWebBaseUrl/${element.fileName}'));
      if (index >= 0) {
        return StaticContentType.values[index].pageName;
      }
    }
    return null;
  }
}
