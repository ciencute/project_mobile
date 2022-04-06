import 'package:flutter/material.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

import '../../../resource/assets_constant/icon_constants.dart';
import '../../constants/colors.dart';
import '../../styles/heading_style/heading_text_style.dart';
import '../image_widget/fcore_image.dart';

PreferredSizeWidget appbar(BuildContext context, String s,
    {String? APP_NAME, IconButton? leadingIcon, String? avatar}) {
  return AppBar(
      title: APP_NAME != null ? TextHeading1(APP_NAME) : null,
      elevation: 0,
      flexibleSpace: Container(
        color: AppColors.secondTextColorLight,
      ),
      centerTitle: true,
      leading: leadingIcon ??
          IconButton(
            icon: const Icon(Icons.arrow_back_rounded, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
      actions: [
        WidgetCircularAnimator(
                    size: 250,
          innerIconsSize: 3,
          outerIconsSize: 3,
          innerAnimation: Curves.easeInOutBack,
          outerAnimation: Curves.easeInOutBack,
          innerColor: Colors.deepPurple,
          outerColor: Colors.orangeAccent,
          innerAnimationSeconds: 10,
          outerAnimationSeconds: 10,
          child: Container(
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[200]),
            child: avatar != null
                ? FCoreImage(
                    IconConstants.iconSearch,
                    fit: BoxFit.contain,
                  )
                : Icon(
                    Icons.person_outline,
                    color: Colors.deepOrange[200],
                    size: 60,
                  ),
          ),
        )
      ]);
}
