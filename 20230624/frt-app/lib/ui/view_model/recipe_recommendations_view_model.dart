import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/api/model/recipes_model.dart';
import '../../data/repository/front_repository.dart';
import '../../util/datetime_formatter.dart';
import '../state/recipe_recommendations_state.dart';

class RecipeRecommendationsViewModel extends StateNotifier<RecipeRecommendationsState> {
  RecipeRecommendationsViewModel() : super(const RecipeRecommendationsState());

  late DateTime _lastSearchDate;

  var _isLoading = false;

  /// 初回読み込み
  ///
  /// LoadingFullScreenもしくはPullToRefreshのfutureでしか呼ばない想定
  Future<bool> initLoad() async {
    _isLoading = true;
    try {
      await _getMasterInfo();
      state = await _get(1);
    } finally {
      _isLoading = false;
    }
    return true;
  }

  /// 読み込み
  Future<bool> load() async {
    if (_isLoading) {
      return true;
    }
    _isLoading = true;

    try {
      final nextPage = state.page + 1;
      final next = await _get(nextPage);
      state = state.copyWith(
        recommendations: {
          ...state.recommendations,
          ...next.recommendations,
        },
        page: nextPage,
      );
    } finally {
      _isLoading = false;
    }
    return true;
  }

  Future<RecipeRecommendationsState> _get(int page) async {
    final Map<String, List<RecipesModel>> recommendations = {};
    for (var i = 0; i < 3; i++) {
      final String searchDateString;
      if (page == 1 && i == 0) {
        searchDateString = formatYearMonthDayFromDateTime(
          _lastSearchDate = DateTime.now(),
        );
      } else {
        searchDateString = formatYearMonthDayFromDateTime(
          _lastSearchDate = _lastSearchDate.add(const Duration(days: -1)),
        );
      }
      final response = await GetIt.I<FrontRepository>().getRecommendations(
        date: searchDateString,
      );
      if (response.first.recipes.isEmpty) {
        continue;
      }
      recommendations.addAll({
        searchDateString: response.first.recipes,
      });
    }

    await Future<void>.delayed(const Duration(seconds: 2)).then((value) {});
    return RecipeRecommendationsState(
      recommendations: recommendations,
      page: page,
      masterInfo: state.masterInfo,
    );
  }

  Future<void> _getMasterInfo() async {
    final response = await GetIt.I<FrontRepository>().getMasterInfo();
    state = state.copyWith(
      masterInfo: response.first,
    );
  }
}
