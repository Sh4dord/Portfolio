import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';
import 'package:portfolio/features/home/home_module.dart';
import 'package:portfolio/features/project/project_module.dart';
import 'package:portfolio/features/tool/tool_module.dart';
import 'package:portfolio/infrastructure/firebase_storage/firebase_storage_repository.dart';
import 'package:portfolio/infrastructure/project/repositories/project_repository.dart';
import 'package:portfolio/infrastructure/stack/repositories/stack_repository.dart';
import 'package:portfolio/infrastructure/tool/repositories/tool_repository.dart';
import 'package:portfolio/theme/bloc/theme.cubit.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        BlocBind.singleton((i) => ThemeCubit()),
        Bind.lazySingleton((i) => ProjectRepository()),
        Bind.lazySingleton((i) => StackRepository()),
        Bind.lazySingleton((i) => ToolRepository()),
        Bind.lazySingleton((i) => FirebaseStorageRepository()),
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
