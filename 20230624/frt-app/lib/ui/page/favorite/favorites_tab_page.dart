import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../../util/logger.dart';
import '../../common/app_buttons.dart';
import '../../common/app_colors.dart';
import '../../common/app_loading.dart';
import '../../common/app_media_query.dart';
import '../../common/cart_button.dart';
import '../../common/order_changing_bar.dart';
import '../../common/pull_to_refresh.dart';
import '../../common/sale_by_measure_image.dart';
import '../../state/favorite_page_state.dart';
import '../../view_model/favorite_page_view_model.dart';
import 'favorite_edit_page.dart';
import 'favorites_page.dart';
import 'product_cassette_list.dart';

/// お気に入り商品一覧
class FavoritesTabPage extends StatelessWidget {
  const FavoritesTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    logger.info('Build FavoritesTabPage');
    return Scaffold(
      backgroundColor: Colors.white,
      body: StateNotifierProvider<FavoritePageViewModel, FavoritePageState>(
        create: (context) => FavoritePageViewModel(),
        builder: (context, _) {
          return LoadingFullScreen(
            future: () => _load(context),
            content: PullToRefresh(
              onRefresh: (BuildContext context) async {
                await _load(context);
              },
              child: Column(
                children: [
                  const OrderChangingBar(),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                      child: ProductCassetteList(
                        firstColumn: const _FirstColumn(),
                        noSearchResults: const _NoProductMessage(),
                        cartButtonKey: context.watch<GlobalKey<CartButtonState>>(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<bool> _load(BuildContext context) async {
    await context.read<FavoritePageViewModel>().initLoad();
    return true;
  }
}

class _FirstColumn extends StatelessWidget {
  const _FirstColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNotEmpty = context.select((FavoritePageState state) => state.products.isNotEmpty);
    return Column(
      children: [
        if (isNotEmpty) const SaleByMeasureImage(margin: EdgeInsets.only(top: 8)),
        const _FavoritesEditLabel(),
      ],
    );
  }
}

class _FavoritesEditLabel extends StatelessWidget {
  const _FavoritesEditLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Align(
        alignment: Alignment.centerRight,
        child: BlueTextButton.medium(
          child: const Text('お気に入りを編集'),
          onPressed: () async {
            final navigator = Navigator.of(context);
            await Navigator.of(context, rootNavigator: true).push(FavoriteEditPage.route());
            navigator.pushReplacement(FavoritesPage.route());
          },
        ),
      ),
    );
  }
}

class _NoProductMessage extends StatelessWidget {
  const _NoProductMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = AppMediaQuery.of(context).size;
    final padding = AppMediaQuery.of(context).padding;
    final bottom = padding.bottom + kBottomNavigationBarHeight;
    logger.info(bottom);
    final top = AppMediaQuery.of(context).headerHeight;
    logger.info(top);
    final size = Size(media.width, media.height - (top + bottom));
    return SizedBox.fromSize(
      size: size,
      child: Center(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                'お気に入りに追加した商品はありません',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  height: 17 / 14,
                  color: AppColors.gray3,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: Text(
                '商品ページでお気に入りボタンを押すと\nこのページに保存することができます',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  height: 18 / 12,
                  color: AppColors.gray3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
