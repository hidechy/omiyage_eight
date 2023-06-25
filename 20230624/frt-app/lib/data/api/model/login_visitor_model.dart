import 'package:freezed_annotation/freezed_annotation.dart';

import 'cart_model.dart';

part 'login_visitor_model.freezed.dart';
part 'login_visitor_model.g.dart';

@freezed
class LoginVisitorModel with _$LoginVisitorModel {
  const factory LoginVisitorModel({
    @Default('') String shopCode,
    @Default(CartModel()) CartModel cart,
    @Default('') String deliveryBaseCode,
    @Default('') String iyVisitId,
  }) = _LoginVisitorModel;

  factory LoginVisitorModel.fromJson(Map<String, dynamic> json) => _$LoginVisitorModelFromJson(json);
}
