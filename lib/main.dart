import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:portfolio/core/app.dart';
import 'package:portfolio/core/app_module.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options:  const FirebaseOptions(
      apiKey: 'AIzaSyCJqB9eMGYd3rPV0sdcJpdjKv0V0NAK50s',
      appId: '1:777424958835:web:d70ace24d11e66f652c106',
      messagingSenderId: '777424958835',
      projectId:'portfolio-ebaa5',
    ),/*FirebaseOptions(
      apiKey: String.fromEnvironment("FIREBASE_API_KEY"),
      appId: String.fromEnvironment("FIREBASE_APP_ID"),
      messagingSenderId: String.fromEnvironment("FIREBASE_SENDER_ID"),
      projectId: String.fromEnvironment("FIREBASE_PROJECT_ID"),
    ),*/
  );

  runApp(ModularApp(
    module: AppModule(),
    child: App(),
  ));
}
