import 'package:freezed_annotation/freezed_annotation.dart';

part 'customers_me_nanaco_model.freezed.dart';

part 'customers_me_nanaco_model.g.dart';

@freezed
class CustomersMeNanacoModel with _$CustomersMeNanacoModel {
  const factory CustomersMeNanacoModel({
    @Default(0) int nanacoPoint,
  }) = _CustomersMeNanacoModel;

  factory CustomersMeNanacoModel.fromJson(Map<String, dynamic> json) => _$CustomersMeNanacoModelFromJson(json);
}
