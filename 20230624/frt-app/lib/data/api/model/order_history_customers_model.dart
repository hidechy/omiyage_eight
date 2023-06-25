import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_history_customers_model.freezed.dart';
part 'order_history_customers_model.g.dart';

@freezed
class OrderHistoryCustomersModel with _$OrderHistoryCustomersModel {
  const factory OrderHistoryCustomersModel({
    /* 会員が企業・団体会員判定  ``` true：企業・団体会員 false：個人会員 ``` */
    @Default(false) bool isCorporateCustomer,
/* メインメールアドレス */
    @Default('') String mainMailAddress,
/* サブメールアドレス */
    @Default('') String subMailAddress,
/* nanacoポイント/割引機能有効判定  ``` true：有効 false：無効 ``` */
    @Default(false) bool isNanacoEnabled,
/* nanaco登録済み判定  ``` true：登録済み false：未登録 ``` */
    @Default(false) bool isNanacoRegisted,
  }) = _OrderHistoryCustomersModel;

  factory OrderHistoryCustomersModel.fromJson(Map<String, dynamic> json) => _$OrderHistoryCustomersModelFromJson(json);
}
