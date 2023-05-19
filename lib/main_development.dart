import 'package:flutter/material.dart';
import 'package:flutter_clean/environment/app_env.dart';
import 'package:flutter_clean/environment/flavor_enviroment.dart';
import 'package:flutter_clean/presentation/pages/app/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppEnv.initial(FlavorEnviroment.development.value);
  runApp(const App());
}
