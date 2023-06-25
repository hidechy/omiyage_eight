import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enum/mail_magazine_type.dart';
import '../../enum/mail_send_type.dart';

part 'delivery_address_change_confirm_page_state.freezed.dart';

@freezed
class DeliveryAddressChangeConfirmPageState with _$DeliveryAddressChangeConfirmPageState {
  factory DeliveryAddressChangeConfirmPageState({
    @Default(MailSendType.mainMailAddress) MailSendType mailSendType,
    @Default(false) bool isCheckMainMail,
    @Default(false) bool isCheckSubMail,
    @Default(MailMagazineType.doNotSend) MailMagazineType mailMagazineType,
  }) = _DeliveryAddressChangeConfirmPageState;
}
