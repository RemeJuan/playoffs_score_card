part of "auth_view.dart";

class LoginForm extends HookWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _emailController = useTextEditingController();
    final _passController = useTextEditingController();
    final _provider = sl<ProfileProvider>();

    return Column(
      children: [
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Email Address',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        TextField(
          controller: _passController,
          obscureText: true,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Password',
          ),
        ),
        const SizedBox(
          height: AppTheme.paddingDefault,
        ),
        TextButton(
          onPressed: () => _provider.forgotPassword(_emailController.text),
          child: const Text(
            'Forgot Password',
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppTheme.paddingDefault),
          child: ElevatedButton(
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
            onPressed: () => _provider.loginUser(),
          ),
        ),
      ],
    );
  }
}
