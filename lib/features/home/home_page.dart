import 'package:flutter/material.dart';
import 'package:portfolio/common/scaffold/custom_scaffold.dart';
import 'package:portfolio/features/home/widgets/intro/intro_widget.dart';
import 'package:portfolio/features/project/widgets/project_section_widget.dart';
import 'package:portfolio/features/stack/widgets/stack_section_widget.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';

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
        children: const [
          IntroWidget(),
          StacksSectionWidget(),
          ProjectSectionWidget(),
        ],
      ),
    );
  }
}
