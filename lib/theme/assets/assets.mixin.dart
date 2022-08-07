part of './assets.theme.dart';

mixin AssetsMixin {
  String get theme => Modular.get<ThemeAppCubit>().state.isDarkMode ? '/night' : '';
}
