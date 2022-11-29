import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:portfolio/core/app.dart';
import 'package:portfolio/core/app_module.dart';

Future<void> main() async {
  setUrlStrategy(PathUrlStrategy());

  //await ScreenUtil.ensureScreenSize();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: String.fromEnvironment('FIREBASE_API_KEY'),
      appId: String.fromEnvironment('FIREBASE_APP_ID'),
      messagingSenderId: String.fromEnvironment('FIREBASE_SENDER_ID'),
      projectId: String.fromEnvironment('FIREBASE_PROJECT_ID'),
    ),
  );

  runApp(ModularApp(
    module: AppModule(),
    child: App(),
  ));
}
