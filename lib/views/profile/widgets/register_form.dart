part of "auth_view.dart";

class RegisterForm extends HookWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _provider = context.read<ProfileProvider>();
    final _errorMessage = context.select<ProfileProvider, String>(
          (p) => p.errorMessage,
    );
    final _status = context.select<ProfileProvider, AuthStatus>(
          (p) => p.status,
    );

    dialog() => _showDialog(context, _status);

    useEffect(() {
      dialog();
    }, [_status]);

    return Column(
      children: [
        const EmailInput(),
        const PasswordInput(),
        const ConfirmPasswordInput(),
        const SizedBox(
          height: AppTheme.paddingDefault,
        ),
        TextButton(
          onPressed: () => _provider.forgotPassword(),
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
        Container(
          padding: const EdgeInsets.all(AppTheme.paddingDefault),
          child: ElevatedButton(
            onPressed: () => _provider.createNewUser(),
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
      ],
    );
  }

  void _showDialog(BuildContext context, AuthStatus _status) {
    if (_status == AuthStatus.Registering) {
      LoadingDialog.show(context, const CircularProgressIndicator());
    } else if (_status == AuthStatus.Success) {
      LoadingDialog.hide(context);
      LoadingDialog.show(
        context,
        const Center(
          child: Text('Success! You are now being logged in'),
        ),
      );
    } else if (_status == AuthStatus.LoggedIn) {
      LoadingDialog.hide(context);
      Navigator.pop(context);
    }
  }
}
