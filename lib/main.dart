import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:proyect_chordnotes/config/routes/global_route_get.dart';
import 'package:proyect_chordnotes/ui/themes/theme_data/global_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Write Music',
      themeMode: ThemeMode.light,
      theme: GlobalThemData.lightThemeData,
      darkTheme: GlobalThemData.darkThemeData,
      debugShowCheckedModeBanner: false,
      getPages: GlobalRouteGet.routes,
      initialRoute: GlobalRouteGet.initialRoute,
    );
  }
}
