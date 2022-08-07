import 'package:flutter/material.dart';
import 'package:portfolio/common/section/section_texts.dart';

class Section extends StatelessWidget {
  const Section({
    required this.title,
    required this.subtitle,
    required this.child,
    Key? key,
  }) : super(key: key);

  final String title;
  final String subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionTexts(
            title: title,
            subtitle: subtitle,
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }
}
