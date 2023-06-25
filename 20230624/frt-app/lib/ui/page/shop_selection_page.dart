import 'package:flutter/material.dart';

import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

import '../../enum/screen_name.dart';
import '../../enum/search_history_type.dart';
import '../../gen/assets.gen.dart';
import '../../util/logger.dart';
import '../common/app_buttons.dart';
import '../common/app_colors.dart';
import '../common/app_loading.dart';
import '../common/app_media_query.dart';
import '../common/search_field.dart';
import '../state/delivery_datetime_page_state.dart';
import '../state/focus_state.dart';
import '../state/shop_selection_page_state.dart';
import '../view_model/focus_view_model.dart';
import '../view_model/shop_selection_page_view_model.dart';

class ShopSelectionPageArguments {
  ShopSelectionPageArguments({
    this.initialLatitude,
    this.initialLongitude,
  });

  final double? initialLatitude;
  final double? initialLongitude;
}

/// 店舗選択ページ
class ShopSelectionPage extends StatelessWidget {
  const ShopSelectionPage({Key? key}) : super(key: key);

  static Route<SelectedShopInfo> route({
    double? initialLatitude,
    double? initialLongitude,
  }) =>
      MaterialPageRoute<SelectedShopInfo>(
        builder: (_) => Provider.value(
          value: ShopSelectionPageArguments(
            initialLatitude: initialLatitude,
            initialLongitude: initialLongitude,
          ),
          child: const ShopSelectionPage(),
        ),
        settings: RouteSettings(name: name),
      );

  static final name = ScreenName.shopSelectionPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build ShopSelectionPage');
    final initialLatitude = context.select((ShopSelectionPageArguments value) => value.initialLatitude);
    final initialLongitude = context.select((ShopSelectionPageArguments value) => value.initialLongitude);
    return StateNotifierProvider<ShopSelectionPageViewModel, ShopSelectionPageState>(
      create: (_) => ShopSelectionPageViewModel(latitude: initialLatitude, longitude: initialLongitude),
      builder: (context, _) {
        return PrimaryScrollController(
          controller: context.read<ShopSelectionPageViewModel>().scrollController,
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text(
                '受け取り場所を選択',
              ),
              automaticallyImplyLeading: false,
              actions: [
                IconButton(
                  padding: const EdgeInsets.only(right: 21),
                  icon: Assets.icons.clear.svg(),
                  iconSize: 18.0,
                  color: AppColors.gray2,
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ),
            body: const _BuildChild(),
            bottomNavigationBar: const _Footer(),
          ),
        );
      },
    );
  }
}

class _BuildChild extends StatelessWidget {
  const _BuildChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<FocusViewModel, FocusState>(
      create: (_) => FocusViewModel(),
      builder: (context, _) {
        return LoadingFullScreen(
          future: () async {
            await context.read<ShopSelectionPageViewModel>().load();
            return true;
          },
          content: OrientationBuilder(
            builder: (context, orientation) {
              return Column(
                children: [
                  const _AnimatedSwitchMap(),
                  Container(
                    color: AppColors.warning2,
                    margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                      child: Text(
                        '受け取り場所を変更した場合はカートがリセットされますのでご注意ください。',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppColors.warning1,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          height: 16 / 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                    child: SearchField(
                      historyType: SearchHistoryType.address,
                      hintText: '店舗名・住所から探す',
                      onSubmitted: (String keyword) async {
                        await context.read<ShopSelectionPageViewModel>().search(keyword);
                      },
                    ),
                  ),
                  const _AnimatedSwitchShopList(),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _AnimatedSwitchMap extends StatelessWidget {
  const _AnimatedSwitchMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFocused = context.select((FocusState state) => state.isFocused);
    return Offstage(
      offstage: isFocused,
      child: const _Map(),
    );
  }
}

class _AnimatedSwitchShopList extends StatelessWidget {
  const _AnimatedSwitchShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFocused = context.select((FocusState state) => state.isFocused);
    return Visibility(
      visible: !isFocused,
      child: const _ShopList(),
    );
  }
}

class _ShopList extends StatelessWidget {
  const _ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Visibility(
        visible: context.select((ShopSelectionPageState state) => state.visibleShops.isNotEmpty),
        child: Column(
          children: const [
            SizedBox(height: 24.0),
            _VisibleShops(),
          ],
        ),
        replacement: const Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
            '''受け取り場所が見つかりません。
受け取り場所を検索するか、
地図内をスクロールしてください。''',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.gray2,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ),
    );
  }
}

class _VisibleShops extends StatelessWidget {
  const _VisibleShops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final length = context.select((ShopSelectionPageState state) => state.visibleShops.length);
    return Expanded(
      child: ListView.builder(
        controller: context.read<ShopSelectionPageViewModel>().scrollController,
        itemCount: length,
        itemBuilder: (_, int index) {
          return _ItemBuilder(index: index);
        },
      ),
    );
  }
}

class _ItemBuilder extends StatelessWidget {
  const _ItemBuilder({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final selectedMarkerId = context.select((ShopSelectionPageState state) => state.selectedMarkerId);
    final shop = context
        .select((ShopSelectionPageState state) => index < state.visibleShops.length ? state.visibleShops[index] : null);
    if (shop == null) {
      return const SizedBox.shrink();
    }
    return InkWell(
      onTap: () async => await context.read<ShopSelectionPageViewModel>().onTap(index),
      child: Container(
        margin: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
        decoration: BoxDecoration(
          color: (selectedMarkerId == shop.locationId) ? AppColors.selectedShop : null,
          border: Border.all(color: AppColors.inactive),
          borderRadius: BorderRadius.circular(10),
        ),
        constraints: const BoxConstraints(minHeight: 118),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, bottom: 20, left: 16, right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shop.receiptPointName,
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  shop.receiptPointAddress,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: _IconsGenerate(index: index),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconsGenerate extends StatelessWidget {
  const _IconsGenerate({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    final shop = context
        .select((ShopSelectionPageState state) => index < state.visibleShops.length ? state.visibleShops[index] : null);
    if (shop == null) {
      return const SizedBox.shrink();
    }
    return Wrap(
      direction: Axis.vertical,
      spacing: 12,
      children: [
        if (shop.hasShopReceipt) const _Icons(typeName: '店舗受け取り'),
        if (shop.hasLockerReceipt)
          SizedBox(
            width: AppMediaQuery.of(context).size.width * 0.82,
            child: const _Icons(typeName: '7&iロッカー受取 / 7&I受取BOX / マンションロッカー / レジカウンター受取'),
          ),
      ],
    );
  }
}

class _Icons extends StatelessWidget {
  const _Icons({Key? key, required this.typeName}) : super(key: key);

  final String typeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
      decoration: BoxDecoration(
        color: AppColors.background2,
        border: Border.all(
          color: AppColors.gray2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        typeName,
        textAlign: TextAlign.start,
        style: const TextStyle(
          color: AppColors.gray1,
          fontSize: 11,
          fontWeight: FontWeight.w300,
          height: 15 / 11,
        ),
      ),
    );
  }
}

class _Map extends StatelessWidget {
  const _Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = AppMediaQuery.of(context).size.width;
    var height = AppMediaQuery.of(context).size.height * 0.29;
    if (AppMediaQuery.of(context).orientation == Orientation.landscape) {
      height = AppMediaQuery.of(context).size.height * 0.1;
    }
    return FutureProvider.value(
      initialData: const <Marker>{},
      value: context.read<ShopSelectionPageViewModel>().createMarkers(
            context,
            context.select((ShopSelectionPageState state) => state.visibleShops),
          ),
      builder: (context, _) {
        return SizedBox(
          width: width,
          height: height,
          child: GoogleMap(
            key: context.read<ShopSelectionPageViewModel>().mapKey,
            initialCameraPosition: CameraPosition(
              target: context.select((ShopSelectionPageState state) => state.currentLatLng),
              zoom: 15,
            ),
            compassEnabled: false,
            mapToolbarEnabled: false,
            mapType: MapType.normal,
            rotateGesturesEnabled: false,
            scrollGesturesEnabled: true,
            zoomControlsEnabled: false,
            tiltGesturesEnabled: false,
            myLocationButtonEnabled: false,
            buildingsEnabled: false,
            markers: context.watch<Set<Marker>>(),
            onMapCreated: (GoogleMapController controller) {
              context.read<ShopSelectionPageViewModel>().onMapCreated(controller);
            },
            onCameraIdle: () => context.read<ShopSelectionPageViewModel>().updateVisibleShops(),
          ),
        );
      },
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedMarkerId = context.select((ShopSelectionPageState value) => value.selectedMarkerId);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4.0),
                  child: Image.asset(
                    Assets.images.iyLogo.path,
                    width: 18,
                    height: 18,
                  ),
                ),
                const Text(
                  '店舗 / 店舗・ロッカー受け取り',
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontSize: 12,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.5, right: 4.5),
                  child: Assets.icons.locker.svg(
                    colorFilter: const ColorFilter.mode(AppColors.gray2, BlendMode.srcIn),
                    width: 15,
                    height: 15,
                  ),
                ),
                const Text(
                  'ロッカー受け取り',
                  style: TextStyle(
                    color: AppColors.gray1,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
              child: BlueElevatedButton(
                child: const Text('受け取り場所を変更'),
                widthFactor: 0.745,
                onPressed: selectedMarkerId.isNotEmpty
                    ? () {
                        Navigator.of(context).pop(
                          context.read<ShopSelectionPageViewModel>().setSelectedShopInfo(),
                        );
                      }
                    : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
