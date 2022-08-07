import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';
import 'package:portfolio/features/home/home_module.dart';
import 'package:portfolio/theme/bloc/theme_app.cubit.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        BlocBind.singleton((i) => ThemeAppCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}