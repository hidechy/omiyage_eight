// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'front_category_master_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FrontCategoryMasterModel _$$_FrontCategoryMasterModelFromJson(
        Map<String, dynamic> json) =>
    _$_FrontCategoryMasterModel(
      rootName: json['rootName'] as String? ?? '',
      order: json['order'] as int? ?? 0,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) =>
                  CategoryMasterChildModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <CategoryMasterChildModel>[],
    );

Map<String, dynamic> _$$_FrontCategoryMasterModelToJson(
        _$_FrontCategoryMasterModel instance) =>
    <String, dynamic>{
      'rootName': instance.rootName,
      'order': instance.order,
      'children': instance.children.map((e) => e.toJson()).toList(),
    };
