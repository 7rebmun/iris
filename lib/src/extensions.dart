import 'package:flutter/material.dart';
import 'package:iris/src/models/iris_colors.dart';

extension IrisColorsExtension on BuildContext {
  IrisColors get colors =>
      MediaQuery.of(this).platformBrightness == Brightness.dark
          ? darkColors
          : lightColors;
}
