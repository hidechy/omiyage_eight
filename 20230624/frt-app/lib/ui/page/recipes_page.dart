import 'dart:io';

import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../enum/recipe_search_type.dart';
import '../../enum/screen_name.dart';
import '../../util/datetime_formatter.dart';
import '../../util/logger.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/error_handler.dart';
import '../common/pull_to_refresh.dart';
import '../common/recipe_cassette.dart';
import '../common/recipe_search_app_bar.dart';
import '../common/total_price.dart';
import '../state/recipe_keyword_search_state.dart';
import '../state/recipe_recommendations_state.dart';
import '../view_model/recipe_keyword_search_view_model.dart';
import '../view_model/recipe_recommendations_view_model.dart';

class RecipesPageArguments {
  RecipesPageArguments({required this.searchType, String? keyword}) : keyword = keyword ?? '';

  final String keyword;
  final RecipeSearchType searchType;
}

/// レシピ一覧画面
class RecipesPage extends StatelessWidget {
  const RecipesPage({Key? key}) : super(key: key);

  static Route<Object?> route({String? keyword, required RecipeSearchType searchType}) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: RecipesPageArguments(
            keyword: keyword,
            searchType: searchType,
          ),
          child: const RecipesPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.recipesPage.value;

  static const headerCount = 1;
  static const rowCount = 2;

  @override
  Widget build(BuildContext context) {
    logger.info('Build RecipesPage');
    final arguments = context.watch<RecipesPageArguments>();
    logger.info('search_word:$arguments');
    if (arguments.searchType == RecipeSearchType.keyword || arguments.searchType == RecipeSearchType.category) {
      return _Recipes(arguments.keyword, arguments.searchType);
    } else {
      return const _Recommendations();
    }
  }
}

/// キーワード検索一覧
class _Recipes extends StatelessWidget {
  const _Recipes(this.keyword, this.searchType, {Key? key}) : super(key: key);

  final String keyword;
  final RecipeSearchType searchType;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RecipeKeywordSearchViewModel, RecipeKeywordSearchState>(
      create: (context) => RecipeKeywordSearchViewModel(keyword),
      builder: (context, _) {
        return LoadingFullScreen(
          future: () => context.read<RecipeKeywordSearchViewModel>().initLoad(),
          content: _RecipesWidget(keyword, searchType),
          errorOperators: [ErrorOperatorWrapper(_handler)],
        );
      },
    );
  }
}

class _RecipesWidget extends StatelessWidget {
  const _RecipesWidget(this.keyword, this.searchType, {Key? key}) : super(key: key);

  final String keyword;
  final RecipeSearchType searchType;

  @override
  Widget build(BuildContext context) {
    final masterInfo = context.select((RecipeKeywordSearchState state) => state.masterInfo);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: RecipeSearchAppBar(previousSearchWord: keyword, masterInfo: masterInfo),
      floatingActionButton: const CartButton(),
      body: _RecipesBody(keyword: keyword, searchType: searchType),
    );
  }
}

class _RecipesBody extends StatelessWidget {
  const _RecipesBody({
    Key? key,
    required this.keyword,
    required this.searchType,
  }) : super(key: key);
  final String keyword;
  final RecipeSearchType searchType;

  @override
  Widget build(BuildContext context) {
    final state = context.select((RecipeKeywordSearchState state) => state);
    final isExistRecipe = context.select((RecipeKeywordSearchState state) => state.recipes.isNotEmpty);

    return PullToRefresh(
      onRefresh: (context) async {
        await context.read<RecipeKeywordSearchViewModel>().initLoad();
      },
      child: Visibility(
        visible: isExistRecipe,
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: RecipesPage.headerCount +
              (state.recipes.length / RecipesPage.rowCount).ceil() +
              (state.pageHasNext && state.recipes.length < state.totalSize ? 1 : 0),
          itemBuilder: (_, index) => _RecipesBodyBuilder(
            keyword: keyword,
            index: index,
            searchType: searchType,
          ),
        ),
        replacement: _NotFound(keyword: keyword, searchType: searchType),
      ),
    );
  }
}

class _RecipesBodyBuilder extends StatelessWidget {
  const _RecipesBodyBuilder({
    Key? key,
    required this.keyword,
    required this.index,
    required this.searchType,
  }) : super(key: key);
  final String keyword;
  final int index;
  final RecipeSearchType searchType;

  @override
  Widget build(BuildContext context) {
    final recipesLength = context.select((RecipeKeywordSearchState state) => state.recipes.length);
    if (index == 0) {
      return _RecipesHeader(
        total: context.select((RecipeKeywordSearchState state) => state.totalSize),
        keyword: keyword,
        searchType: searchType,
      );
    }

    final recipesIndex = RecipesPage.rowCount * (index - RecipesPage.headerCount);
    if (recipesIndex >= recipesLength) {
      return _LoadingRecipes(keyword: keyword);
    }

    // レシピカセット 2カセット1組のリストとして描画
    return LayoutBuilder(
      builder: (context, constraints) {
        final first = recipesIndex;
        final second = recipesIndex + 1;

        Widget recipeCassette(BuildContext context, BoxConstraints constraints, int i) {
          final recipe =
              context.select((RecipeKeywordSearchState state) => i < recipesLength ? state.recipes[i] : null);
          return Container(
              // 1カセット幅 = コンテンツ幅の48.9%
              width: constraints.maxWidth * 0.489,
              padding: const EdgeInsets.only(bottom: 8),
              child: recipe == null ? const SizedBox.shrink() : RecipeCassette(recipe));
        }

        return IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              recipeCassette(context, constraints, first),
              recipeCassette(context, constraints, second),
            ],
          ),
        );
      },
    );
  }
}

Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
  final httpStatus = error.response!.statusCode;
  if (httpStatus == HttpStatus.notFound) {
    return handler.resolve();
  }
  return handler.next(error);
}

class _LoadingRecipes extends StatelessWidget {
  const _LoadingRecipes({Key? key, required this.keyword}) : super(key: key);
  final String keyword;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RecipeKeywordSearchViewModel>();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: LoadingPartialScreen(
        future: () => viewModel.load(),
        content: const SizedBox.shrink(),
      ),
    );
  }
}

class _RecipesHeader extends StatelessWidget {
  const _RecipesHeader({
    Key? key,
    this.total = 0,
    required this.keyword,
    required this.searchType,
  }) : super(key: key);
  final int total;
  final String keyword;
  final RecipeSearchType searchType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          {RecipeSearchType.category: '「$keyword」', RecipeSearchType.keyword: '「$keyword」の検索結果'}[searchType] ?? '',
          style: const TextStyle(
            fontSize: 18,
            color: AppColors.blackAlpha80,
            fontWeight: FontWeight.w600,
            height: 25 / 18,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        if (total > 0)
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              '全$total件',
              style: const TextStyle(
                fontSize: 14,
                color: AppColors.blackAlpha80,
                fontWeight: FontWeight.w600,
                height: 19 / 14,
              ),
            ),
          ),
        const SizedBox(height: 14),
      ],
    );
  }
}

class _NotFound extends StatelessWidget {
  const _NotFound({
    Key? key,
    required this.keyword,
    required this.searchType,
  }) : super(key: key);
  final String keyword;
  final RecipeSearchType searchType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: _RecipesHeader(
            total: 0,
            keyword: keyword,
            searchType: searchType,
          ),
        ),
        const SizedBox(
          width: double.infinity,
          child: Center(
            child: Text(
              '検索条件に該当するレシピが\n見つかりませんでした',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: AppColors.gray3),
            ),
          ),
        )
      ],
    );
  }
}

/// おすすめ一覧
class _Recommendations extends StatelessWidget {
  const _Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RecipeRecommendationsViewModel, RecipeRecommendationsState>(
      create: (context) => RecipeRecommendationsViewModel(),
      builder: (context, _) {
        return LoadingFullScreen(
            future: () => context.read<RecipeRecommendationsViewModel>().initLoad(),
            content: const _RecommendationsWidget(),
            errorOperators: [ErrorOperatorWrapper(_handler)]);
      },
    );
  }
}

class _RecommendationsWidget extends StatelessWidget {
  const _RecommendationsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final masterInfo = context.select((RecipeRecommendationsState state) => state.masterInfo);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: RecipeSearchAppBar(previousSearchWord: '', masterInfo: masterInfo),
      floatingActionButton: const CartButton(),
      body: const _RecommendationsBody(),
    );
  }
}

class _RecommendationsBody extends StatelessWidget {
  const _RecommendationsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = context.select((RecipeRecommendationsState state) => state.recommendations.length);

    return PullToRefresh(
      onRefresh: (context) async {
        await context.read<RecipeRecommendationsViewModel>().initLoad();
      },
      child: Visibility(
        visible: length > 0,
        child: Stack(
          children: [
            ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              // ヘッダーとLoadingPartialScreenを描画するため+2する
              itemCount: length + 2,
              itemBuilder: (context, index) => _RecommendationsListItem(index: index),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: TotalPrice(),
            ),
          ],
        ),
        replacement: const _NotFound(keyword: '', searchType: RecipeSearchType.recommendation),
      ),
    );
  }
}

class _RecommendationsListItem extends StatelessWidget {
  const _RecommendationsListItem({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    final recommendations = context.select((RecipeRecommendationsState state) => state.recommendations);
    if (index == 0) {
      return const _RecommendationsHeader();
    }

    final recommendationsIndex = index - RecipesPage.headerCount;
    if (recommendationsIndex >= recommendations.length) {
      return const _LoadingRecommendations();
    }

    final key = recommendations.keys.elementAt(recommendationsIndex);
    final recipes = recommendations[key];
    final itemCount = (recipes!.length / RecipesPage.rowCount).ceil();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 14),
        Text(
          formatMonthDay(key),
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.blackAlpha80,
          ),
        ),
        const SizedBox(height: 12),
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return LayoutBuilder(
              builder: (context, constraints) {
                final length = recipes.length;
                final first = RecipesPage.rowCount * index;
                final second = RecipesPage.rowCount * index + 1;

                Widget recipeCassette(int i) => Container(
                    // 1カセット幅 = コンテンツ幅の48.9%
                    width: constraints.maxWidth * 0.489,
                    padding: const EdgeInsets.only(bottom: 8),
                    child: i < length ? RecipeCassette(recipes[i]) : const SizedBox.shrink());
                return IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [recipeCassette(first), recipeCassette(second)],
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}

class _RecommendationsHeader extends StatelessWidget {
  const _RecommendationsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(height: 24),
        Text(
          'おすすめレシピ',
          style: TextStyle(
            fontSize: 18,
            color: AppColors.blackAlpha80,
            fontWeight: FontWeight.w600,
            height: 25 / 18,
          ),
        ),
      ],
    );
  }
}

class _LoadingRecommendations extends StatelessWidget {
  const _LoadingRecommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RecipeRecommendationsViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: LoadingPartialScreen(
        future: () => viewModel.load(),
        content: const SizedBox.shrink(),
      ),
    );
  }
}
