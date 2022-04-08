import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';
import 'shared/theme/theme_data.dart';

class MoveApp extends StatelessWidget {
  const MoveApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeConfig.lightTheme,
      debugShowCheckedModeBanner: false,
      enableLog: true,
      defaultTransition: Transition.fade,
      initialRoute: Routes.DASHBOARD,
      getPages: routePages,
     
    );
  }
}
