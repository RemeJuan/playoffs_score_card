part of "auth_view.dart";

class PasswordInput extends HookWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _passwordVisibility = useState(false);
    final _provider = context.select<ProfileProvider, String>(
      (p) => p.password,
    );
    final _status = context.select<ProfileProvider, AuthStatus>(
      (p) => p.status,
    );
    return TextFormField(
      initialValue: _provider,
      enabled: _status == AuthStatus.None,
      obscureText: !_passwordVisibility.value,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Password',
        suffixIcon: IconButton(
          icon: Icon(
            _passwordVisibility.value ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () =>
              _passwordVisibility.value = !_passwordVisibility.value,
        ),
      ),
      onChanged: (value) => context.read<ProfileProvider>().updatePassword(
            value,
          ),
    );
  }
}
