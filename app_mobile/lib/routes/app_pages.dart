import 'package:app_mobile/modules/auth/type_option/type_option_screen.dart';
import 'package:app_mobile/modules/profile/acount_infos/view/acount_infos_screen.dart';
import 'package:app_mobile/modules/profile/fvt_actors/view/fvt_actors_screen.dart';

import 'package:get/get.dart';

import '../modules/auth/onboarding/view/onboarding_screen.dart';
import '../modules/auth/sign_in/view/sign_in_screen.dart';
import '../modules/auth/sign_up/view/sign_up_screen.dart';
import '../modules/dashboard/view/dashboard_screen.dart';
import '../modules/detail/view/detail_screen.dart';
import '../modules/home/view/home_screen.dart';
import '../modules/search/view/search_screen.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(name: Routes.SIGN_IN, page: () => const SignInScreen()),
  GetPage(name: Routes.SIGN_UP, page: () => const SignUpScreen()),
  GetPage(name: Routes.ONBOARDING, page: () => const OnboardingScreen()),
  GetPage(name: Routes.DASHBOARD, page: () => const DashBoardScreen()),
  GetPage(name: Routes.HOME, page: () => const HomeScreen()),

  GetPage(name: Routes.TYPEOPTION, page: () => const TypeOntion()),
  GetPage(name: Routes.SEARCH, page: () => const SearchScreen()),
  GetPage(name: Routes.ACOUNTINFO, page: () => const AcountInfoScreen()),
  GetPage(name: Routes.FVTACTORS, page: () => const FavoriteActorsScreen()),
  GetPage(name: Routes.FVTACTORS, page: () => const FavoriteActorsScreen()),
  // GetPage(name: Routes.FVTFILMS, page: () => const FavoriteFilmsScreen()),
];
