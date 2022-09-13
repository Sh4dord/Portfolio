import 'package:flutter/material.dart';

class ButtonThemeUtils {
  static MaterialStateProperty<T> propertyBuilder<T>(
      {required T state, T? pressed, T? disabled, T? hover}) {
    return MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        return pressed ?? state;
      }
      if (states.contains(MaterialState.disabled)) {
        return disabled ?? state;
      }
      if (states.contains(MaterialState.hovered)) {
        return hover ?? state;
      }
      return state;
    });
  }
}
