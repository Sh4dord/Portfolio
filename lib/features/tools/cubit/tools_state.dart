part of 'tools_cubit.dart';

class ToolsState extends Equatable {
  final List<ToolEntity> tools;
  final List<ToolEntity> filteredTools;

  const ToolsState({
     this.tools = const [],
     this.filteredTools = const [],
  });

  ToolsState copyWith({
    List<ToolEntity>? tools,
    List<ToolEntity>? filteredTools,
  }) {
    return ToolsState(
      tools: List.unmodifiable(tools ?? this.tools),
      filteredTools: List.unmodifiable(filteredTools ?? this.filteredTools),
    );
  }

  @override
  List<Object> get props => [
        tools,
        filteredTools,
      ];
}
