import 'package:flutter/material.dart';
import 'package:portfolio/common/navigation/nav_bar/nav_bar_icon.dart';
import 'package:portfolio/common/navigation/nav_bar/nav_bar_item.dart';
import 'package:portfolio/common/navigation/navigation_item.dart';

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
                NavBarItem(text: 'Home', onTap: () => {}),
                NavBarItem(text: 'About', onTap: () => {}),
                NavBarItem(text: 'Tech Stack', onTap: () => {}),
                NavBarItem(text: 'Projects', onTap: () => {}),
                NavBarItem(text: 'Contact', onTap: () => {}),
                NavBarIcon(iconPath: 'assets/svg/icons/github_icon.svg', onTap: () => {}),
                NavBarIcon(iconPath: 'assets/svg/icons/twitter_icon.svg', onTap: () => {}),
                NavBarIcon(iconPath: 'assets/svg/icons/linkedin_icon.svg', onTap: () => {}),
              ]
            : [],
      );
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
