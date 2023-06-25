import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/pack_method_type.dart';

part 'pack_method_information_model.freezed.dart';
part 'pack_method_information_model.g.dart';

/// 梱包まとめ方法モデル
@freezed
class PackMethodInformationModel with _$PackMethodInformationModel {
  const factory PackMethodInformationModel({
    /* 梱包まとめ方法種別 ``` \"0\"：個別注文 \"1\"：複数注文(注文毎に個別梱包する) \"2\"：複数注文(まとめて梱包する) ``` */
    @Default(PackMethodType.individualOrder) PackMethodType packMethodType,
    /* 梱包まとめ方法種別名称 */
    @Default('') String packMethodTypeName,
    /* 梱包手数料割合 ``` 個別注文：0% 複数注文(注文毎に個別梱包する)：10% 複数注文(まとめて梱包する)：7% ``` */
    @Default(0) int packingFeeRate,
  }) = _PackMethodInformationModel;

  factory PackMethodInformationModel.fromJson(Map<String, dynamic> json) => _$PackMethodInformationModelFromJson(json);
}
