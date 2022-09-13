import 'package:json_annotation/json_annotation.dart';

part 'tool_category_dto.g.dart';

@JsonSerializable()
class ToolCategoryDto {
  final String title;
  final String name;

  const ToolCategoryDto({
    required this.title,
    required this.name,
  });

  @override
  String toString() {
    return 'ToolCategoryDto{title: $title, name: $name}';
  }

  factory ToolCategoryDto.fromJson(Map<String, dynamic> json) => _$ToolCategoryDtoFromJson(json);
}
