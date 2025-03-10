import 'package:flutter/material.dart';

class AppColors {
  static Color primaryColor = Color.fromRGBO(162, 29, 19, 1);
  static Color primaryAccent = Color.fromRGBO(120, 14, 14, 1);
  static Color secondaryColor = Color.fromRGBO(45, 45, 45, 1);
  static Color secondaryAccent = Color.fromRGBO(35, 35, 35, 1);
  static Color titleColor = Color.fromRGBO(200, 200, 200, 1);
  static const Color textColor = Color.fromRGBO(150, 150, 150, 1);
  static Color successColor = Color.fromRGBO(9, 149, 110, 1);
  static Color highlightColor = Color.fromRGBO(212, 172, 13, 1);
}

ThemeData primaryTheme = ThemeData(
    // Color scheme using seedcolor
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
//  scaffold background
    scaffoldBackgroundColor: AppColors.secondaryAccent,

// AppBar Theme
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.secondaryColor,
        foregroundColor: AppColors.textColor,
        centerTitle: true),

    // text theme
    textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.textColor,
          fontSize: 16,
          letterSpacing: 1,
        ),
        headlineMedium: TextStyle(
          color: AppColors.titleColor,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        titleMedium: TextStyle(
          color: AppColors.titleColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        )),

// Card Theme
    cardTheme: CardTheme(
      color: AppColors.secondaryColor,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(),
      shadowColor: Colors.transparent,
      margin: EdgeInsets.only(bottom: 16),
    ),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.secondaryColor.withValues(alpha: 0.5),
        border: InputBorder.none,
        labelStyle: TextStyle(color: AppColors.textColor),
        prefixIconColor: AppColors.textColor),

    //dialog box theme
    dialogTheme: DialogTheme(
      backgroundColor: AppColors.secondaryAccent,
      surfaceTintColor: Colors.transparent,
    ));

// Input Decoration Theme
