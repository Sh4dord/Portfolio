part of '../app_theme.dart';

abstract class _TextAppTheme {
  static TextTheme build({required AppColorsInterface colors}) {
    return TextTheme(
      // OK
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 58.sp,
        fontWeight: FontWeight.w700,
        color: colors.text.v100,
        letterSpacing: -1,
      ),
      // OK
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 48.sp,
        fontWeight: FontWeight.w700,
        color: colors.text.v100,
        height: 1.3,
      ),
      // About Title
      headline3: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 42.sp,
        fontWeight: FontWeight.w700,
        color: colors.text.v100,
        letterSpacing: -0.4,
      ),
      // OK
      headline4: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 32.sp,
        fontWeight: FontWeight.w400,
        color: colors.text.v100,
      ),

      // OK Project Card Title
      headline5: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 28,
        fontWeight: FontWeight.w500,
        color: colors.text.v100,
      ),

      // Nav Button
      headline6: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: colors.text.v100,
      ),

      // OK Project Card Desc
      bodyText1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w400,
        color: colors.text.v100,
      ),
      // Main Text 2
      bodyText2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.normal,
        color: colors.text.v100,
      ),

      // OK Tech Stack Title
      subtitle1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: colors.text.v100,
      ),
      // OK Tech Stack
      subtitle2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 14.sp,
        fontWeight: FontWeight.w100,
        color: colors.text.v100,
      ),

      // OK Nav
      button: TextStyle(
        fontFamily: 'DM Sans',
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
        color: colors.text.v100,
      ),

      // Not used now
      caption: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12.sp,
        fontWeight: FontWeight.normal,
        color: colors.text.v100,
      ),
    );
  }
}
