
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:jobsin/utils/app_pages.dart';
import 'package:jobsin/utils/app_routes.dart';
import 'package:jobsin/utils/dark.dart';
import 'package:jobsin/utils/light.dart';
import 'package:jobsin/views/pages/home/home.dart';
import 'package:jobsin/views/widgets/toggle_button.dart';
import 'controller/theme_controller.dart';
import 'utils/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}


class MyApp extends StatelessWidget {

   MyApp({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {

      return GetMaterialApp(

        // theme: Themes.light,
        // darkTheme: Themes.dark,
        // themeMode: ThemeService().theme,
        // theme: themeController.darkTheme ? dark : light,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.system,
        title: 'Billion Dollar App',
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.fadeIn,
        getPages: AppPages.routes,
        initialRoute: Routes.SPLASH,
      );

  }
}