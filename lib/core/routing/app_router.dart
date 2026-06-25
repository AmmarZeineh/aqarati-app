import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

final class AppRouter {
  AppRouter._();

  static const String splash = '/';
  // static const String home = '/home';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const Scaffold(
          body: Center(child: Text('Splash Screen')),
        ),
      ),
      // Add more routes here
    ],
  );
}
