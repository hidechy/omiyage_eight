import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../enum/living_status_type.dart';
import '../../../enum/package_drop_place.dart';
import 'base_address_model.dart';
import 'selectable_address_model.dart';

part 'address_model.freezed.dart';
part 'address_model.g.dart';

@freezed
class AddressModel with BaseAddressModel, _$AddressModel {
  @With<BaseAddressModel>()
  const factory AddressModel({
    /* 郵便番号 - ハイフンなしの7桁 */
    @Default('') String postalNumber,
/* 都道府県コード */
    @Default('') String prefectureCode,
/* 都道府県名 */
    @Default('') String prefectureName,
/* 市区郡町村コード */
    @Default('') String cityCode,
/* 市区郡町村名 */
    @Default('') String cityName,
/* 通称コード */
    @Default('') String townCode,
/* 通称名 */
    @Default('') String townName,
/* 丁目コード */
    @Default('') String chomeCode,
/* 丁目 */
    @Default('') String chomeName,
/* 詳細 - 番地、号 */
    @Default('') String addressDetail,
/* 詳細２ - 建物名、部屋番号 */
    @Default('') String addressDetail2,
/* 廃止住所フラグ  ``` true：廃止済み false：廃止していない ``` */
    @Default(false) bool isAbolished,
/* 都道府県情報リスト */
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> prefectures,
/* 市区町村郡情報リスト */
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> cities,
/* 通称情報リスト */
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> towns,
/* 丁目情報リスト */
    @Default(<SelectableAddressModel>[]) List<SelectableAddressModel> chomes,
/* マンションID   オートロックマンションに住んでいない会員、   または住んでいるオートロックマンションが会員情報に紐づいていない場合null */
    @Default('') String mansionId,
/* お住まいステータス ~~~ null or 0：お住まい未確認 1：お住まい確認済み 2：お住まい確認中 ~~~ */
    @Default(LivingStatusType.unconfirmed) LivingStatusType livingStatus,
/* 置き配場所 ~~~ 1：玄関向かって右 2：玄関向かって左 3：インターフォン下 9：その他 null: 未指定 ~~~ */
    @Default(PackageDropPlace.notPackageDropPlace) PackageDropPlace packageDropPlace,
/* 置き配場所の詳細 ※置き配場所が「9:その他」の場合に設定される */
    @Default('') String packageDropPlaceDetail,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) => _$AddressModelFromJson(json);
}
