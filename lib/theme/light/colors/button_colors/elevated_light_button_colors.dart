part of '../light_app_colors.dart';

class _ElevatedLightButtonColors extends ButtonColorsInterface {
  _ElevatedLightButtonColors({required AppColorsInterface theme}) : super(theme: theme);

  @override
  Color get background => theme.primary.v100;

  @override
  Color get backgroundPressed => theme.primary.v110;

  @override
  Color get text => theme.white;

  @override
  Color? get border => null;
}
