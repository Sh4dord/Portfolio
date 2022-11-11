import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:portfolio/common/widgets/section/section_widget.dart';
import 'package:portfolio/features/project/cubit/project_cubit.dart';
import 'package:portfolio/features/project/widgets/project_card_widget.dart';
import 'package:portfolio/utils/context_utils.dart';

class ProjectSectionWidget extends StatelessWidget {
  const ProjectSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectCubit>(
      create: (context) => ProjectCubit()..init(),
      child: SectionWidget(
        title: context.l10n.projectSectionTitle,
        subtitle: context.l10n.projectSectionSubtitle,
        child: BlocBuilder<ProjectCubit, ProjectState>(
          builder: (context, state) {
            if (state.projects.isEmpty) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return LayoutBuilder(
              builder: (context, constraints) {
                final columnNumber = min((constraints.maxWidth ~/ 250), state.projects.length);
                final rowNumber = state.projects.length / columnNumber;
                return LayoutGrid(
                  columnSizes: List.generate(
                    columnNumber,
                    (index) => 1.fr,
                  ),
                  rowSizes: List.generate(
                    rowNumber.ceil(),
                    (index) => auto,
                  ),
                  rowGap: 40,
                  columnGap: 40,
                  children: state.projects.map((e) => ProjectCardWidget(project: e)).toList(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
