import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:portfolio/infrastructure/common/entities/lang_entity.dart';
import 'package:portfolio/utils/color_utils.dart';

part 'project_entity.g.dart';

@JsonSerializable()
class ProjectEntity extends Equatable {
  final LangEntity title;
  final LangEntity description;
  final String stack;
  final String image;
  @JsonKey(fromJson: HexColor.fromHex, toJson: HexColor.toHex)
  final Color color;
  final String? gitLink;

  const ProjectEntity({
    required this.title,
    required this.description,
    required this.stack,
    required this.image,
    required this.color,
    this.gitLink,
  });

  factory ProjectEntity.fromJson(Map<String, dynamic> json) => _$ProjectEntityFromJson(json);

  Map<String, dynamic> get toJson => _$ProjectEntityToJson(this);

  @override
  String toString() {
    return 'ProjectEntity{ title: $title, description: $description, stacks: $stack, imagePath: $image, gitLink: $gitLink}';
  }

  @override
  List<Object?> get props => [
        title,
        description,
        stack,
        image,
        gitLink,
      ];
}
