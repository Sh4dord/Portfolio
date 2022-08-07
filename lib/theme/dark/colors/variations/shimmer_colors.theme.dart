part of '../theme_colors.theme.dart';

class _DarkShimmerColors extends ShimmerColors {
  final ThemeColors theme;

  _DarkShimmerColors({required this.theme});

  @override
  Color get base => theme.neutral.v20;
  @override
  Color get highlight => theme.neutral.v10;
}
