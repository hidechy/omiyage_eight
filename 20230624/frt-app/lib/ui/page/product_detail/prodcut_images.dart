import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../../enum/analytics_event_type.dart';
import '../../../gen/assets.gen.dart';
import '../../../util/analytics_manager.dart';
import '../../../util/logger.dart';
import '../../common/app_cached_network_image.dart';
import '../../common/app_image_not_found.dart';
import '../../common/app_media_query.dart';
import '../../common/image_slider_indicator.dart';
import '../../state/product_detail_page_state.dart';
import '../../view_model/product_detail_page_view_model.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({Key? key, this.isProductDetailPage = true}) : super(key: key);

  final bool isProductDetailPage;

  @override
  Widget build(BuildContext context) {
    final currentIndex = context.select((ProductDetailPageState state) => state.imageIndex);
    return ChangeNotifierProvider(
      create: (_) => PageController(initialPage: currentIndex),
      child: Column(
        children: [
          if (isProductDetailPage) const SizedBox(height: 24.0),
          _ProductImageSlider(
            isProductDetailPage: isProductDetailPage,
            height: isProductDetailPage ? null : AppMediaQuery.of(context).size.height * 0.8,
          ),
          const _ImageSlideIndicator(),
        ],
      ),
    );
  }
}

// 商品画像スライダー
class _ProductImageSlider extends StatelessWidget {
  const _ProductImageSlider({
    Key? key,
    this.isProductDetailPage = true,
    this.height,
  }) : super(key: key);

  final bool isProductDetailPage;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final imagePaths = context.select((ProductDetailPageState state) => state.productDetailModel.imagePaths);
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: height ?? AppMediaQuery.of(context).widthRate * 196,
        maxWidth: AppMediaQuery.of(context).size.width,
      ),
      child: PageView.builder(
        itemCount: imagePaths.length,
        controller: context.watch<PageController>(),
        physics: isProductDetailPage ? null : const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          context.read<ProductDetailPageViewModel>().imageIndex = index;
        },
        itemBuilder: (context, index) {
          final image = AppCachedNetworkImage(
            imageUrl: imagePaths[index],
            height: height,
            fit: BoxFit.contain,
            errorBuilder: (_, __, ___) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: AppImageNotFound(),
            ),
          );
          if (isProductDetailPage) {
            return GestureDetector(
              child: image,
              onTap: () async {
                final analytics = GetIt.I<AnalyticsManager>();
                analytics.sendEvent(eventType: AnalyticsEventType.clickProductDetailImage);

                final controller = context.read<PageController>();
                final viewModel = context.read<ProductDetailPageViewModel>();
                await Navigator.of(context, rootNavigator: true).push(ProductImageExpansionModal.route(viewModel));
                controller.jumpToPage(viewModel.imageIndex);
              },
            );
          } else {
            return ChangeNotifierProvider(
              create: (_) => TransformationController(),
              builder: (context, _) {
                return GestureDetector(
                  onDoubleTap: () {
                    // DoubleTapイベントハンドラを設定しておかなければ、DoubleTapDownをキャッチすることができない
                  },
                  onDoubleTapDown: (details) {
                    final controller = context.read<TransformationController>();
                    final scale = controller.value.getMaxScaleOnAxis();
                    if ((scale - 1.0) <= 1.0e-3) {
                      final offset = details.localPosition;
                      logger.info(offset);
                      controller.value = Matrix4.translationValues(-2 * offset.dx, -2 * offset.dy, 0).scaled(3.0);
                    } else {
                      controller.value = Matrix4.identity();
                    }
                  },
                  child: InteractiveViewer(
                    minScale: 1,
                    maxScale: 3,
                    transformationController: context.watch<TransformationController>(),
                    onInteractionUpdate: (details) {
                      final scale = context.read<TransformationController>().value.getMaxScaleOnAxis();
                      if (details.pointerCount == 1 && (scale - 1.0) <= 1.0e-3) {
                        final pageController = context.read<PageController>();
                        final offset = pageController.offset - details.focalPointDelta.dx;
                        pageController.jumpTo(offset);
                      }
                    },
                    onInteractionEnd: (details) {
                      logger.info(details);
                      final transformationController = context.read<TransformationController>();
                      final scale = transformationController.value.getMaxScaleOnAxis();
                      if (!((scale - 1.0) <= 1.0e-3)) {
                        return;
                      }
                      // If the scale ended with enough velocity, animate inertial movement.
                      if (details.velocity.pixelsPerSecond.distance < kMinFlingVelocity) {
                        return;
                      }

                      final pageController = context.read<PageController>();
                      final currentPage = pageController.page;
                      logger.info('currentPage: $currentPage');
                      if (currentPage == null) {
                        return;
                      }
                      final position = pageController.position as ScrollPositionWithSingleContext;
                      logger.info('position: $position');
                      final velocity = details.velocity;
                      logger.info('velocity: $velocity');
                      final dx = velocity.pixelsPerSecond.dx * 0.05;
                      logger.info('dx: $dx');

                      final offset = pageController.offset - dx;
                      logger.info('offset: $offset');
                      var nextPage = _getPageFromPixels(
                        position: position,
                        pixels: offset,
                        viewportDimension: position.viewportDimension,
                        viewportFraction: pageController.viewportFraction,
                      );

                      final distance = nextPage - currentPage;
                      logger.info('distance: $distance');

                      if (distance.abs() > 1) {
                        nextPage = currentPage + distance.sign * 1;
                      }
                      logger.info('nextPage: $nextPage');
                      if (nextPage < 0 || nextPage >= imagePaths.length) {
                        return;
                      }
                      pageController.jumpTo(
                        _getPixelsFromPage(
                          page: nextPage,
                          viewportDimension: position.viewportDimension,
                          viewportFraction: pageController.viewportFraction,
                        ),
                      );
                    },
                    child: image,
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }

  double _getPageFromPixels({
    required ScrollPosition position,
    required double pixels,
    required double viewportDimension,
    required double viewportFraction,
  }) {
    final initialPageOffset = _getInitialPageOffset(viewportDimension, viewportFraction);
    final double actual = max(0.0, pixels - initialPageOffset) / (viewportDimension * viewportFraction);
    final double round = actual.roundToDouble();
    if ((actual - round).abs() < precisionErrorTolerance) {
      return round;
    }
    return actual;
  }

  double _getInitialPageOffset(double viewportDimension, double viewportFraction) {
    return max(0.0, viewportDimension * (viewportFraction - 1) / 2);
  }

  double _getPixelsFromPage({
    required double page,
    required double viewportDimension,
    required double viewportFraction,
  }) {
    return page * viewportDimension * viewportFraction + _getInitialPageOffset(viewportDimension, viewportFraction);
  }
}

// 画像スライダー用Indicator
class _ImageSlideIndicator extends StatelessWidget {
  const _ImageSlideIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSliderIndicator(
      itemCount: context.select((ProductDetailPageState state) => state.productDetailModel.imagePaths.length),
      currentIndex: context.select((ProductDetailPageState state) => state.imageIndex),
      onTap: (index) {
        context.read<ProductDetailPageViewModel>().imageIndex = index;
        context.read<PageController>().animateToPage(
              index,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
      },
    );
  }
}

// サムネイル画像拡大可能モーダル
class ProductImageExpansionModal extends StatelessWidget {
  const ProductImageExpansionModal({Key? key, required this.viewModel}) : super(key: key);

  static Route<Object?> route(ProductDetailPageViewModel viewModel) => MaterialPageRoute(
        builder: (_) => ProductImageExpansionModal(viewModel: viewModel),
        settings: const RouteSettings(name: name),
      );

  static const name = 'ProductImageExpansionModal';

  final ProductDetailPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<ProductDetailPageViewModel, ProductDetailPageState>.value(
      value: viewModel,
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('商品画像'),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Assets.icons.closeModal.svg(),
              ),
            ],
          ),
          body: const ProductImages(isProductDetailPage: false),
        );
      },
    );
  }
}
