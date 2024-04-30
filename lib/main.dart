import 'dart:async';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'app.dart';
import 'common_libs.dart';
import 'controller/logic/app_logic.dart';

FutureOr<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  AppLogic appLogic = Get.put(AppLogic());
  runApp(const App());
  await appLogic.bootstrap();
  FlutterNativeSplash.remove();
}