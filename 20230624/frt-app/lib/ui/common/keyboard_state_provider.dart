import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../util/logger.dart';
import '../state/keyboard_state.dart';

class KeyboardStateProvider extends StatelessWidget {
  const KeyboardStateProvider({
    Key? key,
    Widget? child,
    TransitionBuilder? builder,
    this.onFocusChanged,
    this.onKeyboardStateChanged,
  })  : _child = child,
        _builder = builder,
        super(key: key);

  final Widget? _child;
  final TransitionBuilder? _builder;
  final ValueChanged<bool>? onFocusChanged;
  final void Function(bool visible, bool hasFocus)? onKeyboardStateChanged;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FocusNode()),
        ProxyProvider2<MediaQueryData, FocusNode, KeyboardState>(
          lazy: false,
          create: (_) => const KeyboardState(),
          update: (_, mediaQuery, focusNode, previous) {
            final hasFocus = focusNode.hasFocus;
            final visible = mediaQuery.viewInsets.bottom > 0;
            logger.info(
              'Update visible: ${previous?.visible} to $visible, '
              'hasFocus: ${previous?.hasFocus} to $hasFocus.',
            );

            final current = KeyboardState(visible: visible, hasFocus: hasFocus);

            if (previous!.visible != visible && onKeyboardStateChanged != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                onKeyboardStateChanged!(visible, hasFocus);
              });
            }

            if (previous.hasFocus != hasFocus && onFocusChanged != null) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                onFocusChanged!(hasFocus);
              });
            }
            return current;
          },
        ),
      ],
      child: _child,
      builder: _builder,
    );
  }

  static FocusNode watchFocus(BuildContext context) => context.watch<FocusNode>();
}
