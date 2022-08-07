import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/button_colors.dart';
import 'package:portfolio/theme/common/colors/shimmer/shimmer_colors.theme.dart';
import 'package:portfolio/theme/common/colors/text_colors.theme.dart';
import 'package:portfolio/theme/common/colors/theme_colors.theme.dart';
import 'package:portfolio/theme/common/colors/theme_colors_variations.theme.dart';

part 'text_colors.theme.dart';
part 'variations/danger_variations.theme.dart';
part 'variations/info_variations.theme.dart';
part 'variations/negative_variations.theme.dart';
part 'variations/neutral_variations.theme.dart';
part 'variations/positive_variations.theme.dart';
part 'variations/primary_button.theme.dart';
part 'variations/primary_variations.theme.dart';
part 'variations/secondary_button.theme.dart';
part 'variations/shimmer_colors.theme.dart';
part 'variations/success_variations.theme.dart';
part 'variations/warning_variations.theme.dart';

final darkThemeColors = _DarkThemeColors();

class _DarkThemeColors extends ThemeColors {
  @override
  final Color background = const Color(0xFF000014);

  @override
  Color get bottomAppbarBackground => neutral.v20.withOpacity(0.80);

  @override
  final Color tabBarIndicator = const Color(0xFF475569);

  @override
  late final TextColors text = _DarkTextColors(theme: this);

  @override
  final ThemeColorVariations neutral = _DarkNeutralVariations();

  @override
  late final ButtonColors primaryButton = _DarkPrimaryButton(theme: this);
  @override
  late final ButtonColors secondaryButton = _SecondaryPrimaryButton(theme: this);

  @override
  ShimmerColors get shimmer => _DarkShimmerColors(theme: this);

  @override
  final ThemeColorVariations primary = _DarkPrimaryVariations();
  @override
  final ThemeColorVariations danger = _DarkDangerVariations();
  @override
  final ThemeColorVariations info = _DarkInfoVariations();
  @override
  final ThemeColorVariations negative = _DarkNegativeVariations();
  @override
  final ThemeColorVariations positive = _DarkPositiveVariations();
  @override
  final ThemeColorVariations warning = _DarkWarningVariations();
  @override
  final ThemeColorVariations success = _DarkSuccessVariations();

  @override
  late final Color switchBackground = const Color(0xFF000014);

  @override
  final Color cardBackground = const Color(0xFF141423);
}
