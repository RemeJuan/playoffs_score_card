part of "auth_view.dart";

class ConfirmPasswordInput extends HookWidget {
  const ConfirmPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _confirmVisibility = useState(false);
    final _provider = context.select<ProfileProvider, String>(
      (p) => p.confirmPassword,
    );
    final _status = context.select<ProfileProvider, AuthStatus>(
      (p) => p.status,
    );

    return TextFormField(
      initialValue: _provider,
      enabled: _status == AuthStatus.None,
      obscureText: !_confirmVisibility.value,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Confirm Password',
        suffixIcon: IconButton(
          icon: Icon(
            _confirmVisibility.value ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () => _confirmVisibility.value = !_confirmVisibility.value,
        ),
      ),
      onChanged: (value) =>
          context.read<ProfileProvider>().updateConfirmPassword(
                value,
              ),
    );
  }
}
