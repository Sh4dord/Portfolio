import 'package:portfolio/theme/common/box_shadow/box_shadow.theme.dart';
import 'package:flutter/material.dart';

final darkThemeBoxShadow = _DarkThemeBoxShadow();

class _DarkThemeBoxShadow implements BoxShadowTheme {
  @override
  List<BoxShadow> get bottomAppbar => const [
        BoxShadow(color: Color.fromRGBO(255, 255, 255, 0.05), offset: Offset(0, -1), blurRadius: 0, spreadRadius: 0),
        BoxShadow(color: Color.fromRGBO(71, 85, 105, 0.5), offset: Offset(0, 1), blurRadius: 60, spreadRadius: 0),
        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.55), offset: Offset(0, 2), blurRadius: 5, spreadRadius: 0),
      ];
}
