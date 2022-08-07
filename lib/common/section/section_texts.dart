import 'package:flutter/material.dart';

class SectionTexts extends StatelessWidget {
  const SectionTexts({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
