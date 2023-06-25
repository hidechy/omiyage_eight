import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/login_visitor_model.dart';
import '../../data/api/model/shops_deliverables_get_response_model.dart';
import '../../data/repository/login_repository.dart';
import '../../data/repository/shops_repository.dart';
import '../../util/authentication_manager.dart';
import '../../util/cart_info_manager.dart';
import '../state/top_page_state.dart';

class TopPageViewModel extends StateNotifier<TopPageState> with LocatorMixin {
  TopPageViewModel() : super(TopPageState());

  CartInfoManager get _cartInfoManager => read();

  void updatePostalNumber(String postalNumber) {
    state = state.copyWith(
      postalNumber: postalNumber,
      isValidPostalNumber: RegExp('^[0-9]{7}\$').hasMatch(postalNumber),
    );
  }

  Future<void> loginVisitor(String? shopCode) async {
    final loginVisitorModel = await _loginVisitor(shopCode);
    await _saveVisitorInfo(
      iyVisitId: loginVisitorModel.iyVisitId,
      shopCode: loginVisitorModel.shopCode,
      postalNumber: shopCode == null ? null : state.postalNumber!,
    );
  }

  Future<ShopsDeliverablesGetResponseModel> postalNumberDeliverable() async {
    final response = await GetIt.I<ShopsRepository>().getShopsDeliverables(postalNumber: state.postalNumber!);
    return response.first;
  }

  Future<LoginVisitorModel> _loginVisitor(String? shopCode) async {
    final response = await GetIt.I<LoginRepository>().loginVisitor(shopCode: shopCode);
    _cartInfoManager.info = response.first.cart;
    return response.first;
  }

  Future<bool> _saveVisitorInfo({
    String? postalNumber,
    required String shopCode,
    required String iyVisitId,
  }) async {
    await GetIt.I<AuthenticationManager>().saveVisitorInfo(
      postalNumber: postalNumber,
      shopCode: shopCode,
      iyVisitId: iyVisitId,
    );
    return true;
  }
}
