import 'package:app_mobile/shared/styles/heading_style/heading_text_style.dart';
import 'package:app_mobile/shared/styles/label_style/label_text_style.dart';
import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../constants/common.dart';

class ArgonButtonWidget extends StatelessWidget {
  final Function(Function onClick, ButtonState? onLoading) onTap;
  const ArgonButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArgonTimerButton(
      loader: (timeLeft) {
        return const Text(
          'load',
        );
      },
      height: 50,
      width: DEFAULT_WIDTH,
      borderRadius: 24.0,
      color: const Color(0xFF7866FE),
      child: TextHeading1(
        'Login',
        textAlign: TextAlign.center,
      ),
      onTap: onTap,
    );
  }
}
