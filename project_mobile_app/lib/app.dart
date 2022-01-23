import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'routes/app_pages.dart';

class MoveApp extends StatelessWidget {
  const MoveApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      defaultTransition: Transition.fade,
      getPages: routePages,
      initialRoute: Routes.HOME,
    );
  }
}