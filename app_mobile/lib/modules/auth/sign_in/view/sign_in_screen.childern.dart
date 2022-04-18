part of 'sign_in_screen.dart';

extension _SignInScreenChildren on SignInScreen {
  Widget _formLogin(
      {required TextEditingController emailController,
      required TextEditingController passwordController,
      required Function(
              Function startLoading, Function stopLoading, ButtonState btnState)
          onTap}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInputLogin(
            controller: emailController,
            hint: 'User Name',
            obscureText: true,
          ),
          const SizedBox(
            height: 24,
          ),
          TextInputLogin(
            controller: passwordController,
            hint: 'Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 32,
          ),
          // ArgonButtonWidget(onTap:onTap)
          InkWell(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: const Color(0xFF7866FE),
                ),
                height: 50,
                width: DEFAULT_WIDTH,
                child: Center(
                  child: TextHeading1(
                    'Login',
                  ),
                )),
                onTap: (){
                  Get.toNamed(Routes.DASHBOARD);
                }
          ),
          
        ],
      ),
    );
  }
}
