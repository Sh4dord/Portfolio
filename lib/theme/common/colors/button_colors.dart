import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';
import 'package:flutter/material.dart';

abstract class ButtonColors {
  final ThemeColors theme;

  ButtonColors({required this.theme});

  Color get background => throw defaultColorError;
  Color get text => throw defaultColorError;
  Color? get border => throw defaultColorError;
  Color get onPressedColor => throw defaultColorError;
}
