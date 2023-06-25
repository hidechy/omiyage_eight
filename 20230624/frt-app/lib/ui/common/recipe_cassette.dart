import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_it/get_it.dart';

import '../../data/api/model/recipes_model.dart';
import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/analytics_manager.dart';
import '../page/recipe_detail_page.dart';
import 'app_cached_network_image.dart';
import 'app_colors.dart';
import 'app_image_not_found.dart';

/// レシピ一覧カセット
class RecipeCassette extends StatelessWidget {
  const RecipeCassette(
    this._model, {
    Key? key,
  }) : super(key: key);

  final SizedBox _verticalMargin = const SizedBox(height: 8);
  final RecipesModel _model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      // レシピ詳細へ遷移
      onTap: () {
        final analytics = GetIt.I<AnalyticsManager>();
        analytics.sendEvent(
          eventType: AnalyticsEventType.selectRecipeDetail,
          parameters: {EventParameterType.recipeId: _model.id},
        );

        Navigator.push(context, RecipeDetailPage.route(_model.id));
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 1,
              child: AppCachedNetworkImage(
                imageUrl: _model.squareVideo.posterUrl,
                errorBuilder: (_, __, ___) => const AppImageNotFound(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _mainText(_model.title),
                _verticalMargin,
                Text(
                  _model.description,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w300,
                    color: AppColors.black2,
                    height: 1.36,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                _verticalMargin,
                _iconText(Assets.icons.recipeTime.svg(), _model.cookingTime),
                _verticalMargin,
                _iconText(Assets.icons.recipeCalorie.svg(), _model.calorie),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _iconText(SvgPicture icon, String text) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            width: 4,
          ),
          Flexible(child: _mainText(text)),
        ],
      ),
    );
  }

  Widget _mainText(String text) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        height: 1.0,
        color: AppColors.black2,
      ),
    );
  }
}
