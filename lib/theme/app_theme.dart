import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/theme/bloc/theme.cubit.dart';
import 'package:portfolio/theme/common/colors/app_colors_interface.dart';
import 'package:portfolio/theme/common/colors/button_colors_interface.dart';
import 'package:portfolio/theme/common/const/dimens.dart';
import 'package:portfolio/theme/common/text_app_theme.dart';
import 'package:portfolio/theme/dark/colors/dark_app_colors.dart';
import 'package:portfolio/theme/light/colors/light_app_colors.dart';
import 'package:portfolio/theme/utils/theme.utils.dart';

part 'common/button_app_theme.dart';

AppColorsInterface get colors => Modular.get<ThemeCubit>().state.isDarkMode ? DarkAppColors() : LightAppColors();

abstract class AppTheme {
  static ThemeData build({required AppColorsInterface colors, required Brightness brightness}) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: colors.neutral.v10,
        elevation: 0,
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: colors.neutral.v0,
      ),
      brightness: brightness,
      dividerColor: colors.neutral.v40,
      scaffoldBackgroundColor: colors.neutral.v10,
      backgroundColor: colors.neutral.v10,
      canvasColor: Colors.transparent,

      /// ---- TEXTS ---- ///
      fontFamily: 'Poppins',
      textTheme: TextAppTheme.build(colors: colors),

      /// ---- CARDS ---- ///
      cardTheme: CardTheme(
        color: colors.neutral.v0,
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: Dimens.borderRadius16,
        ),
      ),

      /// ---- BUTTONS ---- ///
      elevatedButtonTheme: ButtonAppTheme.elevated(buttonColors: colors.elevatedButton),
      outlinedButtonTheme: ButtonAppTheme.outlined(buttonColors: colors.outlinedButton),
      textButtonTheme: ButtonAppTheme.text(buttonColors: colors.textButton),

      /// ---- BUTTONS EFFECTS ---- ///
      focusColor: colors.primary.v100,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,

      errorColor: colors.danger.v100,
      bottomAppBarColor: colors.primary.v100,
      disabledColor: colors.neutral.v50,
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 14,
      ),

      toggleableActiveColor: colors.primary.v100,
      unselectedWidgetColor: colors.neutral.v90,
      // colorScheme: ColorScheme(secondary: colors.primary.v100),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26.0),
        ),
      ),
    );
  }
}
