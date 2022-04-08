import 'package:flutter/material.dart';
import 'package:project_mobile_app/shared/widgets/search_bar_widget/search_bar_widget.dart';
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
       // SearchBarWidget(),
        Padding(
          padding: const EdgeInsets.only(
            right: 12
          ),
          child: WidgetCircularAnimator(
            size: 55,
            innerIconsSize: 1,
            outerIconsSize: 1,
            innerAnimation: Curves.easeInOutBack,
            outerAnimation: Curves.easeInOutBack,
            innerColor: Colors.deepPurple,
            outerColor: Colors.orangeAccent,
            innerAnimationSeconds: 5,
            outerAnimationSeconds: 5,
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
                      size: 40,
                    ),
            ),
          ),
        )
      ]);
}
