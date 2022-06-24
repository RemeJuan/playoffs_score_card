part of "package:playoffs_score_card/views/profile/profile.view.dart";

class RegisterForm extends HookWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _emailController = useTextEditingController();
    final _passController = useTextEditingController();
    final _confirmController = useTextEditingController();
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
        TextField(
          controller: _confirmController,
          obscureText: true,
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            labelText: 'Confirm Password',
          ),
        ),
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
            onPressed: () => _provider.createNewUser(
              _emailController.text,
              _passController.text,
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
      ],
    );
  }
}
