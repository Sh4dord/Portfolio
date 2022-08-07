import 'package:equatable/equatable.dart';

class ProjectEntity extends Equatable {
  final String id;
  final String title;
  final String description;
  final List<String> stacks;
  final String imagePath;
  final String? gitLink;

  const ProjectEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.stacks,
    required this.imagePath,
    this.gitLink,
  });

  @override
  String toString() {
    return 'ProjectEntity{id: $id, title: $title, description: $description, stacks: $stacks, imagePath: $imagePath, gitLink: $gitLink}';
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        stacks,
        imagePath,
        gitLink,
      ];
}
