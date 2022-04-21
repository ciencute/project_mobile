import 'package:app_mobile/routes/app_pages.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:get/get.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/styles/style.dart';
import '../../../shared/widgets/carousel_widget/carousel_widget.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../movies_category/view/movies_category_screen.dart';
import '../cubit/home_cubit.dart';
part 'home_screen.children.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit _cubit;
  @override
  void initState() {
    super.initState();
    _cubit = HomeCubit(movieAppRepository: Get.find());
    _cubit.getData();
  }

  @override
  void dispose() {
    super.dispose();
    _cubit.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state.homeModel != null) {
            if (state.loadStatus == LoadStatus.loading) {
              return const Padding(
                padding: EdgeInsets.all(32),
                child: SpinKitThreeInOut(
                  color: Colors.blue,
                  size: 50.0,
                ),
              );
            } else if (state.loadStatus == LoadStatus.success) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    widget._headerPage(
                        avatar: ImageConstants.imageAvatar,
                        name: 'Kien',
                        description: 'Check for latest addition.'),
                    widget._research(),
                    const SizedBox(
                      height: 16,
                    ),
                    CarouselWidget(
                      items: state.homeModel?.slider ?? [],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._typeAction(
                        typeActions: _cubit.lstTypeAction(), context: context),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: CommonConstants.kDefaultPadding,
                      ),
                      child: TextHeading3(
                          state.homeModel?.movies.mostViewMovies?.name),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._lstMovie(
                        lstMovies:
                            state.homeModel?.movies.mostViewMovies?.data ?? []),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: CommonConstants.kDefaultPadding,
                      ),
                      child: TextHeading3(
                          state.homeModel?.movies.animationMovies?.name),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._lstMovie(
                        lstMovies:
                            state.homeModel?.movies.animationMovies?.data ??
                                []),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: CommonConstants.kDefaultPadding,
                      ),
                      child: TextHeading3(
                          state.homeModel?.movies.latestMovies?.name),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._lstMovie(
                        lstMovies:
                            state.homeModel?.movies.latestMovies?.data ?? []),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              );
            }
          }

          return Container();
        });
  }
}
