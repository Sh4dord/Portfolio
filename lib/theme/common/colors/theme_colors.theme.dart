import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/button_colors.dart';
import 'package:portfolio/theme/common/colors/shimmer/shimmer_colors.theme.dart';
import 'package:portfolio/theme/common/colors/text_colors.theme.dart';
import 'package:portfolio/theme/common/colors/theme_colors_variations.theme.dart';

part 'variations/danger_variations.theme.dart';
part 'variations/info_variations.theme.dart';
part 'variations/negative_variations.theme.dart';
part 'variations/neutral_variations.theme.dart';
part 'variations/positive_variations.theme.dart';
part 'variations/primary_variations.theme.dart';
part 'variations/success_variations.theme.dart';
part 'variations/warning_variations.theme.dart';

const defaultColorError =
    'This color is not implemented or do not exist. Please check the design 🥸. All variations do not exists for every colors so be carreful if you implement a new color';
const defaultVariationError = 'This color variation is not implemented. Please check the design 🥸';

abstract class ThemeColors {
  Color get background => Colors.transparent;
  Color get cardBackground => Colors.transparent;
  Color get bottomAppbarBackground => neutral.v0;
  Color get switchBackground => throw defaultColorError;
  Color get tabBarIndicator => throw defaultColorError;

  Color black = const Color(0xFF000000);
  Color white = const Color(0xFFFFFFFF);
  Color transparent = Colors.transparent;
  Color grey = Colors.grey;
  Color imageMask = const Color(0xFF23285C);

  TextColors get text => throw defaultColorError;

  ButtonColors get primaryButton => throw defaultColorError;
  ButtonColors get secondaryButton => throw defaultColorError;

  ShimmerColors get shimmer => throw defaultColorError;

  ThemeColorVariations get primary => _PrimaryVariations();
  ThemeColorVariations get neutral => _NeutralVariations();
  ThemeColorVariations get success => _SuccessVariations();
  ThemeColorVariations get info => _InfoVariations();
  ThemeColorVariations get warning => _WarningVariations();
  ThemeColorVariations get danger => _DangerVariations();
  ThemeColorVariations get positive => _PositiveVariations();
  ThemeColorVariations get negative => _NegativeVariations();
}
