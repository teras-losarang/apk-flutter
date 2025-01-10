import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:myapp/app.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:myapp/data/repositories/auth/auth_repository.dart';

void main() async {
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await dotenv.load(fileName: ".env");

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  Get.put(AuthRepository());

  runApp(const App());
}
