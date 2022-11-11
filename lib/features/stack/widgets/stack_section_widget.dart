import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common/widgets/section/section_widget.dart';
import 'package:portfolio/features/stack/cubit/stack_cubit.dart';
import 'package:portfolio/features/stack/widgets/stack_card_widget.dart';
import 'package:portfolio/utils/context_utils.dart';

class StacksSectionWidget extends StatelessWidget {
  const StacksSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StackCubit>(
      create: (context) => StackCubit()..init(),
      child: SectionWidget(
        title: context.l10n.stackSectionTitle,
        subtitle: context.l10n.stackSectionSubtitle,
        child: BlocBuilder<StackCubit, StackState>(
          builder: (context, state) {
            return Wrap(
              alignment: WrapAlignment.center,
              spacing: 80,
              children: state.stacks
                  .map((e) => StackCardWidget(
                        title: e.title,
                        imageUrl: e.imageUrl,
                      ))
                  .toList(),
            );
          },
        ),
      ),
    );
  }
}
