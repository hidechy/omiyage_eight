import 'package:flutter/material.dart';

import '../../data/api/model/product_model.dart';
import '../../enum/category_type.dart';
import 'about_medical_product.dart';
import 'akachanhonpo_shop_info.dart';
import 'app_loading.dart';
import 'attention_text.dart';
import 'cart_button.dart';
import 'drug_confirmation.dart';
import 'drug_shop_info.dart';
import 'product_cassette.dart';

// ProductCassetteListとの統合が好ましいが先出し先行リリースでは対応しない
class ProductCassetteListForSortablePage extends StatelessWidget {
  const ProductCassetteListForSortablePage({
    Key? key,
    required this.products,
    required this.totalSize,
    required this.cartButtonKey,
    required this.onLoad,
    this.categoryType = CategoryType.other,
    this.noSearchResults,
    this.firstColumn,
    this.primaryScrollController = false,
  }) : super(key: key);

  /// リストが空の時に表示
  final Widget? noSearchResults;
  final Widget? firstColumn;

  final List<ProductModel> products;
  final int totalSize;
  final GlobalKey<CartButtonState> cartButtonKey;
  final Future<bool> Function(int page) onLoad;
  final CategoryType categoryType;
  final bool primaryScrollController;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return Column(
        children: [
          if (firstColumn != null) firstColumn!,
          if (noSearchResults != null) noSearchResults!,
        ],
      );
    }
    late bool isLastPage;
    late int lastIndex;
    return ListView.custom(
      shrinkWrap: true,
      primary: primaryScrollController,
      childrenDelegate: SliverChildBuilderDelegate(
        (listContext, index) {
          return Column(
            children: [
              if (firstColumn != null && index == 0) firstColumn!,
              (isLastPage && lastIndex == index && index != 0)
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16),
                            child: AttentionText(),
                          ),
                          if (categoryType.isDrug)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: AboutMedicalProduct(),
                            ),
                          if (categoryType.isDrug)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: DrugConfirmation(),
                            ),
                          if (categoryType.isDrug)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: DrugShopInfo(),
                            ),
                          if (categoryType.isAkahon)
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 16),
                              child: AkachanhonpoShopInfo(),
                            ),
                        ],
                      ),
                    )
                  : _itemBuilder(listContext, index),
            ],
          );
        },
        childCount: () {
          lastIndex = (products.length / 3).ceil();
          isLastPage = (products.length >= totalSize);
          return lastIndex + 1;
        }(),
      ),
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
            Widget cassette(int i) => i < products.length
                ? ProductCassette(
                    key: ValueKey(products[i]),
                    productModel: products[i],
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
        if (3 * index >= products.length) {
          final page = (index * 3 / 30).floor() + 1;
          return LoadingPartialScreen(future: () => onLoad(page), content: builder);
        }
        return builder;
      },
    );
  }
}
