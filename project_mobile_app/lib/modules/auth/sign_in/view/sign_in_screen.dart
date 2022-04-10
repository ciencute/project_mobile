import 'package:faded_widget/faded_widget.dart';
import 'package:flutter/material.dart';
import 'package:project_mobile_app/resource/assets_constant/images_constants.dart';
import 'package:project_mobile_app/shared/constants/common.dart';
import 'package:project_mobile_app/shared/widgets/argon_button/argon_button_widget.dart';
import 'package:project_mobile_app/shared/widgets/image_widget/fcore_image.dart';
import 'package:project_mobile_app/shared/widgets/text_input_widget/text_input_widget.dart';
part 'sign_in_screen.childern.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.grey, Colors.transparent],
                  ).createShader(Rect.fromLTRB(2, 1, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: FCoreImage(
                  ImageConstants.imageBackgroundLogin,
                  height: DEFAULT_HEIGHT,
                  width: DEFAULT_WIDTH,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          widget._formLogin()
        ],
      ),
    );
  }
}
