import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';
import 'package:portfolio/features/tools/tools_page.dart';
import 'package:portfolio/infrastructure/tool/repositories/tool_repository.dart';

class ToolsModule extends Module {
  static const String moduleRouteName = '/tools/';

  @override
  List<Bind> get binds => [
        Bind.lazySingleton((i) => ToolRepository()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          ToolsPage.routeName,
          child: (context, args) => ToolsPage(),
        ),
      ];
}
