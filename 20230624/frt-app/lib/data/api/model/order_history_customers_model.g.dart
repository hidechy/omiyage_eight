// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_history_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderHistoryCustomersModel _$$_OrderHistoryCustomersModelFromJson(
        Map<String, dynamic> json) =>
    _$_OrderHistoryCustomersModel(
      isCorporateCustomer: json['is_corporate_customer'] as bool? ?? false,
      mainMailAddress: json['main_mail_address'] as String? ?? '',
      subMailAddress: json['sub_mail_address'] as String? ?? '',
      isNanacoEnabled: json['is_nanaco_enabled'] as bool? ?? false,
      isNanacoRegisted: json['is_nanaco_registed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_OrderHistoryCustomersModelToJson(
        _$_OrderHistoryCustomersModel instance) =>
    <String, dynamic>{
      'is_corporate_customer': instance.isCorporateCustomer,
      'main_mail_address': instance.mainMailAddress,
      'sub_mail_address': instance.subMailAddress,
      'is_nanaco_enabled': instance.isNanacoEnabled,
      'is_nanaco_registed': instance.isNanacoRegisted,
    };
