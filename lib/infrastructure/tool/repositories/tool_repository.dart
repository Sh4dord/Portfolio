import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/infrastructure/common/repository_adapter.dart';
import 'package:portfolio/infrastructure/tool/dtos/tool_dto.dart';
import 'package:portfolio/infrastructure/tool/entities/tool_entity.dart';

class ToolRepository extends RepositoryAdapter<ToolEntity> {
  final _collection = FirebaseFirestore.instance.collection('tools');
  @override
  Future<List<ToolEntity>> findAll() async {
    final response = await _collection.get();
    final result = response.docs.map((e) => ToolDto.fromJson(e.data()));
    return result.map((e) => ToolEntity.fromDto(e)).toList();
  }

  @override
  Future<ToolEntity> findOne() {
    // TODO: implement findOne
    throw UnimplementedError();
  }

}