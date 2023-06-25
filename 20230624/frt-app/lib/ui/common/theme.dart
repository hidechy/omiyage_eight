import 'package:flutter/material.dart';

import 'app_colors.dart';

final themeData = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    centerTitle: true,
    iconTheme: IconThemeData(color: AppColors.iconTheme),
    titleTextStyle: TextStyle(
      color: AppColors.black2,
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
    backgroundColor: AppColors.white,
    elevation: 1,
  ),
  primaryColor: AppColors.white,

  /// 戻るボタンの色がprimaryColorに依存するので、primaryIconThemeでiconのTheme設定しておく
  primaryIconTheme: const IconThemeData(color: AppColors.iconTheme),
  primaryTextTheme: const TextTheme(
    /// AppBarやdialogなどのtitle用
    titleLarge: TextStyle(color: AppColors.black2),
  ),
  scaffoldBackgroundColor: AppColors.white,
  dividerTheme: const DividerThemeData(
    color: AppColors.inactive,
    thickness: 1,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 0,
    backgroundColor: AppColors.purchaseFlow,
  ),
  tabBarTheme: const TabBarTheme(
    indicator: BoxDecoration(color: AppColors.main),
    labelColor: AppColors.white,
    labelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    unselectedLabelColor: AppColors.gray1,
    unselectedLabelStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
  ),
  hintColor: AppColors.inactive,
  inputDecorationTheme: const InputDecorationTheme(
    contentPadding: EdgeInsets.symmetric(vertical: 12),
    hintStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w300,
      height: 22 / 16,
    ),
    fillColor: AppColors.white2,
    filled: true,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        width: 1,
        color: AppColors.inactive,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        width: 1,
        color: AppColors.inactive,
      ),
    ),
    constraints: BoxConstraints.tightForFinite(height: 40),
  ),
);
