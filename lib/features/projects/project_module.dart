import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/features/projects/project_page.dart';

class ProjectModule extends Module {
  static const String moduleRouteName = '/projects/';

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          ProjectPage.routeName,
          child: (context, args) => const ProjectPage(),
        ),
      ];
}
