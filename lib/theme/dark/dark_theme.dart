import 'package:flutter/material.dart';
import 'package:portfolio/theme/dark/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/theme_data.theme.dart';

ThemeData get darkAppTheme => buildTheme(colors: darkThemeColors, brightness: Brightness.dark);
