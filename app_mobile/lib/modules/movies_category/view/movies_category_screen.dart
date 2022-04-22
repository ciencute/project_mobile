import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/appbar/appbar.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';
import '../cubit/movies_category_cubit.dart';

part 'movies_category_screen.children.dart';

class MoviesCategoryScreen extends StatefulWidget {
  const MoviesCategoryScreen({Key? key}) : super(key: key);

  @override
  State<MoviesCategoryScreen> createState() => _MoviesCategoryScreenState();
}

class _MoviesCategoryScreenState extends State<MoviesCategoryScreen>
    with SingleTickerProviderStateMixin {
  late MoviesCategoryCubit _cubit;

  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();

    _cubit = MoviesCategoryCubit(movieAppRepository: Get.find());

    _cubit.getDataLoadmore(id: 12);
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, title: 'Danh sách Phim'),
        backgroundColor: AppColors.gradient2BackgroundColor,
        body: Scrollbar(
          isAlwaysShown: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<MoviesCategoryCubit, MoviesCategoryState>(

                bloc: _cubit,
                builder: (context, state) {
                  List<UIItem> lstUiItem = [];
                  if (state.loadStatus == LoadStatus.loading) {
                    return LoadingCommon().loadingWidget();
                  } else if (state.lstUiItem.isNotEmpty) {
                    lstUiItem.addAll(state.lstUiItem);
                  }
                  bool isLoadMore = state.loadStatus == LoadStatus.loadingMore;
                  if (lstUiItem.isEmpty) {
                    const Center(
                      child: Text('Chưa có phim nào!'),
                    );
                  }

                  return ListView.separated(
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        if (index < lstUiItem.length) {
                          return widget._itemMovie(movie: lstUiItem[index]);
                        } else {
                          return LoadingCommon().loadMoreItem();
                        }
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                            height: 12,
                          ),
                      itemCount: isLoadMore
                          ? (lstUiItem.length + 1)
                          : lstUiItem.length);
                }
                
                
                ),
          ),
        ));
  }

  void _onScroll() async {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _cubit.fetchMoreData(id: 12);
    }
  }
}
