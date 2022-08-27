import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playoffs_score_card/core/providers/core_provider.dart';
import 'package:playoffs_score_card/router/app_router.dart';
import 'package:playoffs_score_card/router/router_provider.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'locator.dart';

part 'package:playoffs_score_card/core/menu_items/header_menu_items.dart';

class AppLanding extends HookWidget {
  AppLanding({Key? key}) : super(key: key);

  final pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RouterProvider>.value(
          value: sl<RouterProvider>(),
        ),
        ChangeNotifierProvider<CoreProvider>(
          create: (_) => CoreProvider(sl(), sl(), sl()),
        ),
      ],
      child: Consumer<RouterProvider>(
        builder: (context, provider, _) {
          final page = provider.currentIndex;
          final _coreProvider = context.read<CoreProvider>();
          final _isLoggedIn = _coreProvider.status == AuthStatus.LoggedIn;

          if (pageController.hasClients && pageController.page != page) {
            pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          }

          return Scaffold(
            appBar: AppBar(
              leading: Icon(
                Icons.online_prediction,
                color: _isLoggedIn ? Colors.green : Colors.red,
              ),
              title: Text(
                AppRouter.routes[page].title,
                style: TextStyle(
                  color: AppTheme.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: AppTheme.blue,
              actions: [
                IconButton(
                  onPressed: () => _showAboutDialog(context),
                  icon: const Icon(Icons.info_outline),
                  color: Colors.white,
                )
              ],
            ),
            resizeToAvoidBottomInset: true,
            body: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
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
