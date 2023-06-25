// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_price_information_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancelPriceInformationModel _$$_CancelPriceInformationModelFromJson(
        Map<String, dynamic> json) =>
    _$_CancelPriceInformationModel(
      epochCancelDatetime: json['cancel_datetime'] == null
          ? 0
          : const StringToEpochTimeConverter()
              .fromJson(json['cancel_datetime'] as String),
      cancelPrice: json['cancel_price'] as int? ?? 0,
    );

Map<String, dynamic> _$$_CancelPriceInformationModelToJson(
        _$_CancelPriceInformationModel instance) =>
    <String, dynamic>{
      'cancel_datetime': const StringToEpochTimeConverter()
          .toJson(instance.epochCancelDatetime),
      'cancel_price': instance.cancelPrice,
    };
