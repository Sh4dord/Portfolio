import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stack_entity.g.dart';

@JsonSerializable()
class StackEntity extends Equatable {
  final String title;
  final String imageUrl;

  const StackEntity({
    required this.title,
    required this.imageUrl,
  });

  factory StackEntity.fromJson(Map<String, dynamic> json) => _$StackEntityFromJson(json);

  Map<String, dynamic> get toJson => _$StackEntityToJson(this);

  @override
  List<Object> get props => [title, imageUrl];
}
