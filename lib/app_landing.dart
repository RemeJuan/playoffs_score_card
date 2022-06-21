import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:playoffs_score_card/router/app_router.dart';
import 'package:playoffs_score_card/router/router_provider.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:playoffs_score_card/views/score_card/provider/score_card_provider.dart';
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
                  color: AppTheme.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              backgroundColor: AppTheme.blue,
              actions: [
                PopupMenuButton(
                  onSelected: (value) {
                    if (value == 'about') {
                      _showAboutDialog(context);
                    }

                    if (value == "history") {
                      _showHistoryDialog(context);
                    }
                  },
                  offset: const Offset(0, 50),
                  icon: const Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 24.0,
                  ),
                  iconSize: 65.0,
                  itemBuilder: (context) {
                    return [
                      _historyEntry(),
                      _about(),
                    ];
                  },
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
