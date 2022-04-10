part of 'sign_in_screen.dart';

extension _SignInScreenChildren on SignInScreen {
  Widget _formLogin() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextInputLogin(
            hint: 'User Name',
            obscureText: true,
          ),
          const SizedBox(
            height: 24,
          ),
          TextInputLogin(
            hint: 'Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 32,
          ),
          ArgonButtonWidget()
        ],
      ),
    );
  }
}
