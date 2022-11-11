import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/infrastructure/common/repository_adapter.dart';
import 'package:portfolio/infrastructure/stack/entities/stack_entity.dart';

class StackRepository extends RepositoryAdapter<StackEntity> {
  final _stacksCollection = FirebaseFirestore.instance.collection('stacks');
  final _stacksCategoriesCollection = FirebaseFirestore.instance.collection('stacks_categories');

  @override
  Future<List<StackEntity>> findAll() async {
    final response = await _stacksCollection.get();
    return response.docs.map((e) => StackEntity.fromJson(e.data())).toList();
  }

  @override
  Future<StackEntity> findOne() async {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool> insertAll(List<StackEntity> entities) async {
    try {
      for (var element in entities) {
        insertOne(element);
      }
      return true;
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<bool> insertOne(StackEntity entity) async {
    try {
      await _stacksCollection.add(entity.toJson);
      return true;
    } catch (e) {
      throw Exception();
    }
  }
}
