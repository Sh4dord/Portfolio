import 'package:flutter/material.dart';
import 'package:portfolio/theme/app_theme.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({
    this.color,
    Key? key,
  }) : super(key: key);

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator.adaptive(
        valueColor: AlwaysStoppedAnimation<Color>(color ?? colors.white),
        strokeWidth: 2,
      ),
    );
  }
}
