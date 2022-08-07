import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/button_theme/button_theme.utils.dart';
import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/common/text_theme/text_theme.theme.dart';
import 'package:portfolio/theme/common/theme.utils.dart';
import 'package:portfolio/theme/radius/radius.dart';

part 'common/app_bar.theme.dart';
part 'common/button_theme/elevated_button.theme.dart';
part 'common/button_theme/outlined_button.theme.dart';
part 'common/button_theme/text_button.theme.dart';

ThemeData buildTheme({required ThemeColors colors, required Brightness brightness}) {
  return ThemeData(
    fontFamily: 'Poppins',
    dividerColor: colors.neutral.v40,
    brightness: brightness,
    scaffoldBackgroundColor: colors.background,
    backgroundColor: colors.background,
    canvasColor: Colors.transparent,
    accentColor: colors.neutral.v50,
    appBarTheme: _buildAppBarThemeTheme(colors: colors),
    cardColor: colors.cardBackground,
    elevatedButtonTheme: _buildElevatedButtonTheme(colors: colors),
    outlinedButtonTheme: _buildOutlinedButtonTheme(colors: colors),
    textButtonTheme: _buildTextButtonTheme(colors: colors),
    errorColor: colors.danger.v100,
    bottomAppBarColor: colors.primary.v100,
    disabledColor: colors.neutral.v50,
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 14,
    ),
    focusColor: colors.primary.v100,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    toggleableActiveColor: colors.primary.v100,
    unselectedWidgetColor: colors.neutral.v90,
    // colorScheme: ColorScheme(secondary: colors.primary.v100),
    dialogTheme: DialogTheme(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(26.0),
      ),
    ),
    // Define the default font family.
    textTheme: buildTextTheme(textColors: colors.text),
    cardTheme: CardTheme(
      color: colors.cardBackground,
      elevation: 4,
      clipBehavior: Clip.antiAlias,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
    ),
  );
}
