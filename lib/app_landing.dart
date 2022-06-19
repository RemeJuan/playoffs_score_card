import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playoffs_score_tracker/router/app_router.dart';

class AppLanding extends HookWidget {
  AppLanding({Key? key}) : super(key: key);

  final pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(context) {
    final page = useState<int>(0);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppRouter.routes[page.value].title,
          style: TextStyle(
            color: HexColor("#fb053e"),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: HexColor("0c0033"),
      ),
      resizeToAvoidBottomInset: true,
      body: PageView(
        controller: pageController,
        children: AppRouter.routes.map((route) {
          return route.page;
        }).toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: page.value,
        onTap: (index) {
          pageController.animateToPage(
            index,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );

          page.value = index;
        },
        items: AppRouter.routes.map((route) {
          return BottomNavigationBarItem(
            icon: Icon(route.icon),
            label: route.label,
          );
        }).toList(),
      ),
    );
  }
}
