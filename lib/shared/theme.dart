import 'package:flutter/material.dart';

class ProductColors {
  static const int _primaryColor = 0xFFFFE600;
  static const int _secondaryColor = 0xFF3483FA;
  static const primaryColor = MaterialColor(_primaryColor, {
    50: Color(0xFFFFF170),
    100: Color(0xFFFFEF5C),
    200: Color(0xFFFFED47),
    300: Color(0xFFFFEB33),
    400: Color(0xFFFFE91F),
    500: Color(_primaryColor),
    600: Color(0xFFF5DC00),
    700: Color(0xFFE0CA00),
    800: Color(0xFFCCB800),
    900: Color(0xFFB8A500),
  });

  static const secondaryColor = MaterialColor(_secondaryColor, {
    50: Color(0xFFE3EDFB),
    100: Color(0xFF9CC2FC),
    200: Color(0xFF74AAFB),
    300: Color(0xFF609EFB),
    400: Color(0xFF4C92FA),
    500: Color(_secondaryColor),
    600: Color(0xFF2479F9),
    700: Color(0xFF106DF9),
    800: Color(0xFF0663EF),
    900: Color(0xFF065BDB),
  });
  static const backgroundColor = Colors.white;
}

final ligthTheme = ThemeData(
  scaffoldBackgroundColor: ProductColors.backgroundColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: ProductColors.primaryColor).copyWith(
    primary: ProductColors.primaryColor,
    secondary: ProductColors.secondaryColor,
    tertiary: const Color(0xFF04A54F),
  ),
);
