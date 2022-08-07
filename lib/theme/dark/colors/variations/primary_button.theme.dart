part of '../theme_colors.theme.dart';

class _DarkPrimaryButton extends ButtonColors {
  _DarkPrimaryButton({required ThemeColors theme}) : super(theme: theme);

  @override
  Color get background => theme.primary.v100;
  @override
  Color get text => theme.text.byDefault;
  @override
  Color? get border => null;
  @override
  Color get onPressedColor => theme.primary.v110;
}
