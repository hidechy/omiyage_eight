import 'package:get_it/get_it.dart';
import 'package:state_notifier/state_notifier.dart';

import '../../data/repository/front_repository.dart';
import '../state/recipe_keyword_search_state.dart';

class RecipeKeywordSearchViewModel extends StateNotifier<RecipeKeywordSearchState> {
  RecipeKeywordSearchViewModel(this._keyword) : super(const RecipeKeywordSearchState());

  final String _keyword;
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
      if (state.length < state.totalSize) {
        final next = await _get(state.page + 1);
        state = state.copyWith(
          recipes: [
            ...state.recipes,
            ...next.recipes,
          ],
          page: next.page,
        );
      }
    } finally {
      _isLoading = false;
    }
    return true;
  }

  Future<RecipeKeywordSearchState> _get(int page) async {
    // レシピキーワード検索
    final response = await GetIt.I<FrontRepository>().getSearchDelisList(
      keyword: _keyword,
      page: page,
      viewCount: 30,
    );
    return RecipeKeywordSearchState(
      recipes: response.first.recipes,
      totalSize: response.totalDataNum,
      pageHasNext: response.currentPageNum < response.totalPageNum,
      masterInfo: state.masterInfo,
      page: page,
    );
  }

  Future<void> _getMasterInfo() async {
    final response = await GetIt.I<FrontRepository>().getMasterInfo();
    state = state.copyWith(
      masterInfo: response.first,
    );
  }
}
