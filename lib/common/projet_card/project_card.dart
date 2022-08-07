import 'package:flutter/material.dart';
import 'package:portfolio/common/link_with_icon.dart';
import 'package:portfolio/infrastructure/project/project_entity.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({required this.project, Key? key}) : super(key: key);

  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 1,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            project.imagePath,
            fit: BoxFit.fitWidth,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 8,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 8),
                Text(
                  project.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(height: 8),
                Text(
                  project.description,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
                const SizedBox(height: 8),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Tech stack : ',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      TextSpan(
                        text: project.stacks.join(', '),
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LinkWithIcon(
                      text: 'Live Preview',
                      icon: Icons.access_alarms_sharp,
                      onPressed: () => {},
                    ),
                    LinkWithIcon(
                      text: 'View Code',
                      icon: Icons.gite,
                      onPressed: () => {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
