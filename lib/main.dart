import 'dart:io' as io;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:strive_flow/core/colors/app_theme_extension.dart';
import 'package:strive_flow/core/navigation/go_router_routes.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:strive_flow/domain/models/principle/principle.dart';
import 'package:strive_flow/hive_registrar.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && (io.Platform.isAndroid || io.Platform.isIOS)) {
    final dir = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(dir.path);
  } else {
    Hive.initFlutter(); // Works for web and desktop
  }
  Hive.registerAdapters();
  await Hive.openBox<Principle>('principles');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        extensions: [
          appThemeExtension,
        ]
      ),
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
