part of '../../theme_data.theme.dart';

OutlinedButtonThemeData _buildOutlinedButtonTheme({
  required ThemeColors colors,
}) {
  return OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: ButtonThemeUtils.propertyBuilder(
        state: colors.secondaryButton.background,
        pressed: colors.secondaryButton.background,
      ),
      foregroundColor: ButtonThemeUtils.propertyBuilder(
        state: colors.secondaryButton.text,
        pressed: colors.secondaryButton.onPressedColor,
        disabled: colors.secondaryButton.text.withOpacity(0.3),
      ),
      animationDuration: Duration.zero,
      shape: RoundedRectangleBorder(borderRadius: radius.borderRadiusS).mspAll(),
      side: ButtonThemeUtils.propertyBuilder(
        state: BorderSide(
          color: colors.secondaryButton.text,
          width: 2.2,
        ),
        pressed: BorderSide(
          color: colors.secondaryButton.onPressedColor,
          width: 2.2,
        ),
        disabled: BorderSide(
          color: colors.secondaryButton.text.withOpacity(0.3),
          width: 2.2,
        ),
      ),
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
