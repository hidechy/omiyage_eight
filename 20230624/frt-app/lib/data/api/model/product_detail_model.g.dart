// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDetailModel _$$_ProductDetailModelFromJson(
        Map<String, dynamic> json) =>
    _$_ProductDetailModel(
      imagePath: json['image_path'] as String? ?? '',
      imageFileName1: json['image_file_name1'] as String? ?? '',
      imageFileName2: json['image_file_name2'] as String? ?? '',
      imageFileName3: json['image_file_name3'] as String? ?? '',
      imageFileName4: json['image_file_name4'] as String? ?? '',
      imageFileName5: json['image_file_name5'] as String? ?? '',
      imageFileName6: json['image_file_name6'] as String? ?? '',
      frontImageFullPath1: json['front_image_full_path1'] as String? ?? '',
      frontImageFullPath2: json['front_image_full_path2'] as String? ?? '',
      frontImageFullPath3: json['front_image_full_path3'] as String? ?? '',
      frontImageFullPath4: json['front_image_full_path4'] as String? ?? '',
      frontImageFullPath5: json['front_image_full_path5'] as String? ?? '',
      frontImageFullPath6: json['front_image_full_path6'] as String? ?? '',
      thumbnailImagePath: json['thumbnail_image_path'] as String? ?? '',
      thumbnailImageFileName1:
          json['thumbnail_image_file_name1'] as String? ?? '',
      thumbnailImageFileName2:
          json['thumbnail_image_file_name2'] as String? ?? '',
      thumbnailImageFileName3:
          json['thumbnail_image_file_name3'] as String? ?? '',
      thumbnailImageFileName4:
          json['thumbnail_image_file_name4'] as String? ?? '',
      thumbnailImageFileName5:
          json['thumbnail_image_file_name5'] as String? ?? '',
      thumbnailImageFileName6:
          json['thumbnail_image_file_name6'] as String? ?? '',
      frontThumbnailImageFullPath1:
          json['front_thumbnail_image_full_path1'] as String? ?? '',
      frontThumbnailImageFullPath2:
          json['front_thumbnail_image_full_path2'] as String? ?? '',
      frontThumbnailImageFullPath3:
          json['front_thumbnail_image_full_path3'] as String? ?? '',
      frontThumbnailImageFullPath4:
          json['front_thumbnail_image_full_path4'] as String? ?? '',
      frontThumbnailImageFullPath5:
          json['front_thumbnail_image_full_path5'] as String? ?? '',
      frontThumbnailImageFullPath6:
          json['front_thumbnail_image_full_path6'] as String? ?? '',
      isDisplayWhiteImage: json['is_display_white_image'] as bool? ?? false,
      countImages: json['count_images'] as int? ?? 0,
      iconPrWord: json['icon_pr_word'] as String? ?? '',
      isIconProduct: json['is_icon_product'] as bool? ?? false,
      advertisingIconImagePath:
          json['advertising_icon_image_path'] as String? ?? '',
      advertisingIconImageFileName:
          json['advertising_icon_image_file_name'] as String? ?? '',
      drugType: $enumDecodeNullable(_$DrugTypeEnumMap, json['drug_type']) ??
          DrugType.all,
      marketProductTimeTerm: json['market_product_time_term'] as String? ?? '',
      isChangeDeadlineGuide: json['is_change_deadline_guide'] as bool? ?? false,
      epochChangeDeadlineDateTime: const NullableStringToEpochTimeConverter()
          .fromJson(json['change_deadline_dateTime'] as String?),
      temperatureZone: $enumDecodeNullable(
              _$TemperatureZoneEnumMap, json['temperature_zone']) ??
          TemperatureZone.none,
      previousValue: json['previous_value'] as String? ?? '',
      isNanacoPromoteProduct:
          json['is_nanaco_promote_product'] as bool? ?? false,
      isDisplayNoTaxPriceView:
          json['is_display_no_tax_price_view'] as bool? ?? false,
      isSumDiscount: json['is_sum_discount'] as bool? ?? false,
      isPeriodDiscount: json['is_period_discount'] as bool? ?? false,
      nsDateNext: json['ns_date_next'] as String? ?? '',
      isFromDaySaleProduct: json['is_from_day_sale_product'] as bool? ?? false,
      isBeforeChangingDeliveryDeadline:
          json['is_before_changing_delivery_deadline'] as bool? ?? false,
      productComments: (json['product_comments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      makerName: json['maker_name'] as String? ?? '',
      modelNumber: json['model_number'] as String? ?? '',
      isConfirmSodastream: json['is_confirm_sodastream'] as bool? ?? false,
      product: json['product'] == null
          ? const ProductModel()
          : ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      productNumbers: (json['product_numbers'] as List<dynamic>?)
              ?.map(
                  (e) => ProductNumberModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ProductNumberModel>[],
      relatedCategories: (json['related_categories'] as List<dynamic>?)
              ?.map((e) =>
                  SearchCategoryModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <SearchCategoryModel>[],
      medicineQuestion: json['medicine_question'] == null
          ? null
          : MedicineChecksheetModel.fromJson(
              json['medicine_question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductDetailModelToJson(
        _$_ProductDetailModel instance) =>
    <String, dynamic>{
      'image_path': instance.imagePath,
      'image_file_name1': instance.imageFileName1,
      'image_file_name2': instance.imageFileName2,
      'image_file_name3': instance.imageFileName3,
      'image_file_name4': instance.imageFileName4,
      'image_file_name5': instance.imageFileName5,
      'image_file_name6': instance.imageFileName6,
      'front_image_full_path1': instance.frontImageFullPath1,
      'front_image_full_path2': instance.frontImageFullPath2,
      'front_image_full_path3': instance.frontImageFullPath3,
      'front_image_full_path4': instance.frontImageFullPath4,
      'front_image_full_path5': instance.frontImageFullPath5,
      'front_image_full_path6': instance.frontImageFullPath6,
      'thumbnail_image_path': instance.thumbnailImagePath,
      'thumbnail_image_file_name1': instance.thumbnailImageFileName1,
      'thumbnail_image_file_name2': instance.thumbnailImageFileName2,
      'thumbnail_image_file_name3': instance.thumbnailImageFileName3,
      'thumbnail_image_file_name4': instance.thumbnailImageFileName4,
      'thumbnail_image_file_name5': instance.thumbnailImageFileName5,
      'thumbnail_image_file_name6': instance.thumbnailImageFileName6,
      'front_thumbnail_image_full_path1': instance.frontThumbnailImageFullPath1,
      'front_thumbnail_image_full_path2': instance.frontThumbnailImageFullPath2,
      'front_thumbnail_image_full_path3': instance.frontThumbnailImageFullPath3,
      'front_thumbnail_image_full_path4': instance.frontThumbnailImageFullPath4,
      'front_thumbnail_image_full_path5': instance.frontThumbnailImageFullPath5,
      'front_thumbnail_image_full_path6': instance.frontThumbnailImageFullPath6,
      'is_display_white_image': instance.isDisplayWhiteImage,
      'count_images': instance.countImages,
      'icon_pr_word': instance.iconPrWord,
      'is_icon_product': instance.isIconProduct,
      'advertising_icon_image_path': instance.advertisingIconImagePath,
      'advertising_icon_image_file_name': instance.advertisingIconImageFileName,
      'drug_type': _$DrugTypeEnumMap[instance.drugType]!,
      'market_product_time_term': instance.marketProductTimeTerm,
      'is_change_deadline_guide': instance.isChangeDeadlineGuide,
      'change_deadline_dateTime': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochChangeDeadlineDateTime),
      'temperature_zone': _$TemperatureZoneEnumMap[instance.temperatureZone]!,
      'previous_value': instance.previousValue,
      'is_nanaco_promote_product': instance.isNanacoPromoteProduct,
      'is_display_no_tax_price_view': instance.isDisplayNoTaxPriceView,
      'is_sum_discount': instance.isSumDiscount,
      'is_period_discount': instance.isPeriodDiscount,
      'ns_date_next': instance.nsDateNext,
      'is_from_day_sale_product': instance.isFromDaySaleProduct,
      'is_before_changing_delivery_deadline':
          instance.isBeforeChangingDeliveryDeadline,
      'product_comments': instance.productComments,
      'maker_name': instance.makerName,
      'model_number': instance.modelNumber,
      'is_confirm_sodastream': instance.isConfirmSodastream,
      'product': instance.product.toJson(),
      'product_numbers':
          instance.productNumbers.map((e) => e.toJson()).toList(),
      'related_categories':
          instance.relatedCategories.map((e) => e.toJson()).toList(),
      'medicine_question': instance.medicineQuestion?.toJson(),
    };

const _$DrugTypeEnumMap = {
  DrugType.all: 'all',
  DrugType.firstClassDrugs: 'A',
  DrugType.designatedSecondClassDrugs: 'B',
  DrugType.secondClassDrugs: 'C',
  DrugType.thirdClassDrugs: 'D',
  DrugType.quasiDrugs: 'E',
  DrugType.none: '',
};

const _$TemperatureZoneEnumMap = {
  TemperatureZone.normal: '0',
  TemperatureZone.largeNormal: '1',
  TemperatureZone.refrigeration: '2',
  TemperatureZone.frozen: '3',
  TemperatureZone.none: '',
};
