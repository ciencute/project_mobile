import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../detail/view/detail_screen.dart';
import '../../home/view/home_screen.dart';
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
    const DetailScreen(),
    const DetailScreen(),
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
    return Scaffold(
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
                      child: FCoreImage(IconConstants.iconPlay,
                       
                      color: Colors.white,)),
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: FCoreImage(IconConstants.iconSearch,
                        color: Colors.white,)),
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: FCoreImage(IconConstants.iconProfile,
                        color: Colors.white,)),
                ],
                inactiveIcons: [
                  Textlabel1('Home'),
                  Textlabel1('Play'),
                  Textlabel1('Search'),
                  Textlabel1('Profile'),
                ],
                height: 60,
                circleWidth: 60,
                onChanged: (value) {
                  _cubit.changePage(value);
                  pageController.jumpToPage(value);
                },
                gradient: LinearGradient(colors: [
                  AppColors.primaryColorLight.withOpacity(0.7),
                  AppColors.primaryColorLight.withOpacity(0.4),
                ]),
                color: Colors.white,
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
                cornerRadius: const BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                ),
                shadowColor: Colors.cyan.shade300,
                elevation: 5,
              );
            }));
  }
}
