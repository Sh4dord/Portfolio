import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/core/app.dart';
import 'package:portfolio/core/app_module.dart';

void main() {
  runApp(ModularApp(
    module: AppModule(),
    child: App(),
  ));
}
