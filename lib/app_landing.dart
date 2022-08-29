import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playoffs_score_card/core/providers/core_provider.dart';
import 'package:playoffs_score_card/router/app_router.dart';
import 'package:playoffs_score_card/theme.dart';
import 'package:url_launcher/url_launcher.dart';

import 'core/providers/general_providers.dart';

part 'package:playoffs_score_card/core/menu_items/header_menu_items.dart';

class AppLanding extends ConsumerWidget {
  AppLanding({Key? key}) : super(key: key);

  final pageController = PageController(
    initialPage: 0,
    keepPage: false,
  );

  @override
  Widget build(context, ref) {
    final page = ref.watch(routerProvider);
    final _coreProvider = ref.watch(coreProvider);
    final _version = ref.watch(versionProvider);
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
            onPressed: () => _showAboutDialog(context, _version.value ?? ''),
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
        onTap: (page) => ref.read(routerProvider.notifier).state = page,
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
