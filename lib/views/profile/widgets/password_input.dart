part of "auth_view.dart";

class PasswordInput extends HookConsumerWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final _passwordVisibility = useState(false);

    final _provider = ref.watch(profileProvider.select((p) => p.password));
    final _status = ref.watch(coreProvider.select((p) => p.status));

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
      onChanged: (value) => ref.read(profileProvider).updatePassword(
            value,
          ),
    );
  }
}
