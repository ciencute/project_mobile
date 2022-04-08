import 'package:get/get.dart';
import 'package:project_mobile_app/modules/category/view/category_screen.dart';
import 'package:project_mobile_app/modules/profile/view/profile_screen.dart';
import '../modules/auth/onboarding/view/onboarding_screen.dart';
import '../modules/auth/sign_in/view/sign_in_screen.dart';
import '../modules/auth/sign_up/view/sign_up_screen.dart';
import '../modules/dashboard/view/dashboard_screen.dart';
import '../modules/detail/view/detail_screen.dart';
import '../modules/home/view/home_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(name: Routes.SIGN_IN, page: () => const SignInScreen()),
  GetPage(name: Routes.SIGN_UP, page: () => const SignUpScreen()),
  GetPage(name: Routes.ONBOARDING, page: () => const OnboardingScreen()),
  GetPage(name: Routes.DASHBOARD, page: () => const DashBoardScreen()),
  GetPage(name: Routes.HOME, page: () => const HomeScreen()),
  GetPage(name: Routes.DETAIL, page: () => const DetailScreen()),
  GetPage(name: Routes.PROFILE, page: () => const ProfileScreen()),
  GetPage(name: Routes.CATEGORY, page: () => const CategoryScreen()),
];
