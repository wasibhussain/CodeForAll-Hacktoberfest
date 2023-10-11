import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutriwest_app/utils/theme_constants/size_manager.dart';
import 'package:nutriwest_app/utils/theme_constants/style_manager.dart';

import 'color_manager.dart';

ThemeData getAppTheme() => ThemeData(
    primaryColor: ColorManager.primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: ColorManager.primary,
      secondary: ColorManager.secondary,
    ),
    scaffoldBackgroundColor: ColorManager.offWhite,
    cardTheme: CardTheme(
      clipBehavior: Clip.hardEdge,
      color: ColorManager.white,
      margin: EdgeInsets.zero,
      elevation: 4,
      shadowColor: const Color.fromARGB(15, 0, 0, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
    iconTheme:
        IconThemeData(size: SizeManager.big.sp, color: ColorManager.secondary),
    textTheme: TextTheme(
        displaySmall: getRegularStyle(
            fontSize: SizeManager.smallest.sp, color: ColorManager.white),
        bodySmall: getRegularStyle(
            fontSize: SizeManager.small.sp, color: ColorManager.secondary),
        bodyMedium: getRegularStyle(
            fontSize: SizeManager.medium.sp, color: ColorManager.disabled),
        headlineSmall: getBoldStyle(
            color: ColorManager.required, fontSize: SizeManager.small.sp),
        labelSmall: getBoldStyle(
            color: ColorManager.white, fontSize: SizeManager.smaller.sp),
        labelMedium: getBoldStyle(
            color: ColorManager.white, fontSize: SizeManager.medium.sp),
        titleMedium: getBoldStyle(
            color: ColorManager.darkSecondary,
            fontSize: SizeManager.biggest.sp),
        titleLarge: getBoldStyle(
            color: ColorManager.white, fontSize: SizeManager.bigger.sp),
        headlineMedium: getExtraBoldStyle(
            color: ColorManager.white, fontSize: SizeManager.biggest.sp),
        headlineLarge: getBoldStyle(
            color: ColorManager.primary, fontSize: SizeManager.large.sp)));
