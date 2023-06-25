import 'package:dio/dio.dart';

import '../../../enum/delivery_schedules_fulfillment_type.dart';
import '../../repository/delivery_repository.dart';
import '../iyns_api_dio.dart';
import '../model/delivery_addresses_model.dart';
import '../model/delivery_restriction_model.dart';
import '../model/delivery_shops_model.dart';
import '../model/receipt_locations_model.dart';
import '../model/response_model.dart';
import '../model/select_delivery_plan_model.dart';
import '../model/selectable_address_model.dart';

class DeliveryDao extends IynsApiDio implements DeliveryRepository {
  @override
  Future<ResponseModel<SelectDeliveryPlanModel>> schedules({
    required String shopCode,
    DeliverySchedulesFulfillmentType? fulfillmentType,
    String locationId = '',
  }) async {
    final Response<Map<String, dynamic>> response;

    if (fulfillmentType != null) {
      final queryParameters = {
        'fulfillment_type': fulfillmentType.parameter,
      };
      if (locationId.isNotEmpty) {
        queryParameters['location_id'] = locationId;
      }
      response = await get<Map<String, dynamic>>(
        '/delivery/$shopCode/delivery_schedules',
        queryParameters: queryParameters,
      );
    }
    // fulfillment_typeの指定がない場合
    else {
      if (locationId.isNotEmpty) {
        final queryParameters = {
          'location_id': locationId,
        };
        response = await get<Map<String, dynamic>>(
          '/delivery/$shopCode/delivery_schedules',
          queryParameters: queryParameters,
        );
      } else {
        response = await get<Map<String, dynamic>>(
          '/delivery/$shopCode/delivery_schedules',
        );
      }
    }

    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SelectDeliveryPlanModel>> changeableSchedules(
    int orderId,
  ) async {
    final response = await get<Map<String, dynamic>>(
      '/orders/$orderId/changeable_delivery_schedules',
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<ReceiptLocationsModel>> getShopAndLockerInfo() async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/receipt_locations',
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<DeliveryRestrictionModel>> getDeliveryRestriction({
    required String shopCode,
    String? prefectureCode,
    String? cityCode,
    String? townCode,
    String? chomeCode,
  }) async {
    assert((prefectureCode == null && cityCode == null && townCode == null && chomeCode == null) ||
        (prefectureCode != null && cityCode != null && townCode != null && chomeCode != null));
    final response = await get<Map<String, dynamic>>(
      '/delivery/$shopCode/delivery_restrictions',
      queryParameters: <String, String?>{
        'prefecture_code': prefectureCode,
        'city_code': cityCode,
        'town_code': townCode,
        'chome_code': chomeCode,
      }..removeWhere((key, String? value) => value?.isNotEmpty != true),
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SelectableAddressModel>> getPrefectures() async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/addresses/prefectures',
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SelectableAddressModel>> getCites({
    required String prefectureCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/addresses/cites',
      queryParameters: <String, String>{
        'prefecture_code': prefectureCode,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SelectableAddressModel>> getTowns({
    required String prefectureCode,
    required String cityCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/addresses/towns',
      queryParameters: <String, String>{
        'prefecture_code': prefectureCode,
        'city_code': cityCode,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<SelectableAddressModel>> getChomes({
    required String prefectureCode,
    required String cityCode,
    required String townCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/addresses/chomes',
      queryParameters: <String, String>{
        'prefecture_code': prefectureCode,
        'city_code': cityCode,
        'town_code': townCode,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<DeliveryShopsModel>> getDeliveryShops({
    required String prefectureCode,
    required String cityCode,
    required String townCode,
    required String chomeCode,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/shops',
      queryParameters: <String, String>{
        'prefecture_code': prefectureCode,
        'city_code': cityCode,
        'town_code': townCode,
        'chome_code': chomeCode,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }

  @override
  Future<ResponseModel<DeliveryAddressesModel>> getDeliveryAddresses({
    required String postalNumber,
  }) async {
    final response = await get<Map<String, dynamic>>(
      '/delivery/addresses',
      queryParameters: <String, String>{
        'postal_number': postalNumber,
      },
    );
    return ResponseModel.fromJson(response.data!);
  }
}
