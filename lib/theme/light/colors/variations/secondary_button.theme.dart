part of theme_colors;

class _SecondaryPrimaryButton extends ButtonColors {
  _SecondaryPrimaryButton({required ThemeColors theme}) : super(theme: theme);

  @override
  Color get background => theme.transparent;
  @override
  Color get text => theme.primary.v100;
  @override
  Color? get border => theme.primary.v100;
  @override
  Color get onPressedColor => theme.primary.v110;
}
