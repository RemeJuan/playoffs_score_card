import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playoffs_score_card/core/providers/core_provider.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/profile/provider/profile.provider.dart';
import 'package:provider/provider.dart';

part "confirm_input.dart";
part "dialog.dart";
part "email_input.dart";
part "login_form.dart";
part "password_input.dart";
part "register_form.dart";

enum Screen {
  login,
  register,
}

class AuthView extends HookWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    final currentView = useState(Screen.login);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          currentView.value == Screen.login ? "Login" : "Register",
          style: TextStyle(
            color: AppTheme.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppTheme.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(AppTheme.paddingDefault * 2),
        child: Column(
          children: [
            currentView.value == Screen.login
                ? const LoginForm()
                : const RegisterForm(),
            currentView.value == Screen.login
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have account?"),
                      TextButton(
                        child: const Text('Register'),
                        onPressed: () {
                          //signup screen
                          currentView.value = Screen.register;
                        },
                      )
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have account?"),
                      TextButton(
                        child: const Text('Log in'),
                        onPressed: () {
                          //login screen
                          currentView.value = Screen.login;
                        },
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
