import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';
import 'package:portfolio/common/projet_card/project_card.dart';
import 'package:portfolio/common/scaffold/custom_scaffold.dart';
import 'package:portfolio/common/section/section.dart';
import 'package:portfolio/infrastructure/project/entities/project_entity.dart';

class ProjectPage extends StatefulWidget {
  static const String routeName = '/';
  const ProjectPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          Section(
            title: 'Title',
            subtitle: 'Subtitle',
            child: LayoutGrid(
              columnSizes: [1.fr, 1.fr, 1.fr],
              rowSizes: const [auto, auto, auto],
              rowGap: 40,
              columnGap: 40,
              children: [
                ...List.generate(6, (index) => index)
                    .map((e) => const ProjectCard(
                          project: ProjectEntity(
                            id: 'NBUHBDFHZBF',
                            title: 'Project Tile goes here',
                            description:
                                'This is sample project description random things are here in description This is sample project lorem ipsum generator for dummy content',
                            stacks: ['HTML', 'JavaScript', 'PHP'],
                            imagePath: 'assets/png/project_1.png',
                          ),
                        ))
                    .toList(),
              ],
            ),

            /*GridView.builder(
              itemCount: 6,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                crossAxisCount: 3,
              ),
              itemBuilder: (cx, index) {
                return ProjectCard(
                  project: ProjectEntity(
                    id: 'NBUHBDFHZBF',
                    title: 'Project Tile goes here $index',
                    description: '',
                    stacks: const ['HTML', 'JavaScript', 'PHP'],
                    imagePath: 'assets/png/project_1.png',
                  ),
                );
              },
            ),*/
          ),
        ],
      ),
    );
  }
}
