import 'package:flutter/material.dart';
import 'package:iris/src/constants.dart';

class IrisColors {
  final Color colorSchemeSeed;

  IrisColors({
    required this.colorSchemeSeed,
  });
}

final lightColors = IrisColors(colorSchemeSeed: kColorSchemeSeed);
final darkColors = IrisColors(colorSchemeSeed: kColorSchemeSeed);
