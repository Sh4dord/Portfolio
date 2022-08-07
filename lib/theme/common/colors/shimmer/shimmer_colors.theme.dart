import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';

abstract class ShimmerColors {
  Color get base => throw defaultColorError;
  Color get highlight => throw defaultColorError;
}
