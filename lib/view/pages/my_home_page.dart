import '../../common_libs.dart';
import '../../controller/logic/app_logic.dart';
import '../../flavors.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppLogic appLogic = Get.find();
    return Obx(() => appLogic.isInternetConnected.value
        ? Scaffold(
            appBar: AppBar(
              title: Text(F.title),
            ),
            body: Center(
              child: Text(
                'Hello ${F.title}',
              ),
            ),
          )
        : const Scaffold(
            body: Center(
              child: Text('No internet connection'),
            ),
          ));
  }
}
