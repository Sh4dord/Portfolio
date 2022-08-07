import 'package:portfolio/theme/common/box_shadow/box_shadow.theme.dart';
import 'package:flutter/material.dart';

final lightThemeBoxShadow = _LightThemeBoxShadow();

class _LightThemeBoxShadow implements BoxShadowTheme {
  @override
  List<BoxShadow> get bottomAppbar => const [
        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1), offset: Offset(0, 2), blurRadius: 5, spreadRadius: 0),
        BoxShadow(color: Color.fromRGBO(187, 193, 203, 0.3), offset: Offset(0, 2), blurRadius: 10, spreadRadius: 0),
      ];
}
