import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_category/tool_category_name_enum.dart';

part 'tool_entity.g.dart';

@JsonSerializable()
class ToolEntity extends Equatable {
  final String title;

  @JsonKey(name: 'icon')
  final String rawIcon;
  final ToolCategoryName category;
  final String url;

  const ToolEntity({
    required this.title,
    required this.rawIcon,
    required this.url,
    this.category = ToolCategoryName.UNKNOWN,
  });

  IconData get icon => IconData(
        int.parse(rawIcon),
        fontFamily: 'FontAwesomeBrands',
        fontPackage: 'font_awesome_flutter',
      );

  @override
  String toString() {
    return 'ToolEntity{title: $title, icon: $icon, category: $category, url: $url}';
  }

  @override
  List<Object?> get props => [
        title,
        icon,
        category,
        url,
      ];
}
