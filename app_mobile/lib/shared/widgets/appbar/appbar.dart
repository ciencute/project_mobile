import 'package:app_mobile/shared/styles/heading_style/heading_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../constants/colors.dart';
import '../../constants/common.dart';

PreferredSizeWidget appbar(BuildContext context,
    {String title = APP_NAME, bool? isRequired = true}) {
  return AppBar(
    title: TextHeading1(
      title,
      color: Colors.white,
    ),
    elevation: 0,
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            AppColors.gradient2BackgroundColor,
            AppColors.gradient1BackgroundColor
          ],
        ),
      ),
    ),
    centerTitle: true,
    leading: isRequired!
        ? IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        : null,
  );
}
