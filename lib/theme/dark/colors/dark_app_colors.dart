import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/app_colors_interface.dart';
import 'package:portfolio/theme/common/colors/button_colors_interface.dart';
import 'package:portfolio/theme/common/colors/colors_variations/colors_variation_interface.dart';
import 'package:portfolio/theme/common/colors/shimmer_colors_interface.dart';

/// --- BUTTONS --- ///
part 'button_colors/elevated_dark_button_colors.dart';

part 'button_colors/outlined_dark_button_colors.dart';

part 'colors_variations/danger_dark_colors_variation.dart';

part 'colors_variations/info_dark_colors_variation.dart';

part 'colors_variations/neutral_dark_colors_variation.dart';

part 'colors_variations/primary_dark_colors_variation.dart';

part 'colors_variations/shimmer_colors.theme.dart';

/// --- VARIATIONS --- ///
part 'colors_variations/success_dark_colors_variation.dart';

part 'colors_variations/warning_dark_colors_variation.dart';

class DarkAppColors extends AppColorsInterface {
  /// --- VARIATIONS --- ///
  @override
  final ColorsVariationInterface primary = _DarkPrimaryVariations();
  @override
  final ColorsVariationInterface danger = _DarkDangerVariations();
  @override
  final ColorsVariationInterface info = _DarkInfoVariations();
  @override
  final ColorsVariationInterface warning = _DarkWarningVariations();
  @override
  final ColorsVariationInterface success = _DarkSuccessVariations();
  @override
  final ColorsVariationInterface neutral = _DarkNeutralVariations();

  /// --- BUTTONS --- ///
  @override
  late final ButtonColorsInterface outlinedButton = _OutlinedDarkButtonColors(theme: this);
  @override
  late final ButtonColorsInterface elevatedButton = _ElevatedDarkButtonColors(theme: this);

  @override
  ShimmerColorsInterface get shimmer => _DarkShimmerColors(theme: this);
}
