import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/app_colors_interface.dart';

abstract class TextAppTheme {
  static TextTheme build({required AppColorsInterface colors}) {
    return TextTheme(
      // Big title
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 58 * 0.7,
        fontWeight: FontWeight.w700,
        color: colors.neutral.v100,
        letterSpacing: -1,
      ),
      // SectionTitle
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 48 * 0.7,
        fontWeight: FontWeight.w700,
        color: colors.neutral.v100,
      ),
      // About Title
      headline3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 42 * 0.7,
        fontWeight: FontWeight.w700,
        color: colors.neutral.v100,
        letterSpacing: -0.4,
      ),
      // Section Subtitle
      headline4: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32 * 0.7,
        fontWeight: FontWeight.w400,
        color: colors.neutral.v100,
      ),

      // Project Card Title
      headline5: TextStyle(
        fontFamily: 'DMSans',
        fontSize: 28 * 0.7,
        fontWeight: FontWeight.w500,
        color: colors.neutral.v100,
      ),

      // Nav Button
      headline6: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20 * 0.7,
        fontWeight: FontWeight.w500,
        color: colors.neutral.v100,
      ),

      // Main Text
      bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18 * 0.7,
        fontWeight: FontWeight.w400,
        color: colors.neutral.v100,
      ),
      // Main Text 2
      bodyText2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18 * 0.7,
        fontWeight: FontWeight.w300,
        color: colors.neutral.v100,
      ),

      // Tech Stack Title
      subtitle1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16 * 0.7,
        fontWeight: FontWeight.w400,
        color: colors.neutral.v100,
      ),
      // Tech Stack
      subtitle2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14 * 0.7,
        fontWeight: FontWeight.w300,
        color: colors.neutral.v100,
      ),

      //button bottom pages
      button: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16 * 0.7,
        fontWeight: FontWeight.w400,
        color: colors.neutral.v100,
      ),

      // Not used now
      caption: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12 * 0.7,
        fontWeight: FontWeight.normal,
        color: colors.neutral.v100,
      ),
    );
  }
}
