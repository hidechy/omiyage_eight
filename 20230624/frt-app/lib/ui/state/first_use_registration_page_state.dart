import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/api/model/base_address_model.dart';
import '../../enum/mail_magazine_type.dart';

part 'first_use_registration_page_state.freezed.dart';

@freezed
class FirstUseRegistrationPageState with _$FirstUseRegistrationPageState {
  const FirstUseRegistrationPageState._();

  const factory FirstUseRegistrationPageState({
    @Default(false) bool isCheckMainMail,
    @Default(false) bool isCheckSubMail,
    @Default(true) bool isExistStore,
    BaseAddressModel? baseAddress,
  }) = _FirstUseRegistrationPageState;

  MailMagazineType get getMailMagazineType {
    if (!isCheckMainMail && !isCheckSubMail) {
      return MailMagazineType.doNotSend;
    } else if (isCheckMainMail && !isCheckSubMail) {
      return MailMagazineType.mainMailAddress;
    } else if (!isCheckMainMail && isCheckSubMail) {
      return MailMagazineType.subMailAddress;
    } else {
      return MailMagazineType.both;
    }
  }
}
