import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import '../../enum/analytics_event_type.dart';
import '../../enum/event_parameter_type.dart';
import '../../util/analytics_manager.dart';
import 'app_colors.dart';

/// widthを有限の値に設定した場合、親widgetからの相対サイズにはせず与えられたwidthにする。
class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    this.borderRadius = 4,
    this.borderWidth = 2,
    double? minHeight,
    this.width = double.infinity,
    this.contentPadding,
    required this.onPressed,
    required this.child,
    this.textColor,
    this.disableTextColor = AppColors.white,
    this.borderColor = AppColors.black,
    this.enableColor = AppColors.white,
    this.disableColor = AppColors.inactive,
    this.widthFactor,
    this.alignment = Alignment.center,
    this.analyticsEventType,
    this.eventParameters,
  })  : minHeight = minHeight ?? 24,
        fontSize = fontSize ?? 18,
        fontWeight = fontWeight ?? FontWeight.w600,
        super(key: key);

  final double fontSize;
  final FontWeight fontWeight;
  final double borderRadius;
  final double borderWidth;
  final double minHeight;
  final double width;
  final EdgeInsetsGeometry? contentPadding;
  final VoidCallback? onPressed;
  final Widget child;
  final Color? textColor;
  final Color disableTextColor;
  final Color borderColor;
  final Color enableColor;
  final Color disableColor;
  final double? widthFactor;
  final AlignmentGeometry alignment;
  final AnalyticsEventType? analyticsEventType;
  final Map<EventParameterType, Object>? eventParameters;
  @override
  Widget build(BuildContext context) {
    final button = SizedBox(
      width: width,
      child: OutlinedButton(
        child: child,
        onPressed: (onPressed == null)
            ? null
            : () {
                if (analyticsEventType != null) {
                  final analytics = GetIt.I<AnalyticsManager>();
                  analytics.sendEvent(
                    eventType: analyticsEventType!,
                    parameters: eventParameters,
                  );
                }
                onPressed!();
              },
        style: OutlinedButton.styleFrom(
          // 文字色
          foregroundColor: textColor,
          padding: contentPadding ?? const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          side: BorderSide(
            width: borderWidth,
            color: borderColor,
          ),
          backgroundColor: AppColors.white,
          minimumSize: Size.fromHeight(minHeight),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ).copyWith(
          side: MaterialStateProperty.resolveWith<BorderSide>(
            (states) => states.contains(MaterialState.disabled)
                ? BorderSide(
                    width: 0,
                    color: borderColor,
                  )
                : BorderSide(
                    width: borderWidth,
                    color: borderColor,
                  ),
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) => states.contains(MaterialState.disabled) ? disableTextColor : textColor ?? AppColors.gray1,
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) => states.contains(MaterialState.disabled) ? disableColor : enableColor,
          ),
        ),
      ),
    );
    return widthFactor == null
        ? button
        : FractionallySizedBox(
            widthFactor: widthFactor,
            alignment: alignment,
            child: button,
          );
  }
}

/// widthを有限の値に設定した場合、親widgetからの相対サイズにはせず与えられたwidthにする。
class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    this.borderRadius = 4,
    double? minHeight,
    this.width = double.infinity,
    this.contentPadding,
    required this.onPressed,
    required this.child,
    this.textColor,
    this.enableColor = AppColors.main,
    this.disableColor = AppColors.inactive,
    this.widthFactor,
    this.alignment = Alignment.center,
    this.analyticsEventType,
    this.eventParameters,
  })  : minHeight = minHeight ?? 24,
        fontSize = fontSize ?? 18,
        fontWeight = fontWeight ?? FontWeight.w600,
        super(key: key);

  final double fontSize;
  final FontWeight fontWeight;
  final double borderRadius;
  final double width;
  final double minHeight;
  final EdgeInsetsGeometry? contentPadding;
  final VoidCallback? onPressed;
  final Widget child;
  final Color? textColor;
  final Color enableColor;
  final Color disableColor;
  final double? widthFactor;
  final AlignmentGeometry alignment;
  final AnalyticsEventType? analyticsEventType;
  final Map<EventParameterType, Object>? eventParameters;

  @override
  Widget build(BuildContext context) {
    final button = SizedBox(
      width: width,
      child: ElevatedButton(
        child: child,
        onPressed: (onPressed == null)
            ? null
            : () {
                if (analyticsEventType != null) {
                  final analytics = GetIt.I<AnalyticsManager>();
                  analytics.sendEvent(
                    eventType: analyticsEventType!,
                    parameters: eventParameters,
                  );
                }
                onPressed!();
              },
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 0,
          padding: contentPadding ?? const EdgeInsets.symmetric(vertical: 3, horizontal: 12),
          minimumSize: Size.fromHeight(minHeight),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ).copyWith(
          foregroundColor: MaterialStateProperty.all(textColor),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) => states.contains(MaterialState.disabled) ? disableColor : enableColor,
          ),
        ),
      ),
    );
    return widthFactor == null
        ? button
        : FractionallySizedBox(
            widthFactor: widthFactor,
            alignment: alignment,
            child: button,
          );
  }
}

class GreyOutlinedButton extends AppOutlinedButton {
  const GreyOutlinedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    double borderRadius = 4,
    double borderWidth = 2,
    double? minHeight,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : super(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          minHeight: minHeight,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          textColor: AppColors.gray1,
          disableTextColor: AppColors.white,
          borderColor: AppColors.gray2,
          enableColor: AppColors.white,
          disableColor: AppColors.inactive,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const GreyOutlinedButton.large({
    Key? key,
    double? fontSize,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: fontSize,
          borderRadius: 4,
          borderWidth: 2,
          minHeight: 48,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const GreyOutlinedButton.medium({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 14,
          borderRadius: 3,
          borderWidth: 2,
          minHeight: 36,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  GreyOutlinedButton.small({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    required VoidCallback? onPressed,
    required Widget child,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 12,
          fontWeight: FontWeight.w300,
          borderRadius: 3,
          borderWidth: 1,
          minHeight: 24,
          width: width == double.infinity && child is Text
              ? (child.data?.length ?? 0) * 12 + contentPadding.horizontal
              : width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );
}

class RedOutlinedButton extends AppOutlinedButton {
  const RedOutlinedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    double borderRadius = 4,
    double borderWidth = 2,
    double? minHeight,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : super(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          minHeight: minHeight,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          textColor: AppColors.warning1,
          borderColor: AppColors.warning1,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const RedOutlinedButton.large({
    Key? key,
    double? fontSize,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: fontSize,
          borderRadius: 4,
          borderWidth: 2,
          minHeight: 48,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const RedOutlinedButton.medium({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 14,
          borderRadius: 3,
          borderWidth: 2,
          minHeight: 36,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  RedOutlinedButton.small({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    required VoidCallback? onPressed,
    required Widget child,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 12,
          fontWeight: FontWeight.w300,
          borderRadius: 3,
          borderWidth: 1,
          minHeight: 24,
          width: width == double.infinity && child is Text
              ? (child.data?.length ?? 0) * 12 + contentPadding.horizontal
              : width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );
}

class BlueOutlinedButton extends AppOutlinedButton {
  const BlueOutlinedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    double borderRadius = 4,
    double borderWidth = 2,
    double? minHeight,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : super(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          borderRadius: borderRadius,
          borderWidth: borderWidth,
          minHeight: minHeight,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          textColor: AppColors.main,
          borderColor: AppColors.mainBorder,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const BlueOutlinedButton.large({
    Key? key,
    double? fontSize,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: fontSize,
          borderRadius: 4,
          borderWidth: 2,
          minHeight: 48,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const BlueOutlinedButton.medium({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 14,
          borderRadius: 3,
          borderWidth: 2,
          minHeight: 36,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  BlueOutlinedButton.small({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    required VoidCallback? onPressed,
    required Widget child,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 12,
          fontWeight: FontWeight.w300,
          borderRadius: 3,
          borderWidth: 1,
          minHeight: 24,
          width: width == double.infinity && child is Text
              ? (child.data?.length ?? 0) * 12 + contentPadding.horizontal
              : width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );
}

class BlueElevatedButton extends AppElevatedButton {
  const BlueElevatedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    double borderRadius = 4,
    double? minHeight,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : super(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          borderRadius: borderRadius,
          minHeight: minHeight,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          textColor: AppColors.white,
          enableColor: AppColors.main,
          disableColor: AppColors.inactive,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const BlueElevatedButton.large({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? fontSize,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: fontSize,
          borderRadius: 4,
          minHeight: 48,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const BlueElevatedButton.medium({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 14,
          borderRadius: 3,
          minHeight: 36,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  BlueElevatedButton.small({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    required VoidCallback? onPressed,
    required Widget child,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 12,
          borderRadius: 2,
          minHeight: 24,
          width: width == double.infinity && child is Text
              ? (child.data?.length ?? 0) * 12 + contentPadding.horizontal
              : width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );
}

class OrangeElevatedButton extends AppElevatedButton {
  const OrangeElevatedButton({
    Key? key,
    double? fontSize,
    FontWeight? fontWeight,
    double borderRadius = 4,
    double? minHeight,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : super(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          borderRadius: borderRadius,
          minHeight: minHeight,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          textColor: AppColors.white,
          enableColor: AppColors.purchaseFlow,
          disableColor: AppColors.inactive,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const OrangeElevatedButton.large({
    Key? key,
    double? fontSize,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: fontSize,
          borderRadius: 4,
          minHeight: 48,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const OrangeElevatedButton.medium({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry? contentPadding,
    required VoidCallback? onPressed,
    required Widget child,
    double? widthFactor,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 14,
          borderRadius: 3,
          minHeight: 36,
          width: width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          widthFactor: widthFactor,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  OrangeElevatedButton.small({
    Key? key,
    double width = double.infinity,
    EdgeInsetsGeometry contentPadding = const EdgeInsets.symmetric(horizontal: 16),
    required VoidCallback? onPressed,
    required Widget child,
    AlignmentGeometry alignment = Alignment.center,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 12,
          fontWeight: FontWeight.w300,
          borderRadius: 3,
          minHeight: 24,
          width: width == double.infinity && child is Text
              ? (child.data?.length ?? 0) * 12 + contentPadding.horizontal
              : width,
          contentPadding: contentPadding,
          onPressed: onPressed,
          child: child,
          alignment: alignment,
          analyticsEventType: analyticsEventType,
        );
}

/// widthを有限の値に設定した場合、親widgetからの相対サイズにはせず与えられたwidthにする。
class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    this.fontSize = 18,
    this.fontWeight = FontWeight.w600,
    this.decoration,
    required this.onPressed,
    required this.child,
    this.enableColor = AppColors.main,
    this.disableColor = AppColors.inactive,
    this.analyticsEventType,
    this.eventParameters,
    this.height,
  }) : super(key: key);

  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration? decoration;
  final VoidCallback? onPressed;
  final Widget child;
  final Color enableColor;
  final Color disableColor;
  final AnalyticsEventType? analyticsEventType;
  final Map<EventParameterType, Object>? eventParameters;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: child,
      onPressed: (onPressed == null)
          ? null
          : () {
              if (analyticsEventType != null) {
                final analytics = GetIt.I<AnalyticsManager>();
                analytics.sendEvent(
                  eventType: analyticsEventType!,
                  parameters: eventParameters,
                );
              }
              onPressed!();
            },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration,
          height: height,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ).copyWith(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (states) => states.contains(MaterialState.disabled) ? disableColor : enableColor),
      ),
    );
  }
}

class BlueTextButton extends AppTextButton {
  const BlueTextButton({
    Key? key,
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w600,
    TextDecoration? decoration,
    required VoidCallback? onPressed,
    required Widget child,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
    double? height,
  }) : super(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration,
          onPressed: onPressed,
          child: child,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
          height: height,
        );

  const BlueTextButton.medium({
    Key? key,
    required VoidCallback? onPressed,
    required Widget child,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
  }) : this(
          key: key,
          fontSize: 14,
          onPressed: onPressed,
          child: child,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
        );

  const BlueTextButton.underline({
    Key? key,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w300,
    required VoidCallback? onPressed,
    required Widget child,
    AnalyticsEventType? analyticsEventType,
    Map<EventParameterType, Object>? eventParameters,
    double? height,
  }) : this(
          key: key,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: TextDecoration.underline,
          onPressed: onPressed,
          child: child,
          analyticsEventType: analyticsEventType,
          eventParameters: eventParameters,
          height: height,
        );
}
