import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/infrastructure/common/repository_adapter.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';

class ToolRepository extends RepositoryAdapter<ToolEntity> {
  final _toolsCollection = FirebaseFirestore.instance.collection('tools');
  final _toolsCategoriesCollection = FirebaseFirestore.instance.collection('tools_categories');

  @override
  Future<List<ToolEntity>> findAll() {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<ToolEntity> findOne() {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool> insertAll(List<ToolEntity> entities) {
    // TODO: implement insertAll
    throw UnimplementedError();
  }

  @override
  Future<bool> insertOne(ToolEntity entity) {
    // TODO: implement insertOne
    throw UnimplementedError();
  }
}