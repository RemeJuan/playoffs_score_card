part of "auth_view.dart";

class PasswordInput extends ConsumerWidget {
  const PasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final _passwordVisibility = useState(false);
    final _provider = ref
        .watch(profileProvider)
        .password;
    final _status = ref
        .watch(coreProvider)
        .status;

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
      onChanged: (value) =>
          ref.read(profileProvider).updatePassword(
            value,
          ),
    );
  }
}
