import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: colors.background,
      child: Column(
        children: const [
          DrawerHeader(
            child: CircleAvatar(
              child: Text('NR'),
            ),
          ),
        ],
      ),
    );
  }
}
