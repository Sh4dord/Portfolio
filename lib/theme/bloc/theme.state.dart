import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ThemeState extends Equatable {
  final ThemeMode selectedTheme;

  /// Here we save the device theme at the app start-up
  /// When the device theme change it completely broke the app for an unknown reason (edge case maybe)
  /// So when the user switch to ThemeMode.system we switch the device theme when the app was launch
  final ThemeMode appLaunchTheme;
  final bool isShowModalPresentation;

  const ThemeState({
    required this.selectedTheme,
    required this.appLaunchTheme,
    this.isShowModalPresentation = false,
  });

  ThemeState copyWith({
    ThemeMode? selectedTheme,
    bool? isShowModalPresentation,
  }) {
    return ThemeState(
      selectedTheme: selectedTheme ?? this.selectedTheme,
      appLaunchTheme: appLaunchTheme,
      isShowModalPresentation: isShowModalPresentation ?? this.isShowModalPresentation,
    );
  }

  ThemeMode get theme {
    /// If the selected theme is system then, we check what's the system theme
    if (selectedTheme == ThemeMode.system) {
      return appLaunchTheme;
    }

    return selectedTheme;
  }

  bool get isDarkMode {
    return theme == ThemeMode.dark;
  }

  @override
  List<Object?> get props => [selectedTheme, isShowModalPresentation];
}
