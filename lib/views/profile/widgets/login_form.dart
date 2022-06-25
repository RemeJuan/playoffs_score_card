part of "auth_view.dart";

class LoginForm extends HookWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _provider = sl<ProfileProvider>();

    return Column(
      children: [
        const EmailInput(),
        const PasswordInput(),
        const SizedBox(
          height: AppTheme.paddingDefault,
        ),
        TextButton(
          onPressed: _provider.forgotPassword,
          child: const Text(
            'Forgot Password',
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppTheme.paddingDefault),
          child: ElevatedButton(
            onPressed: _provider.loginUser,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: AppTheme.paddingDefault * 2,
                vertical: AppTheme.paddingDefault * 0.5,
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
