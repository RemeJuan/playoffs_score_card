part of "auth_view.dart";

class PasswordInput extends HookWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _passwordVisibility = useState(false);
    final _provider = context.select<ProfileProvider, String>(
      (p) => p.password,
    );

    return TextFormField(
      initialValue: _provider,
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
