import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';
import 'package:portfolio/features/home/home_module.dart';
import 'package:portfolio/features/projects/project_module.dart';
import 'package:portfolio/features/tools/tools_module.dart';
import 'package:portfolio/theme/bloc/theme.cubit.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds =>
      [
        BlocBind.singleton((i) => ThemeCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          HomeModule.moduleRouteName,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          ProjectModule.moduleRouteName,
          module: ProjectModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          ToolsModule.moduleRouteName,
          module: ToolsModule(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
