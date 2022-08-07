part of '../theme_colors.theme.dart';

class _LightPrimaryButton extends ButtonColors {
  _LightPrimaryButton({required ThemeColors theme}) : super(theme: theme);

  @override
  Color get background => theme.primary.v100;
  @override
  Color get text => theme.white;
  @override
  Color? get border => null;
  @override
  Color get onPressedColor => theme.primary.v110;
}
