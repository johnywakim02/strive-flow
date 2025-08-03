import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:strive_flow/core/navigation/go_router_routes.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (io.Platform.isAndroid || io.Platform.isIOS)) {
    final dir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(dir.path);
  } else {
    Hive.initFlutter(); // Works for web and desktop
  }

  var box = await Hive.openBox('testBox'); // open a box and get the instance to it
  await box.put('test', 'test_data'); // store a value
  var name = box.get('test'); // retrieve a value
  debugPrint(name);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: router,
    );
  }
}
