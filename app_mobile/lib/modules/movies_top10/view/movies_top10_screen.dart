import 'dart:async';

import 'package:app_mobile/modules/movies_top10/state/moves_top10_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
import '../cubit/movies_top10_cubit.dart';

part 'movies_top10_screen.children.dart';

class MoviesTop10Screen extends StatefulWidget {
  const MoviesTop10Screen({Key? key}) : super(key: key);

  @override
  State<MoviesTop10Screen> createState() => _MoviesTop10ScreenState();
}

class _MoviesTop10ScreenState extends State<MoviesTop10Screen> {
  late MoviesTop10Cubit _cubit;

  @override
  void initState() {
    super.initState();

    _cubit = MoviesTop10Cubit(movieAppRepository: Get.find());
    _cubit.getMoviesTopView();
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, title: 'Top 10 MOVIES'),
        backgroundColor: AppColors.gradient2BackgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          // child: Text('data'),
          child: BlocBuilder<MoviesTop10Cubit, MoviesTop10State>(
              bloc: _cubit,
              builder: (context, state) {
                if (state.loadStatus == LoadStatus.loading) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(120),
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballScaleMultiple,
                        colors: AppColors.primaryColorLoadingIndicator,
                        strokeWidth: 7,
                      ),
                    ),
                  );
                }

                return ListView.separated(
                    itemBuilder: (context, index) {
                      return widget._moviesTopScreen(
                          uiItem: state.lstUiItem?[index] ?? UIItem());
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 12,
                      );
                    },
                    itemCount: state.lstUiItem?.length ?? 0);
              }),
        ));
  }
}
