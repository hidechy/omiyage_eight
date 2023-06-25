// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shops_medicine_confirms_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopsMedicineConfirmsModel _$$_ShopsMedicineConfirmsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ShopsMedicineConfirmsModel(
      permissionTypeName: json['permission_type_name'] as String? ?? '',
      establisherName: json['establisher_name'] as String? ?? '',
      establisherAddress: json['establisher_address'] as String? ?? '',
      establishedRepresentative:
          json['established_representative'] as String? ?? '',
      permissionNumber: json['permission_number'] as String? ?? '',
      permissionShopName: json['permission_shop_name'] as String? ?? '',
      permissionShopAddress: json['permission_shop_address'] as String? ?? '',
      validityPeriod: json['validity_period'] as String? ?? '',
      permissionName: json['permission_name'] as String? ?? '',
      shopAdministratorName: json['shop_administrator_name'] as String? ?? '',
      pharmacists: json['pharmacists'] as String? ?? '',
      sellers: json['sellers'] as String? ?? '',
      medicineSalesType: json['medicine_sales_type'] as String? ?? '',
      handledMedicineTypes: json['handled_medicine_types'] as String? ?? '',
      pharmacistComment: json['pharmacist_comment'] as String? ?? '',
      sellerComment: json['seller_comment'] as String? ?? '',
      otherComment: json['other_comment'] as String? ?? '',
      isEqualsMedicineBusinessTime:
          json['is_equals_medicine_business_time'] as bool? ?? false,
      mondayBusinessTime: json['monday_business_time'] as String? ?? '',
      tuesdayBusinessTime: json['tuesday_business_time'] as String? ?? '',
      wednesdayBusinessTime: json['wednesday_business_time'] as String? ?? '',
      thursdayBusinessTime: json['thursday_business_time'] as String? ?? '',
      fridayBusinessTime: json['friday_business_time'] as String? ?? '',
      saturdayBusinessTime: json['saturday_business_time'] as String? ?? '',
      sundayBusinessTime: json['sunday_business_time'] as String? ?? '',
      businessTimeSupplement: json['business_time_supplement'] as String? ?? '',
      shopTelNumber: json['shop_tel_number'] as String? ?? '',
      nsTelNumber: json['ns_tel_number'] as String? ?? '',
      insuranceName: json['insurance_name'] as String? ?? '',
      insuranceTelNumber: json['insurance_tel_number'] as String? ?? '',
      isDrugShop: json['is_drug_shop'] as bool? ?? false,
      inquiryFlag: json['inquiry_flag'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['inquiry_flag'] as String),
      weekdayEnrollmentList: json['weekday_enrollment_list'] as String? ?? '',
    );

Map<String, dynamic> _$$_ShopsMedicineConfirmsModelToJson(
        _$_ShopsMedicineConfirmsModel instance) =>
    <String, dynamic>{
      'permission_type_name': instance.permissionTypeName,
      'establisher_name': instance.establisherName,
      'establisher_address': instance.establisherAddress,
      'established_representative': instance.establishedRepresentative,
      'permission_number': instance.permissionNumber,
      'permission_shop_name': instance.permissionShopName,
      'permission_shop_address': instance.permissionShopAddress,
      'validity_period': instance.validityPeriod,
      'permission_name': instance.permissionName,
      'shop_administrator_name': instance.shopAdministratorName,
      'pharmacists': instance.pharmacists,
      'sellers': instance.sellers,
      'medicine_sales_type': instance.medicineSalesType,
      'handled_medicine_types': instance.handledMedicineTypes,
      'pharmacist_comment': instance.pharmacistComment,
      'seller_comment': instance.sellerComment,
      'other_comment': instance.otherComment,
      'is_equals_medicine_business_time': instance.isEqualsMedicineBusinessTime,
      'monday_business_time': instance.mondayBusinessTime,
      'tuesday_business_time': instance.tuesdayBusinessTime,
      'wednesday_business_time': instance.wednesdayBusinessTime,
      'thursday_business_time': instance.thursdayBusinessTime,
      'friday_business_time': instance.fridayBusinessTime,
      'saturday_business_time': instance.saturdayBusinessTime,
      'sunday_business_time': instance.sundayBusinessTime,
      'business_time_supplement': instance.businessTimeSupplement,
      'shop_tel_number': instance.shopTelNumber,
      'ns_tel_number': instance.nsTelNumber,
      'insurance_name': instance.insuranceName,
      'insurance_tel_number': instance.insuranceTelNumber,
      'is_drug_shop': instance.isDrugShop,
      'inquiry_flag':
          const StringToBooleanConverter().toJson(instance.inquiryFlag),
      'weekday_enrollment_list': instance.weekdayEnrollmentList,
    };
