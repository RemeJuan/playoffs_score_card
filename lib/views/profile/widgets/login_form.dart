part of "auth_view.dart";

class LoginForm extends HookWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _provider = sl<ProfileProvider>();
    final _errorMessage = context.select<ProfileProvider, String>(
      (p) => p.errorMessage,
    );
    final _status = context.select<ProfileProvider, AuthStatus>(
      (p) => p.status,
    );
    if (_status == AuthStatus.LoggedIn) {
      Navigator.of(context).pop();
    }

    return Column(
      children: [
        const EmailInput(),
        const PasswordInput(),
        const SizedBox(height: AppTheme.paddingDefault),
        TextButton(
          onPressed: _provider.forgotPassword,
          child: const Text(
            'Forgot Password',
          ),
        ),
        if (_errorMessage.isNotEmpty)
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppTheme.paddingDefault,
            ),
            child: Text(
              _errorMessage,
              style: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        if (_status == AuthStatus.None)
          Container(
            padding: const EdgeInsets.all(AppTheme.paddingDefault),
            child: ElevatedButton(
              onPressed: () => _provider.loginUser(),
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
        if (_status == AuthStatus.LoggingIn)
          const Center(
            child: CircularProgressIndicator(),
          ),
      ],
    );
  }
}
