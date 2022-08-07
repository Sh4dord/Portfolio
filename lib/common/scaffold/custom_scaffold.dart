import 'package:flutter/material.dart';
import 'package:portfolio/common/navigation/drawer/drawer_menu.dart';
import 'package:portfolio/common/navigation/nav_bar/nav_bar_menu.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({
    required this.body,
    Key? key,
  }) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final showDrawer = constraints.maxWidth < 640;
        return Scaffold(
          appBar: NavBarMenu(
            showActions: !showDrawer,
            navigationItems: const [],
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: body,
            ),
          ),
          endDrawer: showDrawer ? const DrawerMenu() : null,
        );
      },
    );
  }
}
