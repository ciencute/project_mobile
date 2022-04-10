import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project_mobile_app/shared/styles/heading_style/heading_text_style.dart';
import '../../constants/common.dart';

class ArgonButtonWidget extends StatelessWidget {
  const ArgonButtonWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ArgonButton(
  height: 50,
  width: DEFAULT_WIDTH,
  borderRadius: 24.0,
  color: const Color(0xFF7866FE),
  child:  TextHeading1(
    'Login',
    textAlign: TextAlign.center,
    
  ),
  loader: Container(
    padding: const EdgeInsets.all(10),
    child: const SpinKitRotatingCircle(
      color: Colors.white,
      // size: loaderWidth ,
    ),
  ),
  onTap: (startLoading, stopLoading, btnState) {
    if (btnState == ButtonState.Idle) {
                 startLoading();
                }
  },
);
  }
}