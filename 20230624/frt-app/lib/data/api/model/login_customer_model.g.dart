// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginCustomerModel _$$_LoginCustomerModelFromJson(
        Map<String, dynamic> json) =>
    _$_LoginCustomerModel(
      customerType:
          $enumDecodeNullable(_$CustomerTypeEnumMap, json['customer_type']) ??
              CustomerType.visitor,
      deliveryAddress: json['delivery_address'] == null
          ? null
          : AddressModel.fromJson(
              json['delivery_address'] as Map<String, dynamic>),
      undeliveredMessageCode: json['undelivered_message_code'] as String? ?? '',
      epochChangeableAddressDate: const NullableStringToEpochTimeConverter()
          .fromJson(json['changeable_address_date'] as String?),
      deliveryShop: (json['delivery_shop'] as List<dynamic>?)
              ?.map(
                  (e) => DeliveryShopModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <DeliveryShopModel>[],
      migrationToCenter: (json['migration_to_center'] as List<dynamic>?)
              ?.map((e) => ShopModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <ShopModel>[],
      epochMigrationFrom: const NullableStringToEpochTimeConverter()
          .fromJson(json['migration_from'] as String?),
      epochMigrationTo: const NullableStringToEpochTimeConverter()
          .fromJson(json['migration_to'] as String?),
      customerAddress: json['customer_address'] == null
          ? null
          : CustomerAddressModel.fromJson(
              json['customer_address'] as Map<String, dynamic>),
      loginId: json['login_id'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastNameKana: json['last_name_kana'] as String? ?? '',
      firstNameKana: json['first_name_kana'] as String? ?? '',
      telNumber1: json['tel_number1'] as String? ?? '',
      telNumber2: json['tel_number2'] as String? ?? '',
      telNumber3: json['tel_number3'] as String? ?? '',
      emergencyTelNumber1: json['emergency_tel_number1'] as String? ?? '',
      emergencyTelNumber2: json['emergency_tel_number2'] as String? ?? '',
      emergencyTelNumber3: json['emergency_tel_number3'] as String? ?? '',
      mainMailAddress: json['main_mail_address'] as String? ?? '',
      subMailAddress: json['sub_mail_address'] as String? ?? '',
      rawGender: json['gender'] as String? ?? '',
      birthYear: json['birth_year'] as String? ?? '',
      birthMonth: json['birth_month'] as String? ?? '',
      birthDayOfMonth: json['birth_day_of_month'] as String? ?? '',
      isIndividualCustomer: json['is_individual_customer'] as bool? ?? true,
      companyName: json['company_name'] as String? ?? '',
      departmentName: json['department_name'] as String? ?? '',
      campaign: json['campaign'] == null
          ? null
          : CampaignModel.fromJson(json['campaign'] as Map<String, dynamic>),
      nanacoNumber: json['nanaco_number'] as String? ?? '',
      isLoginMfa: json['is_login_mfa'] == null
          ? false
          : const StringToBooleanConverter()
              .fromJson(json['is_login_mfa'] as String),
      status: $enumDecodeNullable(_$CustomerStatusEnumMap, json['status']) ??
          CustomerStatus.regular,
      cmnmmbridhash128: json['cmnmmbridhash_128'] as String? ?? '',
      isAddressDifference: json['is_address_difference'] as bool? ?? false,
      isFirstUseRegistered: json['is_first_use_registered'] as bool? ?? true,
      isCanNotBuyProduct: json['is_can_not_buy_product'] as bool? ?? false,
      canNotBuyProductNames:
          (json['can_not_buy_product_names'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const <String>[],
      epochRegistrationDatetime: const NullableStringToEpochTimeConverter()
          .fromJson(json['registration_datetime'] as String?),
    );

Map<String, dynamic> _$$_LoginCustomerModelToJson(
        _$_LoginCustomerModel instance) =>
    <String, dynamic>{
      'customer_type': _$CustomerTypeEnumMap[instance.customerType]!,
      'delivery_address': instance.deliveryAddress?.toJson(),
      'undelivered_message_code': instance.undeliveredMessageCode,
      'changeable_address_date': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochChangeableAddressDate),
      'delivery_shop': instance.deliveryShop.map((e) => e.toJson()).toList(),
      'migration_to_center':
          instance.migrationToCenter.map((e) => e.toJson()).toList(),
      'migration_from': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochMigrationFrom),
      'migration_to': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochMigrationTo),
      'customer_address': instance.customerAddress?.toJson(),
      'login_id': instance.loginId,
      'last_name': instance.lastName,
      'first_name': instance.firstName,
      'last_name_kana': instance.lastNameKana,
      'first_name_kana': instance.firstNameKana,
      'tel_number1': instance.telNumber1,
      'tel_number2': instance.telNumber2,
      'tel_number3': instance.telNumber3,
      'emergency_tel_number1': instance.emergencyTelNumber1,
      'emergency_tel_number2': instance.emergencyTelNumber2,
      'emergency_tel_number3': instance.emergencyTelNumber3,
      'main_mail_address': instance.mainMailAddress,
      'sub_mail_address': instance.subMailAddress,
      'gender': instance.rawGender,
      'birth_year': instance.birthYear,
      'birth_month': instance.birthMonth,
      'birth_day_of_month': instance.birthDayOfMonth,
      'is_individual_customer': instance.isIndividualCustomer,
      'company_name': instance.companyName,
      'department_name': instance.departmentName,
      'campaign': instance.campaign?.toJson(),
      'nanaco_number': instance.nanacoNumber,
      'is_login_mfa':
          const StringToBooleanConverter().toJson(instance.isLoginMfa),
      'status': _$CustomerStatusEnumMap[instance.status]!,
      'cmnmmbridhash_128': instance.cmnmmbridhash128,
      'is_address_difference': instance.isAddressDifference,
      'is_first_use_registered': instance.isFirstUseRegistered,
      'is_can_not_buy_product': instance.isCanNotBuyProduct,
      'can_not_buy_product_names': instance.canNotBuyProductNames,
      'registration_datetime': const NullableStringToEpochTimeConverter()
          .toJson(instance.epochRegistrationDatetime),
    };

const _$CustomerTypeEnumMap = {
  CustomerType.sevenId: '1',
  CustomerType.netsuper: '2',
  CustomerType.visitor: '3',
  CustomerType.none: '',
};

const _$CustomerStatusEnumMap = {
  CustomerStatus.regular: '0',
  CustomerStatus.special: '1',
  CustomerStatus.maintenance: '2',
  CustomerStatus.none: '',
};
