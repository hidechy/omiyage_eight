import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../common/akachanhonpo_shop_info.dart';
import '../../common/app_loading.dart';
import '../../common/attention_text.dart';
import '../../common/cart_button.dart';
import '../../common/product_cassette.dart';
import '../../state/favorite_page_state.dart';
import '../../view_model/favorite_page_view_model.dart';

/// お気に入り専用商品カセットリスト
class ProductCassetteList extends StatelessWidget {
  const ProductCassetteList({
    Key? key,
    this.noSearchResults,
    this.firstColumn,
    required this.cartButtonKey,
  }) : super(key: key);

  /// リストが空の時に表示
  final Widget? noSearchResults;
  final Widget? firstColumn;
  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  Widget build(BuildContext context) {
    final isEmpty = context.select((FavoritePageState state) => state.products.isEmpty);
    if (isEmpty) {
      return SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: noSearchResults ?? const SizedBox.shrink(),
      );
    }
    return CustomScrollView(
      slivers: [
        if (firstColumn != null) SliverToBoxAdapter(child: firstColumn!),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            _itemBuilder,
            childCount: context.select((FavoritePageState state) => (state.productCount / 3).ceil() + 1),
          ),
        ),
        SliverVisibility(
            visible: context.select((FavoritePageState state) => state.isLastPage),
            sliver: SliverPadding(
              padding: const EdgeInsets.only(top: 16, bottom: 90),
              sliver: SliverToBoxAdapter(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: AttentionText(),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: AkachanhonpoShopInfo(),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    return Builder(
      builder: (context) {
        final builder = Builder(
          builder: (context) {
            final first = 3 * index;
            final second = 3 * index + 1;
            final third = 3 * index + 2;
            Widget cassette(int i) => i < context.select((FavoritePageState state) => state.productCount)
                ? ProductCassette(
                    key: ValueKey(context.read<FavoritePageState>()[i]),
                    productModel: context.read<FavoritePageState>()[i],
                    cartButtonKey: cartButtonKey,
                  )
                : Container();
            return IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 318,
                    child: cassette(first),
                  ),
                  const Flexible(flex: 23, child: SizedBox.shrink()),
                  Flexible(
                    flex: 318,
                    child: cassette(second),
                  ),
                  const Flexible(flex: 23, child: SizedBox.shrink()),
                  Flexible(
                    flex: 318,
                    child: cassette(third),
                  ),
                ],
              ),
            );
          },
        );
        if (3 * index >= context.select((FavoritePageState state) => state.productCount)) {
          return context.select((FavoritePageState state) => state.isLastPage)
              ? const SizedBox.shrink()
              : LoadingPartialScreen(
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
