// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tool_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ToolDto _$ToolDtoFromJson(Map<String, dynamic> json) => ToolDto(
      title: json['title'] as String,
      icon: json['icon'] as String,
      url: json['url'] as String,
      category: json['category'] as String?,
    );

Map<String, dynamic> _$ToolDtoToJson(ToolDto instance) => <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'category': instance.category,
      'url': instance.url,
    };
