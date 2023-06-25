import 'package:freezed_annotation/freezed_annotation.dart';

part 'akachanhonpo_store_info_model.freezed.dart';
part 'akachanhonpo_store_info_model.g.dart';

@freezed
class AkachanhonpoStoreInfoModel with _$AkachanhonpoStoreInfoModel {
  const AkachanhonpoStoreInfoModel._();

  factory AkachanhonpoStoreInfoModel({
    /* エリア情報 */
    @Default('') String area,
    /* 店舗情報 */
    @Default(<String>[]) List<String> stores,
  }) = _AkachanhonpoStoreInfoModel;

  factory AkachanhonpoStoreInfoModel.fromJson(Map<String, dynamic> json) => _$AkachanhonpoStoreInfoModelFromJson(json);
}
