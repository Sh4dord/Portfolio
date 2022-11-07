part of '../light_app_colors.dart';

class _LightShimmerColors extends ShimmerColorsInterface {
  final AppColorsInterface theme;

  _LightShimmerColors({required this.theme});

  @override
  Color get base => theme.neutral.v20;

  @override
  Color get highlight => theme.neutral.v10;
}
