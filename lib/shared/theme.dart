import 'package:flutter/material.dart';

class ProductColors {
  static const int _primaryColor = 0xFFFFE600;
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
  static const backgroundColor = Colors.white;
}

final ligthTheme = ThemeData(
  scaffoldBackgroundColor: ProductColors.backgroundColor,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: ProductColors.primaryColor).copyWith(
    primary: ProductColors.primaryColor,
    secondary: const Color(0xFF3483FA),
    tertiary: const Color(0xFF04A54F)
  )
);