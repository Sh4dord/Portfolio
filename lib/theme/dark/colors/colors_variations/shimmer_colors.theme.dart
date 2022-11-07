part of '../dark_app_colors.dart';

class _DarkShimmerColors extends ShimmerColorsInterface {
  final AppColorsInterface theme;

  _DarkShimmerColors({required this.theme});

  @override
  Color get base => theme.neutral.v20;

  @override
  Color get highlight => theme.neutral.v10;
}
