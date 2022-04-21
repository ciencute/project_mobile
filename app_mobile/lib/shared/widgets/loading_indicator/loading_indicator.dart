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
}
