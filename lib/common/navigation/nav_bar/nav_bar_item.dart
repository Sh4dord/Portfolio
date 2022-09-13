import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    required this.text,
    required this.onTap,
    this.fontSize,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: colors.neutral.v30,
      highlightColor: colors.neutral.v20,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline6?.copyWith(
                color: colors.neutral.v70,
                fontSize: fontSize,
              ),
        ),
      ),
    );
  }
}
