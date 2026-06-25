import 'package:flutter/material.dart';
import 'package:aqarati_app/app/app.dart';
import 'package:aqarati_app/core/di/dependency_injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await setupDependencyInjection();

  runApp(const AqaratiApp());
}
