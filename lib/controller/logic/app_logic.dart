import 'common/platform_info.dart';
import 'package:startup_app/common_libs.dart';

class AppLogic extends GetxController{

  RxBool isBootstrapComplete = RxBool(false);

  Size get deviceSize {
    final w = WidgetsBinding.instance.platformDispatcher.views.first;
    return w.physicalSize / w.devicePixelRatio;
  }

  bool get isDesktopOrTablet => PlatformInfo.isDesktopOrWeb || deviceSize.shortestSide > 480;


  Future<void> bootstrap() async {
    debugPrint('bootstrap app, deviceSize: $deviceSize, isTablet: $isDesktopOrTablet');
    // Default error handler
    FlutterError.onError = _handleFlutterError;
    debugPrint('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    debugPrint('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    debugPrint('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    debugPrint('go!');
    isBootstrapComplete.value = true;
    debugPrint('bootstrap completed');
  }
  void _handleFlutterError(FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
  }
}