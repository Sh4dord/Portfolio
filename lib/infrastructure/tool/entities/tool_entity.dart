import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/tool/dtos/tool_dto.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_category/tool_category_name_enum.dart';
import 'package:portfolio/utils/enum_utils.dart';

class ToolEntity extends Equatable {
  final String title;
  final IconData icon;
  final ToolCategoryName category;
  final String url;

  const ToolEntity({
    required this.title,
    required this.icon,
    required this.url,
    this.category = ToolCategoryName.UNKNOWN,
  });

  factory ToolEntity.fromDto(ToolDto dto) {
    return ToolEntity(
      title: dto.title,
      icon: IconData(
        int.parse(dto.icon),
        fontFamily: 'FontAwesomeBrands',
        fontPackage: 'font_awesome_flutter',
      ),
      category: EnumUtils.stringToEnum(dto.category, ToolCategoryName.values) ?? ToolCategoryName.UNKNOWN,
      url: dto.url,
    );
  }

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
