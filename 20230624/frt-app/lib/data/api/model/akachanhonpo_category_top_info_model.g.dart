// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'akachanhonpo_category_top_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AkachanhonpoCategoryInfoModel _$$_AkachanhonpoCategoryInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_AkachanhonpoCategoryInfoModel(
      categoryList: (json['category_list'] as List<dynamic>?)
              ?.map((e) => AkachanhonpoCategoryInfoModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <AkachanhonpoCategoryInfoModel>[],
      storeList: (json['store_list'] as List<dynamic>?)
              ?.map((e) => AkachanhonpoStoreInfoModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const <AkachanhonpoStoreInfoModel>[],
    );

Map<String, dynamic> _$$_AkachanhonpoCategoryInfoModelToJson(
        _$_AkachanhonpoCategoryInfoModel instance) =>
    <String, dynamic>{
      'category_list': instance.categoryList.map((e) => e.toJson()).toList(),
      'store_list': instance.storeList.map((e) => e.toJson()).toList(),
    };
