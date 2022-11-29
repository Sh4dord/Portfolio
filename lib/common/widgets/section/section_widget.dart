import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/section/section_texts_widget.dart';
import 'package:portfolio/theme/common/const/dimens.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    required this.child,
    this.title,
    this.subtitle,
    Key? key,
  }) : super(key: key);

  final String? title;
  final String? subtitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.spacing64,
        vertical: Dimens.spacing8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (title != null || subtitle != null) ...[
            SectionTextsWidget(
              title: title,
              subtitle: subtitle,
            ),
            const SizedBox(height: Dimens.spacing16),
          ],
          child,
        ],
      ),
    );
  }
}
