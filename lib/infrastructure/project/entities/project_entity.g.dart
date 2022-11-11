// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectEntity _$ProjectEntityFromJson(Map<String, dynamic> json) => ProjectEntity(
      title: LangEntity.fromJson(json['title'] as Map<String, dynamic>),
      description: LangEntity.fromJson(json['description'] as Map<String, dynamic>),
      stack: json['stack'] as String,
      image: json['image'] as String,
      color: HexColor.fromHex(json['color'] as String),
      gitLink: json['gitLink'] as String?,
    );

Map<String, dynamic> _$ProjectEntityToJson(ProjectEntity instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'stack': instance.stack,
      'image': instance.image,
      'color': HexColor.toHex(instance.color),
      'gitLink': instance.gitLink,
    };
