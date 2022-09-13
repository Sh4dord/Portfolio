import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/features/home/home_page.dart';

class HomeModule extends Module {
  static const String moduleRouteName = '/';

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HomePage.routeName,
          child: (context, args) => const HomePage(),
        ),
      ];
}
