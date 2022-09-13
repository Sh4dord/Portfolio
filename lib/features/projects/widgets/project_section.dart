import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:portfolio/common/projet_card/project_card.dart';
import 'package:portfolio/common/section/section.dart';
import 'package:portfolio/infrastructure/project/entities/project_entity.dart';

class ProjectSection extends StatelessWidget {
  ProjectSection({Key? key}) : super(key: key);

  final items = List.generate(6, (index) => index)
      .map(
        (e) => const ProjectEntity(
          id: 'NBUHBDFHZBF',
          title: 'Project Tile goes here',
          description:
              'This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content',
          stacks: ['HTML', 'JavaScript', 'PHP'],
          imagePath: 'assets/png/project_1.png',
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Section(
      title: AppLocalizations.of(context).projectSectionTitle,
      subtitle: AppLocalizations.of(context).projectSectionSubtitle,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final columnNumber = min((constraints.maxWidth ~/ 250), items.length);
          final rowNumber = items.length / columnNumber;
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
            children: items.map((e) => ProjectCard(project: e)).toList(),
          );
        },
      ),
    );
  }
}
