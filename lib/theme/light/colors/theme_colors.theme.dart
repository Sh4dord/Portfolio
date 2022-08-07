library theme_colors;

import 'package:portfolio/theme/common/colors/button_colors.dart';
import 'package:portfolio/theme/common/colors/shimmer/shimmer_colors.theme.dart';
import 'package:portfolio/theme/common/colors/text_colors.theme.dart';
import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';
import 'package:flutter/material.dart';

part 'text_colors.theme.dart';
part 'variations/primary_button.theme.dart';
part 'variations/secondary_button.theme.dart';
part 'variations/shimmer_colors.theme.dart';

final lightThemeColors = _LightThemeColors();

class _LightThemeColors extends ThemeColors {
  @override
  final Color background = const Color(0xFFF9FAFC);

  @override
  final Color tabBarIndicator = const Color(0xFFe8edf3);

  @override
  late final TextColors text = _LightTextColors(theme: this);

  @override
  late final Color switchBackground = const Color(0xFFE9ECF3);

  @override
  ShimmerColors get shimmer => _LightShimmerColors(theme: this);

  @override
  late final ButtonColors primaryButton = _LightPrimaryButton(theme: this);
  @override
  late final ButtonColors secondaryButton = _SecondaryPrimaryButton(theme: this);

  @override
  late final Color cardBackground = neutral.v0;
}
