import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/infrastructure/project/entities/project_entity.dart';
import 'package:portfolio/infrastructure/project/repositories/project_repository.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  final _projectRepository = Modular.get<ProjectRepository>();

  ProjectCubit() : super(const ProjectState(projects: []));

  Future<void> init() async {
    try {
      final result = await _projectRepository.findAll();
      emit(state.copyWith(projects: result));
    } catch (e) {}
  }
}
