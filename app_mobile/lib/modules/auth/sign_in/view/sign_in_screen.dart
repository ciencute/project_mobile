import 'package:argon_buttons_flutter/argon_buttons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../resource/assets_constant/images_constants.dart';
import '../../../../shared/constants/common.dart';
import '../../../../shared/widgets/argon_button/argon_button_widget.dart';
import '../../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../../shared/widgets/text_input_widget/text_input_widget.dart';
import '../cubit/sign_in_cubit.dart';

part 'sign_in_screen.childern.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _emailController = TextEditingController(text: '');
  final _passwordController = TextEditingController(text: '');
  late SignInCubit _cubit;
  @override
  void initState() {
    _cubit = SignInCubit(
        movieAppRepository:Get.find());
    super.initState();
    _emailController.addListener(() {
      _cubit.emailChange(_emailController.text);
    });
    _passwordController.addListener(() {
      _cubit.passChange(_passwordController.text);
    });
    
  }

  @override
  void dispose() {
    _cubit.close();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      bloc: _cubit,
      builder: (context, state) {
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
                      ).createShader(
                          Rect.fromLTRB(2, 1, rect.width, rect.height));
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
              widget._formLogin(
                  emailController: _emailController,
                  passwordController: _passwordController,
                  onTap: (startLoading, stopLoading, btnState) {
                    if (btnState == ButtonState.Idle) {
                      startLoading();
                      _cubit.signIn(
                          username: _emailController.text,
                          password: _passwordController.text);
                      stopLoading();
                    }
                  })
            ],
          ),
        );
      },
    );
  }
}
