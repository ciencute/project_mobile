import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../routes/app_pages.dart';
import '../../constants/colors.dart';
import '../../constants/common.dart';
import '../../styles/heading_style/heading_text_style.dart';
import '../image_widget/fcore_image.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FCoreImage(
            ImageConstants.imageEmpty,
            height: DEFAULT_HEIGHT * 0.7,
            width: DEFAULT_HEIGHT * 0.7,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 32,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Routes.DASHBOARD);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 12),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
                borderRadius: BorderRadius.circular(64),
                gradient: const LinearGradient(
                    tileMode: TileMode.clamp,
                    stops: [1.0, 1.0],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topLeft,
                    colors: [
                      AppColors.gradient2BackgroundColor,
                      AppColors.gradient1BackgroundColor,
                    ]),
              ),
              child: TextHeading1('Go Back Home'),
            ),
          )
        ],
      ),
    );
  }
}
