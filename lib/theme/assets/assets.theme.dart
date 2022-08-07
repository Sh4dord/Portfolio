import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/theme/bloc/theme_app.cubit.dart';

part 'assets.mixin.dart';
part 'lottie_assets.theme.dart';
part 'png_assets.theme.dart';
part 'svg_assets.theme.dart';

class AssetsTheme {
  final _AssetsLottie lotties = const _AssetsLottie();
  final _AssetsPng png = const _AssetsPng();
  final _AssetsSvg svg = const _AssetsSvg();
}
