import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../enum/screen_name.dart';
import '../../../util/logger.dart';
import '../../common/cart_button.dart';
import '../../common/total_price.dart';
import 'favorites_tab_page.dart';

/// お気に入りページのトップ
class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  static Route<Object?> route([Object? arguments]) => MaterialPageRoute<Object?>(
        builder: (_) => const FavoritesPage(),
        settings: RouteSettings(name: name, arguments: arguments),
      );

  static final name = ScreenName.favoritesPage.value;

  @override
  Widget build(BuildContext context) {
    logger.info('Build FavoritesPage');
    return Provider(
      create: (_) => GlobalKey<CartButtonState>(),
      builder: (context, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('お気に入り'),
          ),
          body: Stack(
            children: const [
              FavoritesTabPage(),
              Align(
                alignment: Alignment.bottomCenter,
                child: TotalPrice(),
              )
            ],
          ),
          floatingActionButton: CartButton(
            key: context.watch<GlobalKey<CartButtonState>>(),
          ),
        );
      },
    );
  }
}
