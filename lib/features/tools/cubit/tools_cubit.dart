import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';
import 'package:portfolio/infrastructure/tool/repositories/tool_repository.dart';

part 'tools_state.dart';

class ToolsCubit extends Cubit<ToolsState> {
  final _toolRepository = Modular.get<ToolRepository>();
  final TextEditingController searchController = TextEditingController(text: '');

  ToolsCubit() : super(const ToolsState());

  Future<void> init() async {
    try {
      final result = await _toolRepository.findAll();
      searchController.text = '';
      emit(state.copyWith(
        tools: result,
        filteredTools: result,
      ));
    } catch (e) {
      return;
    }
  }

  void onSearchChanged(String? value) {
    if (value == null || value.isEmpty) {
      return emit(state.copyWith(filteredTools: state.tools));
    }
    final filtered = state.tools
        .where((element) => element.title.contains(value))
        .toList();
    return emit(state.copyWith(filteredTools: filtered));
  }
}
