import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/tool/dtos/tool_dto.dart';

class ToolEntity extends Equatable {
  final String title;
  final IconData icon;
  final Color? color;
  final String url;

  const ToolEntity({
    required this.title,
    required this.icon,
    required this.url,
    this.color,
  });

  factory ToolEntity.fromDto(ToolDto dto) {
    return ToolEntity(
      title: dto.title,
      icon: IconData(
        int.parse(dto.icon),
        fontFamily: 'FontAwesomeBrands',
        fontPackage: 'font_awesome_flutter',
      ),
      color: dto.color != null ? Color(int.parse(dto.color!)) : null,
      url: dto.url,
    );
  }

  @override
  List<Object?> get props => [
        title,
        icon,
        color,
        url,
      ];
}
