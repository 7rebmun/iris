import 'package:flutter/material.dart';
import 'package:iris/src/constants.dart';
import 'package:iris/src/models/iris_colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  ThemeData get lightThemeData => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: lightColors.colorSchemeSeed,
        brightness: Brightness.light,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: kFontFamily,
      );

  ThemeData get darkThemeData => ThemeData(
        useMaterial3: true,
        colorSchemeSeed: darkColors.colorSchemeSeed,
        brightness: Brightness.dark,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: kFontFamily,
      );

  ThemeData getTheme(Brightness brightness) =>
      brightness == Brightness.dark ? darkThemeData : lightThemeData;
}
