import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> goRouteKey = GlobalKey<NavigatorState>();

final class AppRouter {
  const AppRouter._();

  static const _transitionDuration = Duration(milliseconds: 700);
  static const _slideTransitionDuration = Duration(milliseconds: 300);

  static FadeTransition _transitionBuilder(
      context, animation, secondaryAnimation, child) =>
      FadeTransition(opacity: animation, child: child);

  static final GoRouter router =GoRouter(
    navigatorKey: goRouteKey,
    routes: [
      GoRoute(
          path: "/",
          name: "root",
      pageBuilder: (_,state) {
        return const CustomTransitionPage(child: SizedBox(), transitionsBuilder: _transitionBuilder);
      }
      )
    ]
  );
}