part of '../app_gradients_interface.dart';

class _MainGradientsGroup extends GradientsGroupInterface {
  @override
  Gradient get gradient => LinearGradient(colors: gradientColors);

  @override
  List<Color> get gradientColors => const [
        Color(0xFF13B0F5),
        Color(0xFFE70FAA),
      ];
}
