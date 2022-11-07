import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/app_colors_interface.dart';

abstract class ButtonColorsInterface {
  final AppColorsInterface theme;

  ButtonColorsInterface({required this.theme});

  Color get background => throw defaultColorError;

  Color get backgroundPressed => background.withOpacity(0.5);

  Color get text => throw defaultColorError;

  Color get textPressed => text.withOpacity(0.5);

  Color? get border => null;

  Color? get borderPressed => null;
}
