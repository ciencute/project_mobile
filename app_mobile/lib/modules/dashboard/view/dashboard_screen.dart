import 'package:app_mobile/shared/styles/body_style/body_text_style.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../category/view/category_screen.dart';
import '../../detail/view/detail_screen.dart';
import '../../home/view/home_screen.dart';

import '../../play_now/view/play_now_screen.dart';
import '../../profile/profile_home/view/profile_screen.dart';
import '../cubit/dashboard_cubit.dart';

final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  final pages = [
    Navigator(
      key: homeNavigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      },
    ),
    // const HomePage(),
    // const GroupPage(),
    // const DetailScreen(),
    const PlayNowScreen(),
    const CategoryScreen(),
    const ProfileScreen(),
  ];
  final pageController = PageController();
  late DashboardCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = DashboardCubit();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DEFAULT_HEIGHT,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              tileMode: TileMode.clamp,
              stops: [0.4, 1.0],
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
                AppColors.gradient1BackgroundColor,
                AppColors.gradient2BackgroundColor
              ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            children: pages,
          ),
          bottomNavigationBar: BlocBuilder<DashboardCubit, DashboardState>(
              bloc: _cubit,
              buildWhen: (prev, current) {
                return prev.pageIndex != current.pageIndex;
              },
              builder: (_, state) {
                return CircleNavBar(
                  initIndex: state.pageIndex,
                  activeIcons: const [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: FCoreImage(
                        IconConstants.iconMenuHome,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: FCoreImage(
                          IconConstants.iconPlay,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: FCoreImage(
                          IconConstants.iconSearch,
                          color: Colors.white,
                        )),
                    Padding(
                        padding: EdgeInsets.all(15),
                        child: FCoreImage(
                          IconConstants.iconProfile,
                          color: Colors.white,
                        )),
                  ],
                  inactiveIcons: [
                    Textbody1('Home'.toUpperCase()),
                    Textbody1('Play'.toUpperCase()),
                    Textbody1('Category'.toUpperCase()),
                    Textbody1('Profile'.toUpperCase()),
                  ],
                  height: 55,
                  circleWidth: 55,
                  onChanged: (value) {
                    _cubit.changePage(value);
                    pageController.jumpToPage(value);
                  },
                  gradient: const LinearGradient(colors: [
                    AppColors.colorDark,
                    AppColors.gradient2BackgroundColor
                  ]),
                  color: Colors.white,
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  cornerRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  //shadowColor: Colors.cyan.shade300,
                );
              })),
    );
  }
}
