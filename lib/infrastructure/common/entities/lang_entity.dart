import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'lang_entity.g.dart';

@JsonSerializable()
class LangEntity {
  final String en;
  final String fr;

  const LangEntity({
    required this.en,
    required this.fr,
  });

  String toLocal(BuildContext context) {
    if (Localizations.localeOf(context).languageCode == 'FR') {
      return fr;
    }
    return en;
  }

  factory LangEntity.fromJson(Map<String, dynamic> json) => _$LangEntityFromJson(json);
}
