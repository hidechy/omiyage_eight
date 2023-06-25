import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/akachanhonpo_repository.dart';
import '../state/akachanhonpo_category_top_page_state.dart';

class AkachanHonpoCategoryTopPageViewModel extends StateNotifier<AkachanhonpoCategoryTopPageState> with LocatorMixin {
  AkachanHonpoCategoryTopPageViewModel() : super(AkachanhonpoCategoryTopPageState());

  Future<bool> load() async {
    final response = await GetIt.I<AkachanhonpoRepository>().fetchCategoryTopInfo();
    state = state.copyWith(model: response);
    return true;
  }
}
