import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/theme/app_theme.dart';

class NavBarIcon extends StatelessWidget {
  const NavBarIcon({
    required this.iconPath,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String iconPath;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: SvgPicture.asset(
          iconPath,
          color: colors.neutral.v70,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}
