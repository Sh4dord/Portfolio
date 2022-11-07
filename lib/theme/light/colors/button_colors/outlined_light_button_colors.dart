part of '../light_app_colors.dart';

class _OutlinedLightButtonColors extends ButtonColorsInterface {
  _OutlinedLightButtonColors({required AppColorsInterface theme}) : super(theme: theme);

  @override
  Color get background => theme.transparent;

  @override
  Color get backgroundPressed => theme.primary.v110;

  @override
  Color get text => theme.primary.v100;

  @override
  Color? get border => theme.primary.v100;
}
