import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../util/logger.dart';

class AppMediaQuery extends StatelessWidget {
  const AppMediaQuery({
    Key? key,
    Widget? child,
  })  : _child = child,
        super(key: key);

  final Widget? _child;

  @override
  Widget build(BuildContext context) {
    logger.info('Build MediaQuery Provider');
    return Provider.value(
      value: MediaQuery.of(context),
      child: _child,
    );
  }

  static SelectMediaQueryData of(BuildContext context) => SelectMediaQueryData(context);
  static MediaQueryData read(BuildContext context) => context.read<MediaQueryData>();
}

class SelectMediaQueryData extends MediaQueryData {
  const SelectMediaQueryData(this.context);

  final BuildContext context;

  @override
  SelectMediaQuerySize get size => SelectMediaQuerySize(context);
  @override
  SelectEdgeInsets get padding => SelectEdgeInsets(context, 'padding');
  @override
  SelectEdgeInsets get viewInsets => SelectEdgeInsets(context, 'viewInsets');
  @override
  SelectEdgeInsets get systemGestureInsets => SelectEdgeInsets(context, 'systemGestureInsets');
  @override
  SelectEdgeInsets get viewPadding => SelectEdgeInsets(context, 'viewPadding');
  @override
  Orientation get orientation => SelectMediaQuerySize(context)
      .custom((size) => size.width > size.height ? Orientation.landscape : Orientation.portrait);

  // 端末によってサイズを変更させる場合に使用する
  double get widthRate => SelectMediaQuerySize(context).width / 390;

  double get headerHeight {
    final scaffold = Scaffold.maybeOf(context);
    final height = scaffold?.appBarMaxHeight ?? 0;
    final margin = padding.top;
    return height + margin;
  }
}

typedef SizeSelector<T> = T Function(Size size);

class SelectMediaQuerySize extends Size {
  const SelectMediaQuerySize(this.context) : super(0, 0);

  final BuildContext context;

  T _select<T>(SizeSelector<T> valueSelector) => context.select<MediaQueryData, T>((data) => valueSelector(data.size));

  @override
  double get width => _select((size) => size.width);
  @override
  double get height => _select((size) => size.height);
  @override
  double get aspectRatio => _select((size) => size.aspectRatio);
  @override
  bool get isEmpty => _select((size) => size.isEmpty);

  T custom<T>(SizeSelector<T> valueSelector) => _select(valueSelector);

  @override
  bool operator ==(Object other) => _select((size) => size == other);

  @override
  int get hashCode => _select((size) => size.hashCode);

  @override
  String toString() => _select((size) => size.toString());
}

typedef EdgeInsetsSelector<T> = T Function(EdgeInsets edge);

class SelectEdgeInsets extends EdgeInsets {
  const SelectEdgeInsets(this.context, this._name) : super.only();

  final BuildContext context;
  final String _name;

  T _select<T>(EdgeInsetsSelector<T> valueSelector) => context.select<MediaQueryData, T>((data) {
        switch (_name) {
          case 'padding':
            return valueSelector(data.padding);
          case 'viewInsets':
            return valueSelector(data.viewInsets);
          case 'systemGestureInsets':
            return valueSelector(data.systemGestureInsets);
          case 'viewPadding':
            return valueSelector(data.viewPadding);
          default:
            throw StateError('間違っている');
        }
      });

  @override
  double get left => _select((edge) => edge.left);
  @override
  double get top => _select((edge) => edge.top);
  @override
  double get right => _select((edge) => edge.right);
  @override
  double get bottom => _select((edge) => edge.bottom);

  T custom<T>(EdgeInsetsSelector<T> valueSelector) => _select(valueSelector);

  @override
  bool operator ==(Object other) => _select((edge) => edge == other);
  @override
  int get hashCode => _select((edge) => edge.hashCode);

  @override
  String toString() => _select((edge) => edge.toString());
}
