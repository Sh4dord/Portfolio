part of '../theme_data.theme.dart';

AppBarTheme _buildAppBarThemeTheme({
  required ThemeColors colors,
}) {
  return AppBarTheme(
    backgroundColor: colors.background,
    elevation: 0,
    foregroundColor: colors.neutral.v70,
  );
}
