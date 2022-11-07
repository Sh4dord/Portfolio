import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/theme/bloc/theme.state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(
          ThemeState(
            selectedTheme: ThemeMode.light,
            appLaunchTheme: SchedulerBinding.instance.window.platformBrightness == Brightness.dark
                ? ThemeMode.dark
                : ThemeMode.light,
          ),
        );

  void changeTheme(ThemeMode type) {
    emit(state.copyWith(
      selectedTheme: type,
    ));
  }

  void toggleTheme() {
    emit(state.copyWith(
      selectedTheme: state.isDarkMode ? ThemeMode.light : ThemeMode.dark,
    ));
  }

  void setModalPresentation() {
    emit(state.copyWith(
      isShowModalPresentation: true,
    ));
  }

  ThemeState get theme => state;
}
