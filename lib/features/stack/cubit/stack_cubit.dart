import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/infrastructure/stack/entities/stack_entity.dart';
import 'package:portfolio/infrastructure/stack/repositories/stack_repository.dart';

part 'stack_state.dart';

class StackCubit extends Cubit<StackState> {
  final _stackRepository = Modular.get<StackRepository>();

  StackCubit() : super(const StackState(stacks: []));

  Future<void> init() async {
    try {
      final result = await _stackRepository.findAll();
      emit(state.copyWith(stacks: result));
    } catch (e) {}
  }
}
