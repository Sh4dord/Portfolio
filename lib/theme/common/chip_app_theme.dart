part of '../app_theme.dart';

abstract class _ChipAppTheme {
  static ChipThemeData build({
    required AppColorsInterface colors,
  }) {
    return const ChipThemeData(
      padding: EdgeInsets.symmetric(
        vertical: Dimens.spacing0,
        horizontal: Dimens.spacing8,
      ),
      labelPadding: EdgeInsets.zero,
    );
  }
}
