import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import '../../enum/category_type.dart';
import '../../enum/sort_number.dart';
import '../../util/logger.dart';
import '../common/app_loading.dart';
import '../common/cart_button.dart';
import '../common/compliance_warning_labels.dart';
import '../common/product_cassette_list_for_sortable_page.dart';
import '../common/pull_to_refresh.dart';
import '../common/sale_by_measure_image.dart';
import '../common/sort_modal.dart';
import '../state/sub_category_tab_page_state.dart';
import '../view_model/sub_category_tab_page_view_model.dart';

class SubCategoryTabPage extends StatefulWidget {
  const SubCategoryTabPage({
    Key? key,
    required this.categoryType,
    required this.categoryCode,
    required this.categoryName,
    required this.cartButtonKey,
  }) : super(key: key);

  final CategoryType categoryType;
  final String categoryCode;
  final String categoryName;
  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  State<SubCategoryTabPage> createState() => _SubCategoryTabPageState();
}

class _SubCategoryTabPageState extends State<SubCategoryTabPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    logger.info('Build SubCategoryTabPage');
    return StateNotifierProvider<SubCategoryTabPageViewModel, SubCategoryTabPageState>(
      create: (_) => SubCategoryTabPageViewModel(),
      builder: (context, _) {
        final selectedSortNumber = context.select((SubCategoryTabPageState state) => state.selectedSortNumber);
        return Scaffold(
          backgroundColor: Colors.white,
          body: LoadingFullScreen(
            future: () => context
                .read<SubCategoryTabPageViewModel>()
                .getProducts(widget.categoryCode, 1, selectedSortNumber, true),
            content: PullToRefresh(
              onRefresh: (_context) => _context
                  .read<SubCategoryTabPageViewModel>()
                  .getProducts(widget.categoryCode, 1, selectedSortNumber, true),
              child: _ProductCassetteList(
                sortNumber: selectedSortNumber,
                categoryType: widget.categoryType,
                categoryCode: widget.categoryCode,
                categoryName: widget.categoryName,
                cartButtonKey: widget.cartButtonKey,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _ProductCassetteList extends StatelessWidget {
  const _ProductCassetteList({
    required this.sortNumber,
    required this.categoryType,
    required this.categoryCode,
    required this.categoryName,
    required this.cartButtonKey,
    Key? key,
  }) : super(key: key);

  final SortNumber sortNumber;
  final CategoryType categoryType;
  final String categoryCode;
  final String categoryName;
  final GlobalKey<CartButtonState> cartButtonKey;

  @override
  Widget build(BuildContext context) {
    final products = context.select((SubCategoryTabPageState state) => state.products);
    final totalSize = context.select((SubCategoryTabPageState state) => state.totalSize);
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 16),
      child: ProductCassetteListForSortablePage(
        products: products,
        totalSize: totalSize,
        cartButtonKey: cartButtonKey,
        onLoad: (page) => context.read<SubCategoryTabPageViewModel>().getProducts(categoryCode, page, sortNumber),
        noSearchResults: const _NoProductMessage(),
        firstColumn: _HeaderRow(
          categoryType: categoryType,
          categoryCode: categoryCode,
          categoryName: categoryName,
        ),
        categoryType: categoryType,
        primaryScrollController: true,
      ),
    );
  }
}

class _HeaderRow extends StatelessWidget {
  const _HeaderRow({
    required this.categoryType,
    required this.categoryCode,
    required this.categoryName,
    Key? key,
  }) : super(key: key);

  final CategoryType categoryType;
  final String categoryCode;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    final isNotEmpty = context.select((SubCategoryTabPageState state) => state.products.isNotEmpty);
    return Column(
      children: [
        Visibility(
            visible: isNotEmpty,
            child: Column(
              children: [
                ComplianceWarningLabels(
                  categoryType: categoryType,
                ),
                const SaleByMeasureImage(),
              ],
            )),
        const SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                '"$categoryName"の商品',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (isNotEmpty && !categoryType.isDrug)
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: SortModal(
                    sortNumber: context.select((SubCategoryTabPageState state) => state.selectedSortNumber) ??
                        SortNumber.recommendation,
                    onPressed: (sortNumberReturnValue) {
                      showLoadingModal(
                        context: context,
                        future: () => context
                            .read<SubCategoryTabPageViewModel>()
                            .getProducts(categoryCode, 1, sortNumberReturnValue, true),
                      );
                    }),
              ),
          ],
        ),
      ],
    );
  }
}

class _NoProductMessage extends StatelessWidget {
  const _NoProductMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: const Padding(
        padding: EdgeInsets.only(top: 12),
        child: Padding(
          padding: EdgeInsets.only(top: 12),
          child: Text(
            '現在こちらのカテゴリは、\n当店ではお取り扱いがございません',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Color(0x66000000),
            ),
          ),
        ),
      ),
    );
  }
}
