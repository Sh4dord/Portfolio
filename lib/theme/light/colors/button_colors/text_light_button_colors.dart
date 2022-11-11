part of '../light_app_colors.dart';

class _TextLightButtonColors extends ButtonColorsInterface {
  _TextLightButtonColors({required AppColorsInterface theme}) : super(theme: theme);

  @override
  Color get background => theme.white;

  @override
  Color get backgroundPressed => theme.white.withOpacity(0.7);

  @override
  Color get text => theme.black;

  @override
  Color? get border => null;
}
