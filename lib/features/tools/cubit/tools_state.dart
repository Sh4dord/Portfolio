part of 'tools_cubit.dart';

class ToolsState extends Equatable {
  final List<ToolEntity> tools;
  final List<ToolEntity> filteredTools;
  final List<ToolCategoryEntity> categories;

  const ToolsState({
    this.tools = const [],
    this.filteredTools = const [],
    this.categories = const [],
  });

  ToolsState copyWith({
    List<ToolEntity>? tools,
    List<ToolEntity>? filteredTools,
    List<ToolCategoryEntity>? categories,
  }) {
    return ToolsState(
      tools: List.unmodifiable(tools ?? this.tools),
      filteredTools: List.unmodifiable(filteredTools ?? this.filteredTools),
      categories: List.unmodifiable(categories ?? this.categories),
    );
  }

  @override
  List<Object> get props => [
        tools,
        filteredTools,
        categories,
      ];
}
