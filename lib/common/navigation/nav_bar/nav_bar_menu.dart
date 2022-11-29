import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/common/navigation/nav_bar/nav_bar_icon.dart';
import 'package:portfolio/common/navigation/nav_bar/nav_bar_item.dart';
import 'package:portfolio/common/navigation/navigation_item.dart';
import 'package:portfolio/features/home/home_module.dart';
import 'package:portfolio/features/project/project_module.dart';
import 'package:portfolio/features/tool/tool_module.dart';
import 'package:portfolio/theme/assets/assets.theme.dart';
import 'package:portfolio/theme/bloc/theme.cubit.dart';
import 'package:portfolio/theme/bloc/theme.state.dart';

class NavBarMenu extends StatelessWidget implements PreferredSizeWidget {
  const NavBarMenu({
    required this.navigationItems,
    required this.showActions,
    Key? key,
  }) : super(key: key);

  final List<NavigationItem> navigationItems;
  final bool showActions;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return AppBar(
        title: const Text('Hello'),
        actions: showActions
            ? [
                NavBarItem(
                  text: 'Home',
                  onTap: () => Modular.to.pushReplacementNamed(HomeModule.moduleRouteName),
                ),
                NavBarItem(text: 'About', onTap: () => {}),
                NavBarItem(text: 'Tech Stack', onTap: () => {}),
                NavBarItem(
                  text: 'Projects',
                  onTap: () => Modular.to.pushReplacementNamed(ProjectModule.moduleRouteName),
                ),
                NavBarItem(
                  text: 'Tools',
                  onTap: () => Modular.to.pushReplacementNamed(ToolsModule.moduleRouteName),
                ),
                NavBarIcon(
                  iconPath: AssetsTheme.github,
                  onTap: () => {},
                ),
                NavBarIcon(
                  iconPath: AssetsTheme.twitter,
                  onTap: () => {},
                ),
                NavBarIcon(
                  iconPath: AssetsTheme.linkedin,
                  onTap: () => {},
                ),
                BlocBuilder<ThemeCubit, ThemeState>(
                    bloc: Modular.get<ThemeCubit>(),
                    builder: (context, state) {
                      return NavBarItem(
                        text: state.isDarkMode ? '🌞' : '🌙',
                        onTap: Modular.get<ThemeCubit>().toggleTheme,
                        fontSize: 18,
                      );
                    }),
              ]
            : [],
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
