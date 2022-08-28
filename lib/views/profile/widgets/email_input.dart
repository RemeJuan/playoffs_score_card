part of "auth_view.dart";

class EmailInput extends ConsumerWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    final _email = ref.watch(profileProvider).email;
    final _status = ref.watch(coreProvider).status;

    return TextFormField(
      initialValue: _email,
      enabled: _status == AuthStatus.None,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Email Address',
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => ref.read(profileProvider).updateEmail(value),
      validator: (value) {
        final validEmail = ref.read(coreProvider).checkEmail(value);
        if (!validEmail) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
