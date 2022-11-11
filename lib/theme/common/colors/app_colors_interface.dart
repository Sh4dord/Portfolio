import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/button_colors_interface.dart';
import 'package:portfolio/theme/common/colors/colors_variations/colors_variation_interface.dart';
import 'package:portfolio/theme/common/colors/shimmer_colors_interface.dart';

part 'colors_variations/danger_default_colors_variation.dart';
part 'colors_variations/info_default_colors_variation.dart';
part 'colors_variations/neutral_default_colors_variation.dart';
part 'colors_variations/primary_default_colors_variation.dart';
part 'colors_variations/success_default_colors_variation.dart';

part 'colors_variations/text_default_colors_variation.dart';

part 'colors_variations/warning_default_colors_variation.dart';

const defaultColorError =
    'This color is not implemented or do not exist. Please check the design 🥸. All variations do not exists for every colors so be carreful if you implement a new color';

abstract class AppColorsInterface {
  Color black = const Color(0xFF000000);
  Color white = const Color(0xFFFFFFFF);
  Color transparent = Colors.transparent;

  Color get background => const Color(0xFFF5F5F5);

  Color get card => const Color(0xFFFFFFFF);

  ButtonColorsInterface get elevatedButton => throw defaultColorError;

  ButtonColorsInterface get outlinedButton => throw defaultColorError;

  ButtonColorsInterface get textButton => outlinedButton;

  ShimmerColorsInterface get shimmer => throw defaultColorError;

  ColorsVariationInterface get primary => _PrimaryDefaultColorsVariation();

  ColorsVariationInterface get neutral => _NeutralDefaultColorsVariation();

  ColorsVariationInterface get success => _SuccessDefaultColorsVariation();

  ColorsVariationInterface get info => _InfoDefaultColorsVariation();

  ColorsVariationInterface get warning => _WarningDefaultColorsVariation();

  ColorsVariationInterface get danger => _DangerDefaultColorsVariation();

  ColorsVariationInterface get text => _TextDefaultColorsVariation();
}
