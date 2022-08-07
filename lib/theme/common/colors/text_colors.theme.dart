import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';
import 'package:flutter/material.dart';

abstract class TextColors {
  final ThemeColors theme;

  TextColors({required this.theme});

  Color get byDefault => throw defaultColorError;
  Color get primary => throw defaultColorError;
  Color get secondary => throw defaultColorError;
  Color get positive => throw defaultColorError;
  Color get negative => throw defaultColorError;
}
