import 'package:flutter/material.dart';

import 'package:flutter_html/flutter_html.dart';

import '../../util/launcher.dart';
import '../../util/logger.dart';
import 'app_colors.dart';

class HtmlParser extends StatelessWidget {
  const HtmlParser({Key? key, required this.value, this.fontStyle}) : super(key: key);

  final String value;
  final TextStyle? fontStyle;

  @override
  Widget build(BuildContext context) {
    return Html(
      data: '<div>$value</div>',
      onLinkTap: (String? url, RenderContext _context, Map<String, String> attributes, _) {
        logger.info(url);
        final parseUrl = Uri.tryParse(url ?? '');
        if (parseUrl == null) {
          return;
        }

        final allow = RegExp(r'^' + RegExp.escape(parseUrl.origin) + r'.*');
        browse(parseUrl, allow: {allow});
      },
      style: {
        'body': Style(
          margin: Margins.zero,
          padding: EdgeInsets.zero,
          fontSize: FontSize(fontStyle?.fontSize ?? 14.0),
          color: fontStyle?.color ?? AppColors.black2,
          lineHeight: LineHeight(fontStyle?.height ?? 19 / 14, units: '%'),
          fontWeight: fontStyle?.fontWeight ?? FontWeight.w300,
          whiteSpace: WhiteSpace.pre,
        ),
        'a': Style(
          color: AppColors.main,
        ),
        'b': Style(
          fontWeight: FontWeight.w600,
        ),
        'strong': Style(
          fontWeight: FontWeight.w600,
        ),
      },
    );
  }
}
