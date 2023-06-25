import 'package:freezed_annotation/freezed_annotation.dart';

part 'shop_model.freezed.dart';
part 'shop_model.g.dart';

@freezed
class ShopModel with _$ShopModel {
  const factory ShopModel({
    /* 店舗名 */
    @Default('') String shopName,
    /* 電話番号 */
    @Default('') String telNumber,
    /* 店コード */
    @Default('') String shopCode,
    /* アカチャンホンポ対応店舗判定 - true：アカチャンホンポ対応店舗 - false：アカチャンホンポ対応店舗でない */
    @Default(false) bool isAkachanHonpoShop,
    /* アカチャンホンポ店舗代行中判定 - true：アカチャンホンポ店舗代行中 - false：アカチャンホンポ店舗代行中でない */
    @Default(false) bool isAkachanHonpoAgencyShop,
    /* 医薬品扱い店舗判定  ``` true：医薬品扱い店舗である false：医薬品扱い店舗でない ``` */
    @Default(false) bool isDrugShop,
  }) = _ShopModel;
  factory ShopModel.fromJson(Map<String, dynamic> json) => _$ShopModelFromJson(json);
}
