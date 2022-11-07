import 'package:flutter/material.dart';

abstract class ThemeUtils {
  static MaterialStateProperty<T> materialPropertyBuilder<T>({
    required T state,
    T? pressed,
    T? disabled,
    T? hover,
  }) {
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

  static MaterialStateProperty<T> materialAllBuilder<T>(T state) {
    return MaterialStateProperty.all<T>(state);
  }
}
