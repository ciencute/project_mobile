import 'package:app_mobile/shared/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../../constants/colors.dart';

class LoadingCommon {
  Widget loadingWidget() {
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

  Widget loadMoreItem() {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 80,
            width: 80,
            child: LoadingIndicator(
              indicatorType: Indicator.pacman,
              colors: AppColors.primaryColorLoadingIndicator,
              strokeWidth: 7,
            ),
          ),
          SizedBox(
            height: 24,
          )
        ],
      ),
    );
  }
}
