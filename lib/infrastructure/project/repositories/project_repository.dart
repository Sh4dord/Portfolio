import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/infrastructure/common/repository_adapter.dart';
import 'package:portfolio/infrastructure/project/entities/project_entity.dart';

class ProjectRepository extends RepositoryAdapter<ProjectEntity> {
  final _projectCollection = FirebaseFirestore.instance.collection('proects');

  @override
  Future<List<ProjectEntity>> findAll() async {
    try {
      final response = await _projectCollection.get();
      return response.docs.map((e) => ProjectEntity.fromJson(e.data())).toList();
    } catch (e) {
      throw Exception();
    }
  }

  @override
  Future<ProjectEntity> findOne() {
    // TODO: implement findOne
    throw UnimplementedError();
  }

  @override
  Future<bool> insertAll(List<ProjectEntity> entities) async {
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
  Future<bool> insertOne(ProjectEntity entity) async {
    try {
      await _projectCollection.add(entity.toJson);
      return true;
    } catch (e) {
      throw Exception();
    }
  }
}
