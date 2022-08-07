part of '../../theme_data.theme.dart';

ElevatedButtonThemeData _buildElevatedButtonTheme({
  required ThemeColors colors,
}) {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: ButtonThemeUtils.propertyBuilder(
        state: colors.primaryButton.background,
        pressed: colors.primaryButton.onPressedColor,
        disabled: colors.primaryButton.background.withOpacity(0.3),
      ),
      foregroundColor: ButtonThemeUtils.propertyBuilder(
        state: colors.primaryButton.text,
        pressed: colors.primaryButton.text,
      ),
      animationDuration: kThemeAnimationDuration,
      overlayColor: colors.transparent.mspAll(),
      shape: RoundedRectangleBorder(borderRadius: radius.borderRadiusS).mspAll(),
      elevation: (0.0).mspAll(),
      textStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16,
        fontWeight: FontWeight.bold,
        height: 1.2,
      ).mspAll(),
    ),
  );
}
