import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/theme/common/const/dimens.dart';

class StackCardWidget extends StatelessWidget {
  StackCardWidget({
    required this.title,
    required this.imageUrl,
    this.size = Dimens.spacing32,
    Key? key,
  }) : super(key: key);

  final String title;
  final String imageUrl;
  final double size;

  final ValueNotifier<bool> isTextVisible = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (details) => isTextVisible.value = true,
      onExit: (details) => isTextVisible.value = false,
      child: Padding(
        padding: const EdgeInsets.all(Dimens.spacing8),
        child: Column(
          children: [
            SvgPicture.network(
              imageUrl,
              height: size,
            ),
            const SizedBox(height: Dimens.spacing4),
            ValueListenableBuilder(
              valueListenable: isTextVisible,
              builder: (ctx, value, child) {
                return AnimatedOpacity(
                  duration: kThemeAnimationDuration,
                  opacity: value ? 1 : 0,
                  child: child,
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: Dimens.spacing8),
                decoration: BoxDecoration(
                  color: colors.neutral.v60.withOpacity(0.08),
                  borderRadius: Dimens.borderRadius12,
                ),
                child: Text(title),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
