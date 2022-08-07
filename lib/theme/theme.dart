import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/theme/assets/assets.theme.dart';
import 'package:portfolio/theme/bloc/theme_app.cubit.dart';
import 'package:portfolio/theme/common/box_shadow/box_shadow.theme.dart';
import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/common/gradients/gradients.theme.dart';
import 'package:portfolio/theme/dark/box_shadow/box_shadow.theme.dart';
import 'package:portfolio/theme/dark/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/dark/gradients/gradients.theme.dart';
import 'package:portfolio/theme/light/box_shadow/box_shadow.theme.dart';
import 'package:portfolio/theme/light/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/light/gradients/gradients.theme.dart';

export 'dark/colors/theme_colors.theme.dart';
export 'light/colors/theme_colors.theme.dart';

ThemeColors get colors => Modular.get<ThemeAppCubit>().state.isDarkMode ? darkThemeColors : lightThemeColors;
bool get isDarkMode => Modular.get<ThemeAppCubit>().state.isDarkMode;
GradientTheme get gradients => Modular.get<ThemeAppCubit>().state.isDarkMode ? darkGradients : lightGradients;
BoxShadowTheme get boxShadow =>
    Modular.get<ThemeAppCubit>().state.isDarkMode ? darkThemeBoxShadow : lightThemeBoxShadow;
AssetsTheme get assetTheme => AssetsTheme();
