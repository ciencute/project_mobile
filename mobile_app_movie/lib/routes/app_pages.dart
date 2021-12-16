import 'package:get/get.dart';
import '../modules/auth/binding/auth_binding.dart';
import '../modules/auth/view/auth_screen.dart';
import '../modules/dashboard/binding/dashboard_binding.dart';
import '../modules/dashboard/view/dashboard_screen.dart';
import '../modules/home/binding/home_binding.dart';
import '../modules/home/view/home_screen.dart';
part 'app_routes.dart';

final routePages = [
  GetPage(
      name: Routes.DASHBOARD,
      page: DashboardScreen.new,
      binding: DashboardBinding()),
    GetPage(
      name: Routes.HOME,
      page: HomeScreen.new,
      binding: HomeBinding()),
        GetPage(
      name: Routes.AUTH,
      page: AuthScreen.new,
      binding: AuthBinding())
];
