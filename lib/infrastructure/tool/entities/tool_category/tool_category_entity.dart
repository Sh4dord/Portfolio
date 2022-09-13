import 'package:equatable/equatable.dart';
import 'package:portfolio/infrastructure/tool/dtos/tool_category_dto.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_category/tool_category_name_enum.dart';
import 'package:portfolio/utils/enum_utils.dart';

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

  factory ToolCategoryEntity.fromDto(ToolCategoryDto dto) {
    return ToolCategoryEntity(
      title: dto.title,
      name: EnumUtils.stringToEnum(dto.name, ToolCategoryName.values) ?? ToolCategoryName.SOFTWARE,
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
