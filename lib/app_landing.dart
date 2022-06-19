import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:playoffs_score_tracker/router/app_router.dart';
import 'package:playoffs_score_tracker/router/router_provider.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

class AppLanding extends HookWidget {
  AppLanding({Key? key}) : super(key: key);

  final pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(context) {
    return ChangeNotifierProvider<RouterProvider>.value(
      value: sl<RouterProvider>(),
      child: Consumer<RouterProvider>(
        builder: (context, provider, _) {
          final page = provider.currentIndex;

          if (pageController.hasClients && pageController.page != page) {
            pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: Text(
                AppRouter.routes[page].title,
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
              currentIndex: page,
              onTap: provider.setCurrentIndex,
              items: AppRouter.routes.map((route) {
                return BottomNavigationBarItem(
                  icon: Icon(route.icon),
                  label: route.label,
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
