part of "auth_view.dart";

class EmailInput extends HookWidget {
  const EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final _email = context.select<ProfileProvider, String>(
      (p) => p.email,
    );
    final _status = context.select<ProfileProvider, AuthStatus>(
      (p) => p.status,
    );

    return TextFormField(
      initialValue: _email,
      enabled: _status == AuthStatus.None,
      decoration: const InputDecoration(
        border: UnderlineInputBorder(),
        labelText: 'Email Address',
      ),
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => context.read<ProfileProvider>().updateEmail(value),
      validator: (value) {
        final validEmail = RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
        ).hasMatch(value!);
        if (!validEmail) {
          return 'Please enter a valid email address';
        }
        return null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
