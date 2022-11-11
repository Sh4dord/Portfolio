import 'package:equatable/equatable.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_category/tool_category_name_enum.dart';

class ToolCategoryEntity extends Equatable {
  final String title;
  final ToolCategoryName name;

  const ToolCategoryEntity({
    required this.title,
    required this.name,
  });

  ToolCategoryEntity copyWith({
    String? title,
    ToolCategoryName? name,
  }) {
    return ToolCategoryEntity(
      title: title ?? this.title,
      name: name ?? this.name,
    );
  }

  @override
  String toString() {
    return 'ToolCategoryEntity{title: $title, name: $name}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        title,
        name,
      ];
}
