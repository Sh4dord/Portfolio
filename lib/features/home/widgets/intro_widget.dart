import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/section/section_widget.dart';
import 'package:portfolio/theme/common/const/dimens.dart';
import 'package:portfolio/utils/context_utils.dart';

class IntroWidget extends StatelessWidget {
  const IntroWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.spacing64),
      child: SectionWidget(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.headline1,
                children: [
                  TextSpan(text: '${context.l10n.homeWelcome1}\n'),
                  TextSpan(text: '${context.l10n.homeWelcome2}\n'),
                  TextSpan(text: '${context.l10n.homeWelcome3}\n'),
                  TextSpan(text: '${context.l10n.homeWelcome4}\n'),
                ],
              ),
            ),
            Container(
              height: Dimens.spacing64,
              width: Dimens.spacing64,
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ),
    );
  }
}
