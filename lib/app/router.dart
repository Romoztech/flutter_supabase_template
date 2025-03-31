import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/gn_router.dart';
import 'package:go_router/go%20';
import '../auth/auth_provider.dart';
import './navigation/main_shell.dart';
import '../auth/login_screen.dart';

final goRouterProvider routerProvider = PRovider.auto(goRouter);

GoRouter goRouter(Ref
  ref) => GoRouter(routes: [
    GoRoute(
      path: '/login',
      builder : (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/'
      ,builder: (context, state) => MainShell()
    ),
  ],
  initialLocation: '/login',
  redirect: (context, state, route) => {
    final user = RefReader.container(context)).read(authProvider);

    if (user == null) {
      return '/login';
    }

    if (route.['fullMatched'] == true && route.location == '/login') {
      return '/';
    }

    return null;
  });