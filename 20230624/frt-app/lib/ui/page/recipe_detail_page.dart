import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../data/api/model/ingredient_group_model.dart';
import '../../data/api/model/ingredient_model.dart';
import '../../data/api/model/step_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../enum/recipe_search_type.dart';
import '../../enum/screen_name.dart';
import '../../gen/assets.gen.dart';
import '../../util/access_point_info_manager.dart';
import '../../util/analytics_manager.dart';
import '../../util/basic_authentication_manager.dart';
import '../../util/logger.dart';
import '../common/app_buttons.dart';
import '../common/app_cached_network_image.dart';
import '../common/app_colors.dart';
import '../common/app_dialogs.dart';
import '../common/app_image_not_found.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/cassette_label_and_link_row.dart';
import '../common/order_changing_bar.dart';
import '../common/product_cassette_notification.dart';
import '../common/product_cassette_set.dart';
import '../common/recipe_cassette.dart';
import '../common/recipe_search_app_bar.dart';
import '../common/total_price.dart';
import '../state/product_cassette_list_state.dart';
import '../state/recipe_detail_page_state.dart';
import '../state/recipe_video_overlay_state.dart';
import '../state/recipe_video_state.dart';
import '../view_model/recipe_detail_bottom_sheet_view_model.dart';
import '../view_model/recipe_detail_page_view_model.dart';
import '../view_model/recipe_video_overlay_view_model.dart';
import '../view_model/recipe_video_view_model.dart';
import 'product_search_results_page.dart';
import 'recipes_page.dart';

class RecipeDetailPageArguments {
  const RecipeDetailPageArguments({required this.recipeId});

  final String recipeId;
}

class _RecipeDetailCommon {
  static const sectionTitleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.blackAlpha80,
    height: 22 / 16,
  );

  static const divider = Divider(height: 0);
  static const verticalMargin_32 = SizedBox(height: 32);
  static const verticalMargin_24 = SizedBox(height: 24);
  static const verticalMargin_16 = SizedBox(height: 16);
  static const verticalMargin_12 = SizedBox(height: 12);
  static const verticalMargin_8 = SizedBox(height: 8);
}

/// レシピ詳細ページ
class RecipeDetailPage extends StatelessWidget {
  const RecipeDetailPage({Key? key}) : super(key: key);

  static Route<Object?> route(String recipeId) => MaterialPageRoute<Object?>(
        builder: (_) => Provider.value(
          value: RecipeDetailPageArguments(recipeId: recipeId),
          child: const RecipeDetailPage(),
        ),
        settings: RouteSettings(
          name: name,
        ),
      );

  static final name = ScreenName.recipeDetailPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build RecipeDetailPage');
    final recipeId = context.select((RecipeDetailPageArguments value) => value.recipeId);
    return MultiProvider(
      providers: [
        Provider(create: (_) => GlobalKey<CartButtonState>()),
        StateNotifierProvider<RecipeDetailPageViewModel, RecipeDetailPageState>(
          create: (_) => RecipeDetailPageViewModel(),
        ),
      ],
      builder: (context, _) {
        return LoadingFullScreen(
          future: () => context.read<RecipeDetailPageViewModel>().load(recipeId),
          content: const RecipeDetailWidget(),
        );
      },
    );
  }
}

class RecipeDetailWidget extends StatelessWidget {
  const RecipeDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final masterInfo = context.select((RecipeDetailPageState state) => state.masterInfo);
    final cartButtonKey = context.watch<GlobalKey<CartButtonState>>();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: RecipeSearchAppBar(masterInfo: masterInfo),
      body: _RecipeDetailBody(cartButtonKey: cartButtonKey),
      floatingActionButton: CartButton(key: cartButtonKey),
    );
  }
}

/// レシピ詳細を構成するWidget
class _RecipeDetailBody extends StatelessWidget {
  const _RecipeDetailBody({required this.cartButtonKey});

  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  Widget build(BuildContext context) {
    final detailModel = context.select((RecipeDetailPageState state) => state.detailModel);
    final recommendations = context.select((RecipeDetailPageState state) => state.recommendationRecipes);
    return VisibilityDetector(
      key: GlobalKey(),
      onVisibilityChanged: (VisibilityInfo info) {
        /// レシピ詳細から画面遷移した場合、再生中の動画を停止させるためにレシピ詳細の表示が0になったかどうかを画面遷移したかどうかの判定に利用する
        /// 補足：https://task.7andi-digital.com/browse/IYNS-10518 を参照のこと
        final context = (info.key as GlobalKey).currentContext;
        final viewModel = context?.read<RecipeDetailPageViewModel?>();
        if (viewModel?.mounted == true) {
          viewModel!.recipeDetailVisible = info.visibleFraction != 0;
        }
      },
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OrderChangingBar(),
                // Recipe Picture/Video
                const _RecipeVideoPlayback(),
                _RecipeDetailCommon.verticalMargin_8,
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: SvgPicture.network(
                      '$iynsStaticImagesBaseUrlAndPath/logo-delish-kitchen.svg',
                      placeholderBuilder: (_) => const SizedBox.shrink(),
                      headers: context.select((BasicAuthenticationState state) => state.base64Header),
                    ),
                  ),
                ),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.blackAlpha80,
                    fontWeight: FontWeight.w300,
                    height: 19 / 14,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _RecipeDetailCommon.verticalMargin_32,
                        Text(detailModel.lead),
                        _RecipeDetailCommon.verticalMargin_8,
                        Text(
                          detailModel.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            height: 25 / 18,
                          ),
                        ),
                        _RecipeDetailCommon.verticalMargin_24,
                        // recipe description
                        const Text('料理説明', style: _RecipeDetailCommon.sectionTitleStyle),
                        _RecipeDetailCommon.verticalMargin_12,
                        Text(detailModel.description),
                        _RecipeDetailCommon.verticalMargin_8,
                        Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            // cooking time
                            _IconText(icon: Assets.icons.recipeTime.svg(), text: detailModel.cookingTime),
                            // calorie
                            _IconText(icon: Assets.icons.recipeCalorie.svg(), text: detailModel.calorie),
                          ],
                        ),
                        // servings
                        _RecipeDetailCommon.verticalMargin_24,
                        Text('材料(${detailModel.servings})', style: _RecipeDetailCommon.sectionTitleStyle),
                        _RecipeDetailCommon.verticalMargin_16,
                        _RecipeDetailCommon.divider,
                        _IngredientColumns(
                          cartButtonKey: cartButtonKey,
                        ),
                        _RecipeDetailCommon.divider,
                        // steps
                        _RecipeDetailCommon.verticalMargin_32,
                        const Text('作り方', style: _RecipeDetailCommon.sectionTitleStyle),
                        const _StepColumn(),
                        _RecipeDetailCommon.verticalMargin_32,
                        if (recommendations.isNotEmpty) const _Recommendations(),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 62)
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: TotalPrice(),
          ),
        ],
      ),
    );
  }
}

/// 材料セクションカラム
class _IngredientColumns extends StatelessWidget {
  const _IngredientColumns({required this.cartButtonKey, Key? key}) : super(key: key);

  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  Widget build(BuildContext context) {
    final List<List<Widget>> ingredientColumns = [];
    final ingredientGroups = context.select((RecipeDetailPageState state) => state.detailModel.ingredientGroups);
    for (IngredientGroupModel ingredientGroup in ingredientGroups) {
      final List<Widget> columns = [];
      final groupName = ingredientGroup.name;
      if (groupName.isNotEmpty) {
        // 材料グループ名がある場合
        columns.add(Container(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(groupName),
              _RecipeDetailCommon.verticalMargin_8,
              for (IngredientModel ingredient in ingredientGroup.ingredients) _subIngredientColumn(context, ingredient),
            ],
          ),
        ));
      } else {
        // 材料グループ名がない場合
        for (IngredientModel ingredient in ingredientGroup.ingredients) {
          columns.add(_mainIngredientColumn(context, ingredient));
        }
      }
      ingredientColumns.add(columns);
    }
    return Column(children: [
      for (List<Widget> ingredientColumn in ingredientColumns)
        for (Widget column in ingredientColumn) Column(children: [column])
    ]);
  }

  /// 材料セクションメイン材料カラム
  Widget _mainIngredientColumn(BuildContext context, IngredientModel ingredient) {
    return Column(
      children: [
        Container(
          constraints: const BoxConstraints(minHeight: 56),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: DefaultTextStyle(
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      height: 19 / 14,
                    ),
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            ingredient.name,
                            overflow: TextOverflow.visible,
                            style: const TextStyle(color: AppColors.black2),
                          ),
                        ),
                        Text(
                          ingredient.servings,
                          style: const TextStyle(color: AppColors.gray1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              BlueElevatedButton.small(
                analyticsEventType: AnalyticsEventType.recipeProductSearch,
                eventParameters: {EventParameterType.recipeProductKeyword: ingredient.name},
                onPressed: () async => await _showBottomSheet<void>(context, ingredient.name, cartButtonKey),
                child: const Text('カートへ'),
              )
            ],
          ),
        ),
        _RecipeDetailCommon.divider,
      ],
    );
  }

  /// 材料セクションサブ材料カラム
  Widget _subIngredientColumn(BuildContext context, IngredientModel ingredient) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          color: AppColors.white3,
          constraints: const BoxConstraints(minHeight: 56),
          width: 4,
        ),
        Expanded(
          child: Wrap(
            direction: Axis.horizontal,
            children: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                child: Text(ingredient.name, overflow: TextOverflow.ellipsis),
              ),
              Text(ingredient.servings, style: const TextStyle(color: AppColors.blackAlpha60)),
            ],
          ),
        ),
        BlueElevatedButton.small(
          onPressed: () async => await _showBottomSheet<void>(context, ingredient.name, cartButtonKey),
          child: const Text('カートへ'),
        ),
      ],
    );
  }

  /// ボトムシート表示
  Future<T?> _showBottomSheet<T>(BuildContext context, String productName, GlobalKey<CartButtonState> cartButtonKey) {
    return showAppModalBottomSheet(
      context: context,
      title: '商品を選択する',
      dialogName: 'recipeProductModal',
      constraints: const BoxConstraints(maxHeight: 450),
      content: _RecipeDetailBottomSheetContent(productName, cartButtonKey),
      isScrollControlled: true,
    );
  }
}

/// 調理手順カラム
class _StepColumn extends StatelessWidget {
  const _StepColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final steps = context.select((RecipeDetailPageState state) => state.detailModel.steps);
    final List<Widget> stepColumns = [];
    for (StepModel step in steps) {
      stepColumns.add(Container(
        margin: const EdgeInsets.only(top: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 2, right: 8),
              child: Text(
                step.step.toString(),
                style: const TextStyle(fontWeight: FontWeight.w600, color: AppColors.blackAlpha60),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(step.description, style: const TextStyle(color: AppColors.blackAlpha60)),
                  // point
                  if (step.point.isNotEmpty)
                    Container(
                      width: double.infinity,
                      color: AppColors.background2,
                      margin: const EdgeInsets.only(top: 12, bottom: 4),
                      padding: const EdgeInsets.all(8),
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 12,
                          height: 16 / 12,
                          color: AppColors.blackAlpha80,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ポイント',
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            _RecipeDetailCommon.verticalMargin_8,
                            Text(
                              step.point,
                              style: const TextStyle(fontWeight: FontWeight.w300),
                            )
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ));
    }
    return Column(children: [
      for (Widget stepColumn in stepColumns) Column(children: [stepColumn])
    ]);
  }
}

class _IconText extends StatelessWidget {
  const _IconText({required this.icon, required this.text, Key? key}) : super(key: key);

  final SvgPicture icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 1, right: 4),
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Text(text),
        ),
      ],
    );
  }
}

/// 商品選択ボトムシート用コンテンツ
class _RecipeDetailBottomSheetContent extends StatelessWidget {
  const _RecipeDetailBottomSheetContent(this.productName, this._cartButtonKey, {Key? key}) : super(key: key);

  final String productName;

  final GlobalKey<CartButtonState> _cartButtonKey;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RecipeDetailBottomSheetViewModel, ProductCassetteListState>(
      create: (_) => RecipeDetailBottomSheetViewModel(productName),
      builder: (context, _) {
        return LoadingFullScreen(
          future: () async => await context.read<RecipeDetailBottomSheetViewModel>().getKeywordSearchProductList(),
          content: NotificationListener<ProductCassetteNotification>(
            child: _productsContent(context),
            onNotification: (_) {
              Navigator.of(context).pop();
              return true;
            },
          ),
        );
      },
    );
  }

  /// 検索商品表示
  Widget _productsContent(BuildContext context) {
    final state = context.select((ProductCassetteListState value) => value);
    if (state.totalSize == 0) {
      // エラー文言は product_search_result_page 合わせ
      return const Center(
        child: Text(
          '検索条件に該当する商品が\n見つかりませんでした。',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: AppColors.gray3,
            height: 19 / 14,
          ),
        ),
      );
    }
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductCassetteSet(
              products: state.products,
              categoryName: '',
              onPressed: () async {},
              cartButtonKey: _cartButtonKey,
              needLabel: false,
              needLinkLabel: false,
              paddingBottom: 0.0,
            ),
            Container(
              padding: const EdgeInsets.only(top: 16, right: 16),
              alignment: Alignment.bottomRight,
              child: BlueTextButton.medium(
                onPressed: () {
                  // 商品検索一覧へ遷移
                  Navigator.push(context, ProductSearchResultsPage.route(keyword: productName));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('商品を一覧でみる'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Assets.icons.arrowRight.svg(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 動画再生Widget
class _RecipeVideoPlayback extends StatelessWidget {
  const _RecipeVideoPlayback();

  @override
  Widget build(BuildContext context) {
    final posterUrl = context.select((RecipeDetailPageState state) => state.detailModel.squareVideo.posterUrl);
    final videoUrl = context.select((RecipeDetailPageState state) => state.detailModel.squareVideo.videoUrl);
    return StateNotifierProvider<RecipeVideoViewModel, RecipeVideoState>(
      create: (_) => RecipeVideoViewModel(videoUrl: videoUrl)..init(),
      builder: (context, _) {
        final viewModel = context.read<RecipeVideoViewModel>();
        return Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Center(
                child: AppCachedNetworkImage(
                  imageUrl: posterUrl,
                  fit: BoxFit.fill,
                  errorBuilder: (_, __, ___) => const AppImageNotFound(fit: BoxFit.fill),
                ),
              ),
            ),
            if (context.select((RecipeVideoState state) => state.isVideoControllerInit))
              AspectRatio(
                aspectRatio: 1,
                child: Visibility(
                  visible: !viewModel.videoController.value.hasError,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      VideoPlayer(viewModel.videoController),
                      StreamBuilder<bool>(
                        stream: viewModel.firstPlayStream,
                        builder: (_, snapShot) {
                          return !snapShot.hasData
                              ? Center(
                                  child: IconButton(
                                    onPressed: () {
                                      final analytics = GetIt.I<AnalyticsManager>();
                                      analytics.sendEvent(eventType: AnalyticsEventType.recipeMoviePlay);
                                      viewModel.videoController.play();
                                      viewModel.firstPlaySink.add(true);
                                    },
                                    icon: Assets.icons.recipeVideoPlayCircle.svg(),
                                    iconSize: 120,
                                  ),
                                )
                              : _RecipeVideoOverlay(viewModel.videoController);
                        },
                      ),
                    ],
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}

/// 動画再生オーバーレイ
class _RecipeVideoOverlay extends StatelessWidget {
  const _RecipeVideoOverlay(this.videoController, {Key? key}) : super(key: key);

  // VideoPlayerController は実装先で dispose すること
  final VideoPlayerController videoController;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<RecipeVideoOverlayViewModel, RecipeVideoOverlayState>(
      create: (_) => RecipeVideoOverlayViewModel(videoController, videoController.value.duration),
      builder: (context, _) {
        final viewModel = context.read<RecipeVideoOverlayViewModel>();
        final opacity = context.select((RecipeVideoOverlayState state) => state.opacity);
        final uiVisibility = context.select((RecipeVideoOverlayState state) => state.uiVisibility);
        final isPlaying = context.select((RecipeVideoOverlayState state) => state.isPlaying);
        if (context.select((RecipeDetailPageState state) => !state.recipeDetailVisible && isPlaying)) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            viewModel.playPause();
          });
        }
        return GestureDetector(
          onTap: () => viewModel.overlayShow(),
          child: Container(
            color: AppColors.transparent,
            child: AnimatedOpacity(
              opacity: opacity,
              duration: const Duration(milliseconds: 250),
              onEnd: () => viewModel.onOpacityAnimationEnd(),
              child: Visibility(
                visible: uiVisibility,
                replacement: Container(),
                child: Stack(
                  children: [
                    Center(
                      child: isPlaying
                          ? const SizedBox.shrink()
                          : IconButton(
                              iconSize: 64,
                              onPressed: () => viewModel.playPause(),
                              icon: Assets.icons.recipeVideoPlay.svg(),
                            ),
                    ),
                    const _RecipeVideoOverlayBottomUi(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// 動画再生オーバーレイのボトムUI
class _RecipeVideoOverlayBottomUi extends StatelessWidget {
  const _RecipeVideoOverlayBottomUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.read<RecipeVideoOverlayViewModel>();
    final isPlaying = context.select((RecipeVideoOverlayState state) => state.isPlaying);
    final sliderValue = context.select((RecipeVideoOverlayState state) => state.sliderValue);
    final isMute = context.select((RecipeVideoOverlayState state) => state.isMute);

    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 60,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.transparent, AppColors.black],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox.square(
                dimension: 60,
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      viewModel.playPause();
                    },
                    icon: isPlaying ? Assets.icons.recipeVideoPause.svg() : Assets.icons.recipeVideoPlay.svg(),
                  ),
                ),
              ),
              Expanded(
                child: SliderTheme(
                  data: SliderThemeData(
                    trackShape: _CustomSliderTrackShape(),
                    trackHeight: 4,
                    activeTrackColor: AppColors.main,
                    inactiveTrackColor: AppColors.gray1,
                    thumbColor: AppColors.white,
                  ),
                  child: Slider(
                    value: sliderValue,
                    onChangeStart: (_) => viewModel.onSliderMoveStart(),
                    onChanged: (value) => viewModel.onSliderMoving(value),
                    onChangeEnd: (value) => viewModel.onSliderMoveEnd(value),
                  ),
                ),
              ),
              SizedBox(
                width: 45,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    viewModel.getTimeLeft(),
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 12,
                      height: 16 / 12,
                    ),
                  ),
                ),
              ),
              SizedBox.square(
                dimension: 60,
                child: Center(
                  child: IconButton(
                    color: AppColors.white,
                    onPressed: () => viewModel.onTapVolumeIcon(),
                    icon: isMute ? Assets.icons.recipeVideoMute.svg() : Assets.icons.recipeVideoSpeaker.svg(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomSliderTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    const double trackHeight = 4.0;
    final double trackLeft = offset.dx;
    final double trackTop = offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

/// 最下段おすすめレシピ表示Widget
class _Recommendations extends StatelessWidget {
  const _Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final recommendations = context.select((RecipeDetailPageState state) => state.recommendationRecipes);
    return Column(
      children: [
        CassetteLabelAndLinkRow(
          titleLabel: 'おすすめレシピ',
          needLinkLabel: recommendations.length >= 3,
          onPressed: () => Navigator.push(context, RecipesPage.route(searchType: RecipeSearchType.recommendation)),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            Widget recipeCassette(int index) {
              return Container(
                  // 1カセット幅 = コンテンツ幅の48.9%
                  width: constraints.maxWidth * 0.489,
                  padding: const EdgeInsets.only(bottom: 8),
                  child: recommendations.length <= 1 && recommendations.length < index
                      ? const SizedBox.shrink()
                      : RecipeCassette(recommendations[index]));
            }

            return IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  recipeCassette(0),
                  recipeCassette(1),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}
