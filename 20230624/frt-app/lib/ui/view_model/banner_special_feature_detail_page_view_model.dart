import 'dart:io';

import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/banner_advertising_model.dart';
import '../../data/api/model/categories_model.dart';
import '../../data/api/model/response_model.dart';
import '../../data/repository/banners_repository.dart';
import '../../data/repository/categories_repository.dart';
import '../../util/cart_info_manager.dart';
import '../state/banner_special_feature_detail_page_state.dart';

class BannerSpecialFeatureDetailPageViewModel extends StateNotifier<BannerSpecialFeatureDetailPageState>
    with LocatorMixin {
  BannerSpecialFeatureDetailPageViewModel({
    required this.bannerAdvertisingId,
    required this.categoryCode,
  }) : super(BannerSpecialFeatureDetailPageState());

  final String bannerAdvertisingId;
  final String categoryCode;

  CartInfoManager get _cartInfoManager => read();

  Future<bool> load() async {
    final bannerAdvertisingModel = await _getBannersAfterLoginAdvertising();
    final categories = await _getCategories(bannerAdvertisingModel);

    state = state.copyWith(bannerAdvertisingModel: bannerAdvertisingModel, categoriesMap: categories);
    return true;
  }

  Future<List<BannerAdvertisingModel>> _getBannersAfterLoginAdvertising() async {
    final response = await GetIt.I<BannersRepository>().getBannerAdvertising(
      bannerAdvertisingId: bannerAdvertisingId,
      categoryCode: categoryCode,
      shopCode: _cartInfoManager.info.shop.shopCode,
      cartId: _cartInfoManager.info.cartId,
    );
    return response.data;
  }

  Future<Map<String, String>> _getCategories(
    List<BannerAdvertisingModel> banners,
  ) async {
    final shopCode = _cartInfoManager.info.shop.shopCode;
    final repository = GetIt.I<CategoriesRepository>();

    // 非同期にAPIを実行
    final responseList = await Future.wait(
      banners
          .expand((banner) => [
                if (banner.departmentCategoryCode1.isNotEmpty) banner.departmentCategoryCode1,
                if (banner.departmentCategoryCode2.isNotEmpty) banner.departmentCategoryCode2,
              ])
          .map(
        (categoryCode) async {
          try {
            return await repository.getCategory(shopCode: shopCode, targetCode: categoryCode);
          } on DioError catch (error) {
            return _errorHandler(error);
          }
        },
      ),
    );

    //レスポンスを配列に格納
    final categories = Map.fromEntries(responseList
        .where((response) => response.data.isNotEmpty)
        .map((response) => MapEntry(response.first.target.categoryCode, response.first.target.categoryName)));

    return categories;
  }

  ResponseModel<CategoriesModel> _errorHandler(DioError error) {
    if (error.type != DioErrorType.response) {
      throw error;
    }

    final httpStatus = error.response!.statusCode;
    if (error.response!.data is! Map<String, dynamic>) {
      throw error;
    }
    final errorResponse = ResponseModel<CategoriesModel>.fromJson(error.response!.data as Map<String, dynamic>);
    final statusCode = errorResponse.statusCode;
    final errorResponseCode = errorResponse.errorDetails.firstOrNull?.errorReasonCode;

    if (!((httpStatus == HttpStatus.notFound && statusCode == 'E-00006') ||
        (httpStatus == HttpStatus.badRequest && statusCode == 'E-00002' && errorResponseCode == '1002030'))) {
      throw (error);
    }
    return errorResponse;
  }
}
