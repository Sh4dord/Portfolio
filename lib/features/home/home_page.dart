import 'package:flutter/material.dart';
import 'package:portfolio/common/scaffold/custom_scaffold.dart';
import 'package:portfolio/features/projects/widgets/project_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
