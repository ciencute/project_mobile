import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../resource/assets_constant/icon_constants.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/constants/storage.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/styles/style.dart';
import '../../../shared/widgets/carousel_widget/carousel_widget.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';
import '../../detail/view/detail_screen.dart';
import '../../movies_category/view/movies_category_screen.dart';
import '../../movies_top10/view/movies_top10_screen.dart';
import '../cubit/home_cubit.dart';

part 'home_screen.children.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
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
    super.build(context);
    final sharedPreferences = Get.find<SharedPreferences>();
    return BlocBuilder<HomeCubit, HomeState>(
        bloc: _cubit,
        builder: (context, state) {
          if (state.loadStatus == LoadStatus.loading) {
            return LoadingCommon().loadingWidget();
          } else if (state.loadStatus == LoadStatus.success) {
            if (state.homeModel != null) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 24),
                    widget._headerPage(
                        avatar: sharedPreferences
                                .getString(StorageConstants.avatar) ??
                            ImageConstants.imageAvatar,
                        name: sharedPreferences
                                .getString(StorageConstants.userName) ??
                            'Name',
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
                        typeActions: _cubit.lstTypeAction(),
                        onConfirm: (value) {
                          switch (value) {
                            case 0:
                              Get.to(const MoviesCategoryScreen());
                              break;
                            case 1:
                              Get.to(const MoviesCategoryScreen());
                              break;
                            case 2:
                              Get.to(const MoviesTop10Screen());
                              break;
                            case 3:
                              Get.to(const MoviesCategoryScreen());
                              break;
                              break;
                            default:
                              Get.to(const MoviesCategoryScreen());
                          }
                        },
                        context: context),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: CommonConstants.kDefaultPadding,
                      ),
                      child: TextHeading3(
                          state.homeModel?.movies?.mostViewMovies?.name),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._lstMovie(
                        lstMovies:
                            state.homeModel?.movies?.mostViewMovies?.data ?? [],
                        onConfirm: (value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      id: value,
                                    )),
                          );
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: CommonConstants.kDefaultPadding,
                      ),
                      child: TextHeading3(
                          state.homeModel?.movies?.animationMovies?.name),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._lstMovie(
                        lstMovies:
                            state.homeModel?.movies?.animationMovies?.data ??
                                [],
                        onConfirm: (value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      id: value,
                                    )),
                          );
                        }),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: CommonConstants.kDefaultPadding,
                      ),
                      child: TextHeading3(
                          state.homeModel?.movies?.latestMovies?.name),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._lstMovie(
                        lstMovies:
                            state.homeModel?.movies?.latestMovies?.data ?? [],
                        onConfirm: (value) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailScreen(
                                      id: value,
                                    )),
                          );
                        }),
                    const SizedBox(
                      height: 32,
                    ),
                  ],
                ),
              );
            } else {
              const Center(
                child: Text('Không có dữ liệu '),
              );
            }
          }

          return Container();
        });
  }

  @override
  bool get wantKeepAlive => true;
}
