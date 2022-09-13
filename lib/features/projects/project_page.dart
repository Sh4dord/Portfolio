import 'package:flutter/material.dart';
import 'package:portfolio/common/scaffold/custom_scaffold.dart';
import 'package:portfolio/features/projects/widgets/project_section.dart';

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
          ProjectSection(),
        ],
      ),
    );
  }
}
