part of '../app_theme.dart';

abstract class _ButtonAppTheme {
  static ElevatedButtonThemeData elevated({
    required ButtonColorsInterface buttonColors,
  }) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: ThemeUtils.materialPropertyBuilder(
          state: buttonColors.background,
          pressed: buttonColors.backgroundPressed,
          disabled: buttonColors.background.withOpacity(0.3),
        ),
        foregroundColor: ThemeUtils.materialPropertyBuilder(
          state: buttonColors.text,
          pressed: buttonColors.text,
        ),
        animationDuration: kThemeAnimationDuration,
        overlayColor: ThemeUtils.materialAllBuilder(Colors.transparent),
        shape: ThemeUtils.materialAllBuilder(RoundedRectangleBorder(borderRadius: Dimens.borderRadius6)),
        elevation: ThemeUtils.materialAllBuilder(0.0),
        textStyle: ThemeUtils.materialAllBuilder(const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          height: 1.2,
        )),
      ),
    );
  }

  static OutlinedButtonThemeData outlined({
    required ButtonColorsInterface buttonColors,
  }) {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: ThemeUtils.materialPropertyBuilder(
          state: buttonColors.background,
          pressed: buttonColors.backgroundPressed,
        ),
        foregroundColor: ThemeUtils.materialPropertyBuilder(
          state: buttonColors.text,
          pressed: buttonColors.textPressed,
          disabled: buttonColors.text.withOpacity(0.3),
        ),
        animationDuration: Duration.zero,
        shape: ThemeUtils.materialAllBuilder(RoundedRectangleBorder(borderRadius: Dimens.borderRadius6)),
        side: ThemeUtils.materialPropertyBuilder(
          state: BorderSide(
            color: buttonColors.text,
            width: 2.2,
          ),
          pressed: BorderSide(
            color: buttonColors.backgroundPressed,
            width: 2.2,
          ),
          disabled: BorderSide(
            color: buttonColors.text.withOpacity(0.3),
            width: 2.2,
          ),
        ),
        elevation: ThemeUtils.materialAllBuilder(0.0),
        textStyle: ThemeUtils.materialAllBuilder(const TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16,
          fontWeight: FontWeight.bold,
          height: 1.2,
        )),
      ),
    );
  }

  static TextButtonThemeData text({
    required ButtonColorsInterface buttonColors,
  }) {
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: ThemeUtils.materialPropertyBuilder(
          state: buttonColors.text,
          pressed: buttonColors.textPressed,
          disabled: buttonColors.text.withOpacity(0.3),
        ),
        animationDuration: Duration.zero,
        shape: ThemeUtils.materialAllBuilder(RoundedRectangleBorder(borderRadius: Dimens.borderRadius6)),
        elevation: ThemeUtils.materialAllBuilder(0.0),
        backgroundColor: ThemeUtils.materialAllBuilder(Colors.transparent),
        padding: ThemeUtils.materialAllBuilder(EdgeInsets.zero),
        overlayColor: ThemeUtils.materialAllBuilder(Colors.transparent),
        textStyle: ThemeUtils.materialAllBuilder(TextStyle(
          fontFamily: 'Poppins',
          fontSize: 16 * 0.7,
          fontWeight: FontWeight.w400,
          height: 1.2,
          decoration: TextDecoration.underline,
          color: buttonColors.text,
        )),
      ),
    );
  }
}
