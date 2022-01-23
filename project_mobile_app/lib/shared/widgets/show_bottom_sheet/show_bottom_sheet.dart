import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ShowBottomSheet {
  Future<void> showBottomSheet({
    required Widget child,
    required BuildContext context,
    Color? colors,
  }) async {
    await showModalBottomSheet<dynamic>(
        useRootNavigator: false,
        isScrollControlled: true,
        context: context,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0))),
        backgroundColor: colors ?? AppColors.secondBackgroundColorLight,
        builder: (BuildContext bc) {
          return child;
        });
  }
}
