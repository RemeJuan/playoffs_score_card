import 'package:auto_route/auto_route.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(resolver, router) async {
    const isAuthed = true;
    if (isAuthed) {
      // if user is authenticated we continue
      resolver.next(true);
    } else {
      // we redirect the user to our login page
      // router.replace(const LoginRoute());
    }
  }
}
