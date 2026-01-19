import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/core/theme/topography.dart';
import '../constants/appColors.dart';
import '../constants/appSizes.dart';

class AppTheme {
  AppTheme._();

  /// ==============================
  ///        LIGHT THEME
  /// ==============================
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    fontFamily: AppTextStyles.fontFamily,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundLight,
    cardColor: AppColors.surfaceLight,
    dividerColor: AppColors.dividerLight,

    //ColorScheme Light Mode
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      // background: AppColors.backgroundLight,
      surface: AppColors.surfaceLight,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      // onBackground: AppColors.textPrimaryLight,
      onSurface: AppColors.textPrimaryLight,
    ),

    //AppBar Theme Light Mode
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundLight,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.textPrimaryLight),
      // titleTextStyle: AppTextStyles.titleMedium.copyWith(
      //   color: AppColors.textPrimaryLight,
      // ),
    ),

    //Text Theme Light Mode
    textTheme: TextTheme(
      displayLarge: AppTextStyles.headline1.copyWith(color: AppColors.textPrimaryLight),
      displayMedium: AppTextStyles.headline2.copyWith(color: AppColors.textPrimaryLight),
      bodyLarge: AppTextStyles.body1.copyWith(color: AppColors.textPrimaryLight),
      bodyMedium: AppTextStyles.body2.copyWith(color: AppColors.textSecondaryLight),
      labelLarge: AppTextStyles.button,
    ),

    //Input Decoration Light theme
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   fillColor: AppColors.inputFillLight,
    //   hintStyle: TextStyle(color: AppColors.textHintLight),
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.inputBorderLight),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.primary),
    //   ),
    // ),

    //ElevatedButton Light Mode

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.medium),
        ),
      ),
    ),
  );

  /// ==============================
  ///        DARK THEME
  /// ==============================
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
    fontFamily: AppTextStyles.fontFamily,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.backgroundDark,
    cardColor: AppColors.surfaceDark,
    dividerColor: AppColors.dividerDark,

    //ColorScheme Dark mode
    colorScheme: ColorScheme.dark(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      // background: AppColors.backgroundDark,
      surface: AppColors.surfaceDark,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      // onBackground: AppColors.textPrimaryDark,
      onSurface: AppColors.textPrimaryDark,
    ),

    //AppBar Theme Dark Mode
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.textPrimaryDark),
      // titleTextStyle: AppTextStyles.titleMedium.copyWith(
      //   color: AppColors.textPrimaryDark,
      // ),
    ),

    //TextTheme DarkMode
    textTheme: TextTheme(
      displayLarge: AppTextStyles.headline1,
      displayMedium: AppTextStyles.headline2,
      bodyLarge: AppTextStyles.body1,
      bodyMedium: AppTextStyles.body2,
      labelLarge: AppTextStyles.button,
      titleMedium: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textSecondaryLight,
      )
    ),


    //InputDecoration Dark Theme
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   fillColor: AppColors.inputFillDark,
    //   hintStyle: TextStyle(color: AppColors.textHintDark),
    //   border: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.inputBorderDark),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(AppRadius.medium),
    //     borderSide: BorderSide(color: AppColors.primary),
    //   ),
    // ),

    //ElevatedButton Dark Theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        textStyle: AppTextStyles.button,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.small),
        ),
      ),
    ),
  );
}
