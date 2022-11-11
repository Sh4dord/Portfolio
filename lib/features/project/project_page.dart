import 'package:flutter/material.dart';
import 'package:portfolio/common/scaffold/custom_scaffold.dart';
import 'package:portfolio/features/project/widgets/project_section_widget.dart';

class ProjectPage extends StatelessWidget {
  static const String routeName = '/';

  const ProjectPage();

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: const [
          ProjectSectionWidget(),
        ],
      ),
    );
  }
}
