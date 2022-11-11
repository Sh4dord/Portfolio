import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/features/tool/tool_page.dart';

class ToolsModule extends Module {
  static const String moduleRouteName = '/tools';

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          ToolsPage.routeName,
          child: (context, args) => ToolsPage(),
        ),
      ];
}
