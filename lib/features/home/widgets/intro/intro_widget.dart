import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/common/widgets/section/section_widget.dart';
import 'package:portfolio/features/home/widgets/intro/profile_picture_widget.dart';
import 'package:portfolio/theme/app_theme.dart';
import 'package:portfolio/theme/common/const/dimens.dart';
import 'package:portfolio/utils/context_utils.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.spacing32),
      child: SectionWidget(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.homeWelcome1,
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  context.l10n.homeWelcome2,
                  style: Theme.of(context).textTheme.headline2,
                ),
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => gradients.mainGradient.gradient.createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  ),
                  child: Text(
                    context.l10n.homeWelcome3,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                Text(
                  context.l10n.homeWelcome4,
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            ProfilePictureWidget(
              size: 350.w,
            ),
          ],
        ),
      ),
    );
  }
}
