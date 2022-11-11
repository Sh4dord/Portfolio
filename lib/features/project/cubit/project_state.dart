part of 'project_cubit.dart';

class ProjectState extends Equatable {
  const ProjectState({required this.projects});

  final List<ProjectEntity> projects;

  ProjectState copyWith({
    List<ProjectEntity>? projects,
  }) {
    return ProjectState(
      projects: projects ?? this.projects,
    );
  }

  @override
  List<Object?> get props => [projects];
}
