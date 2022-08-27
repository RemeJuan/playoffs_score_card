part of "auth_view.dart";

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _profileProvider = context.read<ProfileProvider>();
    final _coreProvider = context.read<CoreProvider>();
    final _errorMessage = context.select<CoreProvider, String>(
      (p) => p.errorMessage,
    );
    final _status = context.select<CoreProvider, AuthStatus>(
      (p) => p.status,
    );

    if (_status == AuthStatus.LoggedIn) {
      Navigator.of(context).pop();
    }

    return Column(
      children: [
        const EmailInput(),
        const PasswordInput(),
        const ConfirmPasswordInput(),
        const SizedBox(
          height: AppTheme.paddingDefault,
        ),
        TextButton(
          onPressed: () => _coreProvider.forgotPassword(
            _profileProvider.email,
          ),
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
              onPressed: () => _coreProvider.createNewUser(
                _profileProvider.email,
                _profileProvider.password,
                _profileProvider.confirmPassword,
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppTheme.paddingDefault * 2,
                  vertical: AppTheme.paddingDefault * 0.5,
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        if (_status == AuthStatus.Registering)
          const Center(
            child: CircularProgressIndicator(),
          ),
        if (_status == AuthStatus.Success)
          const Center(
            child: Text(
              'Registration Successful, you are now being logged in',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}
