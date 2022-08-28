part of "auth_view.dart";

class ConfirmPasswordInput extends ConsumerWidget {
  const ConfirmPasswordInput({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final _confirmVisibility = useState(false);

    final confirmPass = ref.watch(profileProvider).confirmPassword;
    final _status = ref.watch(coreProvider).status;

    return TextFormField(
      initialValue: confirmPass,
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
      onChanged: (value) => ref.read(profileProvider).updateConfirmPassword(
            value,
          ),
    );
  }
}
