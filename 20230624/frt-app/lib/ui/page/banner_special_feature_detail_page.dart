import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:native_webview/native_webview.dart';
import 'package:provider/provider.dart';

import '../../data/api/model/banner_advertising_model.dart';
import '../../data/api/model/product_model.dart';
import '../../enum/screen_name.dart';
import '../../enum/search_history_type.dart';
import '../../util/logger.dart';
import '../common/app_buttons.dart';
import '../common/app_cached_network_image.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../common/attention_text.dart';
import '../common/cart_button.dart';
import '../common/order_changing_bar.dart';
import '../common/product_cassette.dart';
import '../common/sale_by_measure_image.dart';
import '../common/search_app_bar.dart';
import '../common/total_price.dart';
import '../state/banner_special_feature_detail_page_state.dart';
import '../view_model/banner_special_feature_detail_page_view_model.dart';
import 'product_search_results_page.dart';

class BannerSpecialFeatureDetailPageArguments {
  const BannerSpecialFeatureDetailPageArguments({
    required this.bannerAdvertisingId,
    required this.categoryCode,
  });
  final String bannerAdvertisingId;
  final String categoryCode;
}

class BannerSpecialFeatureDetailPage extends StatelessWidget {
  const BannerSpecialFeatureDetailPage({Key? key}) : super(key: key);

  static Route<Object?> route({
    required String bannerAdvertisingId,
    required String categoryCode,
  }) =>
      MaterialPageRoute<Object?>(
        settings: RouteSettings(name: name),
        builder: (_) => Provider.value(
          value: BannerSpecialFeatureDetailPageArguments(
            bannerAdvertisingId: bannerAdvertisingId,
            categoryCode: categoryCode,
          ),
          child: const BannerSpecialFeatureDetailPage(),
        ),
      );

  static final name = ScreenName.afterLoginBannerSpecialFeatureDetailPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build BannerSpecialFeatureDetailPage');
    return Provider<GlobalKey<CartButtonState>>(
      create: (_) => GlobalKey<CartButtonState>(),
      builder: (context, _) {
        final cartButtonKey = context.watch<GlobalKey<CartButtonState>>();
        return Scaffold(
          appBar: SearchAppBar(
            historyType: SearchHistoryType.product,
            onSubmitted: (String keyword) {
              return Navigator.push(context, ProductSearchResultsPage.route(keyword: keyword));
            },
          ),
          body: Column(
            children: [
              const OrderChangingBar(),
              Expanded(
                child: Stack(
                  children: const [
                    _Body(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: TotalPrice(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: CartButton(key: cartButtonKey),
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = context.watch<BannerSpecialFeatureDetailPageArguments>();
    return StateNotifierProvider<BannerSpecialFeatureDetailPageViewModel, BannerSpecialFeatureDetailPageState>(
      create: (_) => BannerSpecialFeatureDetailPageViewModel(
        bannerAdvertisingId: arguments.bannerAdvertisingId,
        categoryCode: arguments.categoryCode,
      ),
      builder: (context, _) {
        return LoadingFullScreen(
          future: context.read<BannerSpecialFeatureDetailPageViewModel>().load,
          content: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                SizedBox(height: 8.0),
                _AdvertisingListView(),
                SaleByMeasureImage(margin: EdgeInsets.only(top: 16, bottom: 32)),
                Padding(
                  padding: EdgeInsets.only(bottom: 100),
                  child: AttentionText(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _AdvertisingListView extends StatelessWidget {
  const _AdvertisingListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: context.select((BannerSpecialFeatureDetailPageState state) => state.bannerAdvertisingModel.length),
      itemBuilder: (context, index) {
        return Column(
          children: [
            _AdvertisingComponent(index: index),
            _ProductCassetteList(index: index),
            _CategoryLink(index: index),
            const _RegularShoppingButton(),
            const _AnnotationText(),
          ],
        );
      },
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }
}

class _AdvertisingComponent extends StatelessWidget {
  const _AdvertisingComponent({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final advertisingModel = context.select((BannerSpecialFeatureDetailPageState state) =>
        (index < state.bannerAdvertisingModel.length) ? state.bannerAdvertisingModel[index] : null);
    if (advertisingModel == null) {
      return const SizedBox.shrink();
    }

    final width = AppMediaQuery.of(context).size.width - 32;
    return Column(
      children: [
        for (final imageUrl in advertisingModel.imageUrls.take(3))
          SizedBox(
            width: width,
            child: _ImageComponent(url: imageUrl),
          ),
        _ImageVideoComponent(advertisingModel: advertisingModel),
      ],
    );
  }
}

class _ImageComponent extends StatelessWidget {
  const _ImageComponent({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    return url.isNotEmpty
        ? AppCachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => const SizedBox.shrink(),
          )
        : const SizedBox.shrink();
  }
}

class _ImageVideoComponent extends StatelessWidget {
  const _ImageVideoComponent({
    Key? key,
    required this.advertisingModel,
  }) : super(key: key);

  final BannerAdvertisingModel advertisingModel;

  @override
  Widget build(BuildContext context) {
    final width = (AppMediaQuery.of(context).size.width - 32) / 2;
    final height = _getHeight(width);
    final staticMovieFlag4 = advertisingModel.staticMovieFlag4;
    final staticMovieFlag5 = advertisingModel.staticMovieFlag5;
    final staticImageUrl4 = staticMovieFlag4 ? advertisingModel.staticImageUrl4 : advertisingModel.imageUrls[3];
    final staticImageUrl5 = staticMovieFlag5 ? advertisingModel.staticImageUrl5 : advertisingModel.imageUrls[4];

    return (staticImageUrl4.isNotEmpty || staticImageUrl5.isNotEmpty)
        ? Row(
            children: [
              staticMovieFlag4
                  ? _VideoComponent(url: staticImageUrl4)
                  : SizedBox(
                      child: _ImageComponent(url: staticImageUrl4),
                      width: width,
                      height: height,
                    ),
              staticMovieFlag5
                  ? _VideoComponent(url: staticImageUrl5)
                  : SizedBox(
                      child: _ImageComponent(url: staticImageUrl5),
                      width: width,
                      height: height,
                    ),
            ],
          )
        : const SizedBox.shrink();
  }
}

class _VideoComponent extends StatelessWidget {
  const _VideoComponent({
    Key? key,
    required this.url,
  }) : super(key: key);

  final String url;

  @override
  Widget build(BuildContext context) {
    final size = AppMediaQuery.of(context).size;
    final width = (size.width - 32) / 2;
    final height = _getHeight(width);
    return url.isNotEmpty
        ? SizedBox(
            width: width,
            height: height,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              clipBehavior: Clip.hardEdge,
              child: SizedBox(
                width: size.width,
                height: _getHeight(size.width),
                child: WebView(
                  initialUrl: 'https://www.youtube.com/',
                  initialData: _getWebViewData(url),
                ),
              ),
            ),
          )
        : SizedBox(
            width: width,
            height: height,
          );
  }

  WebViewData _getWebViewData(String url) {
    return WebViewData('''
      <!DOCTYPE html>
      <html>
        <head>
          <meta charset="utf-8">
          <meta name="viewport" content="width=device-width, initial-scale=1">
        </head>
        <body> 
          <div style="position:relative; width: 100%; padding-top: 56.25%;">
            <iframe width="100%" height="100%" src="$url?rel=0&showinfo=0&fs=1&modestbranding=1" title="YouTube video player"
              frameborder="0" allow="accelerometer; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
              allowfullscreen style="position: absolute; top: 0; left: 0; width: 100%; height: 100%;">
            </iframe>
           </div>
        </body>
      </html>
    ''');
  }
}

class _ProductCassetteList extends StatelessWidget {
  const _ProductCassetteList({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final products = context.select((BannerSpecialFeatureDetailPageState state) =>
        index < state.bannerAdvertisingModel.length ? state.bannerAdvertisingModel[index].products : null);
    if (products == null) {
      return const SizedBox.shrink();
    }

    return Column(
      children: [
        for (var index = 0; index < (products.length / 3).ceil(); index++) _itemBuilder(context, products, index),
      ],
    );
  }

  Widget _itemBuilder(BuildContext context, List<ProductModel> products, int index) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final first = index * 3;
        final second = index * 3 + 1;
        final third = index * 3 + 2;
        return Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8),
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _cassette(context, products, first, constrains),
                _cassette(context, products, second, constrains),
                _cassette(context, products, third, constrains),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _cassette(BuildContext context, List<ProductModel> products, int index, BoxConstraints constraints) {
    final cartButtonKey = context.watch<GlobalKey<CartButtonState>>();
    return SizedBox(
      width: constraints.maxWidth * 0.318,
      child: index < products.length
          ? ProductCassette(
              cartButtonKey: cartButtonKey,
              productModel: products[index],
            )
          : Container(),
    );
  }
}

class _CategoryLink extends StatelessWidget {
  const _CategoryLink({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final advertisingModel = context.select((BannerSpecialFeatureDetailPageState state) =>
        index < state.bannerAdvertisingModel.length ? state.bannerAdvertisingModel[index] : null);
    if (advertisingModel == null) {
      return const SizedBox.shrink();
    }

    final categoriesMap = context.select((BannerSpecialFeatureDetailPageState state) => state.categoriesMap);
    return Column(
      children: [
        _CategoryButton(
          title: advertisingModel.departmentName1,
          categoryCode: advertisingModel.departmentCategoryCode1,
          categoryName: categoriesMap[advertisingModel.departmentCategoryCode1],
        ),
        _CategoryButton(
          title: advertisingModel.departmentName2,
          categoryCode: advertisingModel.departmentCategoryCode2,
          categoryName: categoriesMap[advertisingModel.departmentCategoryCode2],
        )
      ],
    );
  }
}

class _CategoryButton extends StatelessWidget {
  const _CategoryButton({
    Key? key,
    this.title,
    this.categoryCode,
    this.categoryName,
  }) : super(key: key);
  final String? title;
  final String? categoryCode;
  final String? categoryName;

  @override
  Widget build(BuildContext context) {
    if ((title?.isEmpty ?? true) || (categoryCode?.isEmpty ?? true) || (categoryName?.isEmpty ?? true)) {
      return const SizedBox.shrink();
    }
    return _LinkButton(
      title: title!,
      onPressed: () => Navigator.of(context).push(ProductSearchResultsPage.route(
        categoryCode: categoryCode,
        categoryName: categoryName,
      )),
    );
  }
}

class _RegularShoppingButton extends StatelessWidget {
  const _RegularShoppingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _LinkButton(
      onPressed: () async {
        Navigator.pop(context);
      },
      title: '通常のお買い物はこちらへ',
    );
  }
}

class _LinkButton extends StatelessWidget {
  const _LinkButton({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: BlueOutlinedButton.large(
        onPressed: onPressed,
        child: Text(title),
        widthFactor: 0.74,
      ),
    );
  }
}

class _AnnotationText extends StatelessWidget {
  const _AnnotationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '※商品のデザインは変更になる場合がございます。\n※一部店舗では取扱のない商品がございます。',
          style: TextStyle(
            fontSize: 12,
            height: 16 / 12,
            color: AppColors.gray1,
          ),
        ),
      ),
    );
  }
}

double _getHeight(double width) {
  return width * 9 / 16;
}
