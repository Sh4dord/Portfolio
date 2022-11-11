import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/common/widgets/circular_indicator_widget.dart';
import 'package:portfolio/common/widgets/link_with_icon_widget.dart';
import 'package:portfolio/infrastructure/firebase_storage/firebase_storage_repository.dart';
import 'package:portfolio/infrastructure/project/entities/project_entity.dart';
import 'package:portfolio/theme/common/const/dimens.dart';

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({required this.project, Key? key}) : super(key: key);

  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height / 5,
            ),
            padding: const EdgeInsets.all(Dimens.spacing16),
            color: project.color,
            child: FutureBuilder<String>(
                future: Modular.get<FirebaseStorageRepository>().getDocument(project.image),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return CachedNetworkImage(
                      imageUrl: snapshot.data ?? '',
                      placeholder: (ctx, value) {
                        return const CircularIndicatorWidget();
                      },
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                      height: 300,
                    );
                  }
                  return const SizedBox.shrink();
                }),
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
                  project.title.toLocal(context),
                  style: Theme.of(context).textTheme.headline5,
                  maxLines: 1,
                ),
                const SizedBox(height: 8),
                Text(
                  project.description.toLocal(context),
                  style: Theme.of(context).textTheme.bodyText2,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
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
                        text: project.stack,
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LinkWithIconWidget(
                      text: 'Live Preview',
                      icon: Icons.access_alarms_sharp,
                      onPressed: () => {},
                    ),
                    LinkWithIconWidget(
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
