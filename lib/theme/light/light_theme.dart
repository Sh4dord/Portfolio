import 'package:flutter/material.dart';
import 'package:portfolio/theme/light/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/theme_data.theme.dart';

ThemeData get lightAppTheme => buildTheme(colors: lightThemeColors, brightness: Brightness.light);
