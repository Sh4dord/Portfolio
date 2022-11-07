part of '../dark_app_colors.dart';

class _OutlinedDarkButtonColors extends ButtonColorsInterface {
  _OutlinedDarkButtonColors({required AppColorsInterface theme}) : super(theme: theme);

  @override
  Color get background => theme.transparent;

  @override
  Color get backgroundPressed => theme.primary.v110;

  @override
  Color get text => theme.neutral.v100;

  @override
  Color? get border => theme.primary.v100;
}
