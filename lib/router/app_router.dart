import 'package:flutter/material.dart';
import 'package:playoffs_score_tracker/views/history/history.view.dart';
import 'package:playoffs_score_tracker/views/profile/profile.view.dart';
import 'package:playoffs_score_tracker/views/score_card/score_card.view.dart';

class AppRoute {
  final Widget page;
  final String title;
  final String label;
  final IconData icon;

  AppRoute({
    required this.page,
    required this.title,
    required this.label,
    required this.icon,
  });
}

class AppRouter {
  static final List<AppRoute> routes = [
    AppRoute(
      page: const ScoreCardView(),
      title: "Score Card",
      label: "Score",
      icon: Icons.scoreboard_outlined,
    ),
    AppRoute(
      page: const HistoryView(),
      title: "History",
      label: "History",
      icon: Icons.history,
    ),
    AppRoute(
      page: const ProfileView(),
      title: "Profile",
      label: "Profile",
      icon: Icons.person_outline,
    ),
  ];
}
