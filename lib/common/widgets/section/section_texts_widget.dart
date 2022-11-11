import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_theme.dart';

class SectionTextsWidget extends StatelessWidget {
  const SectionTextsWidget({
    this.title,
    this.subtitle,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (title != null)
          Text(
            title!,
            style: Theme.of(context).textTheme.headline2,
          ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: colors.text.v90,
                ),
          ),
      ],
    );
  }
}
