// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:playoffs_score_tracker/views/history/history.view.dart' as _i2;
import 'package:playoffs_score_tracker/views/score_card/score_card.view.dart'
    as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ScoreCardViewRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ScoreCardView());
    },
    HistoryViewRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HistoryView());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(ScoreCardViewRoute.name, path: '/'),
        _i3.RouteConfig(HistoryViewRoute.name, path: '/history-view')
      ];
}

/// generated route for
/// [_i1.ScoreCardView]
class ScoreCardViewRoute extends _i3.PageRouteInfo<void> {
  const ScoreCardViewRoute() : super(ScoreCardViewRoute.name, path: '/');

  static const String name = 'ScoreCardViewRoute';
}

/// generated route for
/// [_i2.HistoryView]
class HistoryViewRoute extends _i3.PageRouteInfo<void> {
  const HistoryViewRoute()
      : super(HistoryViewRoute.name, path: '/history-view');

  static const String name = 'HistoryViewRoute';
}
