// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToolEntity _$ToolEntityFromJson(Map<String, dynamic> json) => ToolEntity(
      title: json['title'] as String,
      rawIcon: json['icon'] as String,
      url: json['url'] as String,
      category: $enumDecodeNullable(_$ToolCategoryNameEnumMap, json['category']) ?? ToolCategoryName.UNKNOWN,
    );

Map<String, dynamic> _$ToolEntityToJson(ToolEntity instance) => <String, dynamic>{
      'title': instance.title,
      'icon': instance.rawIcon,
      'category': _$ToolCategoryNameEnumMap[instance.category]!,
      'url': instance.url,
    };

const _$ToolCategoryNameEnumMap = {
  ToolCategoryName.CICD: 'CICD',
  ToolCategoryName.FLUTTER: 'FLUTTER',
  ToolCategoryName.SOFTWARE: 'SOFTWARE',
  ToolCategoryName.DESIGN: 'DESIGN',
  ToolCategoryName.UNKNOWN: 'UNKNOWN',
};
