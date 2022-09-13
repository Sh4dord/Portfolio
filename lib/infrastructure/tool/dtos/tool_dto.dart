

import 'package:json_annotation/json_annotation.dart';

part 'tool_dto.g.dart';

@JsonSerializable()
class ToolDto {
  final String title;
  final String icon;
  final String? category;
  final String url;

  const ToolDto({
    required this.title,
    required this.icon,
    required this.url,
    this.category,
  });

  @override
  String toString() {
    return 'ToolDto{title: $title, icon: $icon, category: $category, url: $url}';
  }

  factory ToolDto.fromJson(Map<String, dynamic> json) => _$ToolDtoFromJson(json);
}