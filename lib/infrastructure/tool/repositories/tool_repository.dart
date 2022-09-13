import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/infrastructure/common/repository_adapter.dart';
import 'package:portfolio/infrastructure/tool/dtos/tool_category_dto.dart';
import 'package:portfolio/infrastructure/tool/dtos/tool_dto.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_category/tool_category_entity.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';

class ToolRepository extends RepositoryAdapter<ToolEntity> {
  final _toolsCollection = FirebaseFirestore.instance.collection('tools');
  final _toolsCategoriesCollection = FirebaseFirestore.instance.collection('tools_categories');

  @override
  Future<List<ToolEntity>> findAll() async {
    final response = await _toolsCollection.get();
    final result = response.docs.map((e) => ToolDto.fromJson(e.data()));
    return result.map((e) => ToolEntity.fromDto(e)).toList();
  }

  @override
  Future<ToolEntity> findOne() {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  Future<List<ToolCategoryEntity>> findCategories() async {
    final response = await _toolsCategoriesCollection.get();
    final result = response.docs.map((e) => ToolCategoryDto.fromJson(e.data()));
    return result.map((e) => ToolCategoryEntity.fromDto(e)).toList();
  }
}