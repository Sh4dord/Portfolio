import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/text_colors.theme.dart';

TextTheme buildTextTheme({required TextColors textColors}) {
  return TextTheme(
    // Big title
    headline1: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 58 * 0.7,
      fontWeight: FontWeight.w700,
      color: textColors.byDefault,
      letterSpacing: -1,
    ),
    // SectionTitle
    headline2: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 48 * 0.7,
      fontWeight: FontWeight.w700,
      color: textColors.byDefault,
    ),
    // About Title
    headline3: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 42 * 0.7,
      fontWeight: FontWeight.w700,
      color: textColors.byDefault,
      letterSpacing: -0.4,
    ),
    // Section Subtitle
    headline4: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 32 * 0.7,
      fontWeight: FontWeight.w400,
      color: textColors.byDefault,
    ),

    // Project Card Title
    headline5: TextStyle(
      fontFamily: 'DMSans',
      fontSize: 28 * 0.7,
      fontWeight: FontWeight.w500,
      color: textColors.byDefault,
    ),

    // Nav Button
    headline6: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20 * 0.7,
      fontWeight: FontWeight.w500,
      color: textColors.byDefault,
    ),

    // Main Text
    bodyText1: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18 * 0.7,
      fontWeight: FontWeight.w400,
      color: textColors.byDefault,
    ),
    // Main Text 2
    bodyText2: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 18 * 0.7,
      fontWeight: FontWeight.w300,
      color: textColors.byDefault,
    ),

    // Tech Stack Title
    subtitle1: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16 * 0.7,
      fontWeight: FontWeight.w400,
      color: textColors.byDefault,
    ),
    // Tech Stack
    subtitle2: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14 * 0.7,
      fontWeight: FontWeight.w300,
      color: textColors.byDefault,
    ),

    //button bottom pages
    button: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16 * 0.7,
      fontWeight: FontWeight.w400,
      color: textColors.byDefault,
    ),

    // Not used now
    caption: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12 * 0.7,
      fontWeight: FontWeight.normal,
      color: textColors.byDefault,
    ),
  );
}
