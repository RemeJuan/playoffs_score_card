part of "auth_view.dart";

class RegisterForm extends HookWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _emailController = useTextEditingController();
    final _passController = useTextEditingController();
    final _confirmController = useTextEditingController();

    final _confirmPasswordVisibility = useState(false);

    final _passwordsMatch = useState(false);
    final _provider = sl<ProfileProvider>();

    return Column(
      children: [
        if (_provider.errorMessage.isNotEmpty)
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppTheme.paddingDefault,
            ),
            child: Text(_provider.errorMessage),
          ),
        TextField(
          controller: _emailController,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Email Address',
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const PasswordInput(),
        const ConfirmPasswordInput(),
        const SizedBox(
          height: AppTheme.paddingDefault,
        ),
        TextButton(
          onPressed: _emailController.text.isNotEmpty
              ? () => _provider.forgotPassword(_emailController.text)
              : null,
          child: const Text(
            'Forgot Password',
          ),
        ),
        Container(
          padding: const EdgeInsets.all(AppTheme.paddingDefault),
          child: ElevatedButton(
            onPressed:
                _passwordsMatch.value ? () => _provider.createNewUser() : null,
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
}
