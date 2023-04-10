import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../controller/splash_controller.dart';
import '../../../controller/theme_controller.dart';


class BaseBindings implements Bindings {
  @override
  void dependencies() async {
    Get.put(SplashScreenViewModel());
    // Get.put(ThemeController(sharedPreferences: Get.find()));
    // Get.lazyPut(()=>ThemeController(sharedPreferences: Get.find()));
    final sharedPreferences = await SharedPreferences.getInstance();
    Get.lazyPut(() => sharedPreferences);
  }
}
// Future<Map<String, Map<String, String>>> init() async {
//   Get.put(SplashScreenViewModel());
//   Get.put(ThemeController(sharedPreferences: Get.find()));
//   Get.lazyPut(()=>ThemeController(sharedPreferences: Get.find()));
//   final sharedPreferences = await SharedPreferences.getInstance();
//   Get.lazyPut(() => sharedPreferences);
// }