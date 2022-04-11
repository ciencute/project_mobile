import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_mobile/shared/constants/common.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../category/view/category_screen.dart';
import '../../detail/view/detail_screen.dart';
import '../../home/view/home_screen.dart';
import '../../profile/view/profile_screen.dart';
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
    const DetailScreen(),
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
              colors: [Color(0xFF141e30), Color(0xFF243b55)])),
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
                    Textlabel1('Home'),
                    Textlabel1('Play'),
                    Textlabel1('Search'),
                    Textlabel1('Profile'),
                  ],
                  height: 55,
                  circleWidth: 55,
                  onChanged: (value) {
                    _cubit.changePage(value);
                    pageController.jumpToPage(value);
                  },
                  gradient: LinearGradient(colors: [
                    const Color(0xFF243b55).withOpacity(0.8),
                    const Color(0xFFA6A1E0)
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
                  elevation: 1.5,
                );
              })),
    );
  }
}
