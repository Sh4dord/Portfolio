part of '../theme_colors.theme.dart';

class _LightShimmerColors extends ShimmerColors {
  final ThemeColors theme;

  _LightShimmerColors({required this.theme});

  @override
  Color get base => theme.neutral.v20;
  @override
  Color get highlight => theme.neutral.v10;
}
