part of "package:playoffs_score_card/views/profile/profile.view.dart";

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
