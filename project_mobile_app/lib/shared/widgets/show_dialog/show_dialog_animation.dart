import 'dart:async';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';

Future<void> showDialogWidget(BuildContext context,
    {required Widget widgetChild, Function()? onConfirm}) async {
  await showGeneralDialog(
    barrierDismissible: false,
    transitionDuration: const Duration(milliseconds: 700),
    context: context,
    pageBuilder: (context, __, ___) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: AppColors.secondBackgroundColorLight,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: widgetChild),
        ),
      );
    },
    transitionBuilder: (context, anim, __, child) {
      return SlideTransition(
        position: Tween(begin: const Offset(0, 1.5), end: const Offset(0, 0))
            .animate(anim),
        child: child,
      );
    },
  );
}
