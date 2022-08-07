part of 'theme_colors.theme.dart';

class _LightTextColors extends TextColors {
  _LightTextColors({required ThemeColors theme}) : super(theme: theme);

  @override
  Color get byDefault => theme.neutral.v100;
  @override
  Color get primary => theme.primary.v100;
  @override
  Color get secondary => throw defaultColorError;
  @override
  Color get positive => theme.primary.v100;
  @override
  Color get negative => theme.negative.v100;
}
