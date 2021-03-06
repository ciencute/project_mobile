part of 'sign_in_screen.dart';

extension _SignInScreenChildren on SignInScreen {
  Widget _formLogin(
      {required TextEditingController emailController,
      required TextEditingController passwordController,
      required VoidCallback onTap}) {
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
          InkWell(
            onTap: () => onTap(),
            child: Container(
              width: DEFAULT_WIDTH,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: const Color(0xFF7866FE),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextHeading1(
                'Login',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          // ArgonButtonWidget(onTap:onTap)
        ],
      ),
    );
  }
}
