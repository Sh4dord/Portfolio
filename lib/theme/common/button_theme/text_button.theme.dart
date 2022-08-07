part of '../../theme_data.theme.dart';

TextButtonThemeData _buildTextButtonTheme({
  required ThemeColors colors,
}) {
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: ButtonThemeUtils.propertyBuilder(
        state: colors.neutral.v100,
        pressed: colors.neutral.v80,
        disabled: colors.primary.v100.withOpacity(0.3),
      ),
      animationDuration: Duration.zero,
      shape: RoundedRectangleBorder(borderRadius: radius.borderRadiusS).mspAll(),
      elevation: (0.0).mspAll(),
      backgroundColor: colors.transparent.mspAll(),
      padding: EdgeInsets.zero.mspAll(),
      overlayColor: colors.transparent.mspAll(),
      textStyle: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 16 * 0.7,
        fontWeight: FontWeight.w400,
        height: 1.2,
        color: colors.neutral.v100,
      ).mspAll(),
    ),
  );
}
