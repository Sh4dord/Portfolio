import 'package:flutter/material.dart';
import 'package:portfolio/theme/common/colors/app_colors_interface.dart';
import 'package:portfolio/theme/common/colors/button_colors_interface.dart';
import 'package:portfolio/theme/common/colors/shimmer_colors_interface.dart';

/// --- BUTTONS --- ///
part 'button_colors/elevated_light_button_colors.dart';

part 'button_colors/outlined_light_button_colors.dart';

part 'colors_variations/shimmer_colors.theme.dart';

class LightAppColors extends AppColorsInterface {
  /// --- BUTTONS --- ///
  @override
  late final ButtonColorsInterface elevatedButton = _ElevatedLightButtonColors(theme: this);
  @override
  late final ButtonColorsInterface outlinedButton = _OutlinedLightButtonColors(theme: this);

  @override
  ShimmerColorsInterface get shimmer => _LightShimmerColors(theme: this);
}
