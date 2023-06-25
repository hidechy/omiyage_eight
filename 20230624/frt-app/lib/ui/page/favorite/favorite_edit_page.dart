import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../../data/api/model/product_model.dart';
import '../../../enum/analytics_event_type.dart';
import '../../../enum/event_parameter_type.dart';
import '../../../enum/screen_name.dart';
import '../../../util/analytics_manager.dart';
import '../../../util/logger.dart';
import '../../../util/text_formatter.dart';
import '../../common/app_buttons.dart';
import '../../common/app_cached_network_image.dart';
import '../../common/app_colors.dart';
import '../../common/app_image_not_found.dart';
import '../../common/app_loading.dart';
import '../../common/app_media_query.dart';
import '../../common/error_handler.dart';
import '../../common/order_changing_bar.dart';
import '../../common/pull_to_refresh.dart';
import '../../state/favorite_page_state.dart';
import '../../view_model/favorite_page_view_model.dart';

/// お気に入り編集ページ
class FavoriteEditPage extends StatelessWidget {
  const FavoriteEditPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const FavoriteEditPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.favoriteEditPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build FavoriteEditPage');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'お気に入り編集',
        ),
      ),
      backgroundColor: Colors.white,
      body: StateNotifierProvider<FavoritePageViewModel, FavoritePageState>(
        create: (_) => FavoritePageViewModel(),
        builder: (context, _) {
          return SafeArea(
            child: LoadingFullScreen(
              future: () async {
                return await context.read<FavoritePageViewModel>().initLoad();
              },
              content: PullToRefresh(
                onRefresh: (BuildContext context) async {
                  await context.read<FavoritePageViewModel>().initLoad();
                },
                child: Column(
                  children: const [
                    OrderChangingBar(),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: _Products(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Products extends StatelessWidget {
  const _Products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = context.select((FavoritePageState state) => state.products.length);
    if (length < 1) {
      return const _NoProductMessage();
    }

    return ListView.builder(
      itemBuilder: (_, index) {
        return _ItemBuilder(index: index);
      },
      itemCount: length + 1,
    );
  }
}

class _ItemBuilder extends StatelessWidget {
  const _ItemBuilder({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    // お気に入り編集画面では、リスト下部に到達した際に必ずページ読み込み処理を行う
    return Builder(
      builder: (context) {
        final builder = Builder(
          builder: (context) {
            return _ProductCassette(index: index);
          },
        );
        final isLoading = context.select((FavoritePageState state) => state.productCount <= index && !state.isLastPage);
        if (isLoading) {
          return LoadingPartialScreen(
            future: () async {
              return await context.read<FavoritePageViewModel>().getFavorites();
              // https://7andi-digital.atlassian.net/browse/IYNS-21803
              // 上記チケットの対応でresultはtrueにしかなりえない状態になっているので以下はコメントします
              // final result = await context.read<FavoritePageViewModel>().getFavorites();
              // if (!result) {
              //   showReloadDialog(context, key);
              // }
              // return true;
            },
            content: builder,
          );
        }
        return builder;
      },
    );
  }
}

class _NoProductMessage extends StatelessWidget {
  const _NoProductMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = AppMediaQuery.of(context).size;
    final padding = AppMediaQuery.of(context).padding;
    final bottom = padding.bottom;
    logger.info(bottom);
    final top = AppMediaQuery.of(context).headerHeight;
    logger.info(top);
    final size = Size(media.width, media.height - (top + bottom));
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: SizedBox.fromSize(
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
                    height: 19 / 14,
                    fontWeight: FontWeight.w300,
                    color: AppColors.gray2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 24),
                child: Text(
                  '商品ページでお気に入りボタンを押すと\nお気に入りページに保存することができます',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    height: 16 / 12,
                    fontWeight: FontWeight.w300,
                    color: AppColors.gray2,
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

class _ProductCassette extends StatelessWidget {
  const _ProductCassette({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final product =
        context.select((FavoritePageState state) => index < state.products.length ? state.products[index] : null);
    return product != null
        ? Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: Row(
              children: [
                _Image(
                  product: product,
                ),
                _ProductDetail(
                  product: product,
                ),
                _DeleteButton(product: product),
              ],
            ),
          )
        : const SizedBox.shrink();
  }
}

class _ProductDetail extends StatelessWidget {
  const _ProductDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    final priceSuffix = product.isProductNumber ? '〜' : '';
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 商品名
            Text(
              product.productName,
              maxLines: 1,
              style: const TextStyle(
                color: AppColors.black2,
                fontSize: 14,
                height: 19 / 14,
              ),
            ), // 値段欄
            Visibility(
              visible: _hasStock(product),
              child: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${formatToYen(product.basePrice)}$priceSuffix',
                      style: const TextStyle(
                        color: AppColors.black,
                        fontSize: 16,
                        height: 22 / 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        '${formatToYen(product.price)}$priceSuffix(税込)',
                        style: const TextStyle(
                          color: AppColors.black2,
                          fontSize: 12,
                          height: 16 / 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              replacement: const Text(
                '在庫なし',
                style: TextStyle(
                  color: AppColors.black2,
                  fontSize: 14,
                  height: 16 / 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: AppMediaQuery.of(context).widthRate * 64,
          height: AppMediaQuery.of(context).widthRate * 64,
          child: AppCachedNetworkImage(
            imageUrl: product.thumbnailUrl,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => const AppImageNotFound(),
          ),
        ),
        _ImageWhiteCover(
          product: product,
        ),
      ],
    );
  }
}

class _ImageWhiteCover extends StatelessWidget {
  const _ImageWhiteCover({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: !_hasStock(product),
      child: Positioned.fill(
        child: Container(
          color: AppColors.whiteAlpha70,
        ),
      ),
    );
  }
}

class _DeleteButton extends StatelessWidget {
  const _DeleteButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    Future<ErrorHandlerState> _handler(DioError error, BuildContext context, ErrorHandler handler) async {
      final httpStatus = error.response!.statusCode;
      if (httpStatus == 404) {
        context.read<FavoritePageViewModel>().deleteFavorite(product.productId);
        return handler.resolve();
      }
      return handler.next(error);
    }

    return GreyOutlinedButton.small(
      onPressed: () async {
        showLoadingModal(
          context: context,
          future: () async {
            final analytics = GetIt.I<AnalyticsManager>();
            analytics.sendEvent(
              eventType: AnalyticsEventType.deleteFavorite,
              parameters: {EventParameterType.productId: product.productId},
            );

            await context.read<FavoritePageViewModel>().requestDeleteFavorite(product.productId);
            return true;
          },
          errorOperators: [
            ErrorOperatorWrapper(_handler),
          ],
        );
      },
      child: const Text('削除'),
    );
  }
}

// 商品の在庫有無の判定
// お気に入りの場合、品番商品はmaxBuyPossibleNumberで在庫有無は判定できない(https://omni-st.backlog.jp/view/NEW_DERSV-6712)ため品番商品は在庫ありとして扱う
// 品番商品以外はmaxBuyPossibleNumberで在庫判定をする
bool _hasStock(ProductModel productModel) => productModel.isProductNumber || productModel.maxBuyPossibleNumber >= 1;
