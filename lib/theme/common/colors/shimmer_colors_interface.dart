import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/app_colors_interface.dart';

abstract class ShimmerColorsInterface {
  Color get base => throw defaultColorError;

  Color get highlight => throw defaultColorError;
}
