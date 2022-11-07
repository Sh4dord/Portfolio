part of '../dark_app_colors.dart';

class _ElevatedDarkButtonColors extends ButtonColorsInterface {
  _ElevatedDarkButtonColors({required AppColorsInterface theme}) : super(theme: theme);

  @override
  Color get background => theme.primary.v100;

  @override
  Color get backgroundPressed => theme.primary.v110;

  @override
  Color get text => theme.neutral.v100;

  @override
  Color? get border => null;
}
