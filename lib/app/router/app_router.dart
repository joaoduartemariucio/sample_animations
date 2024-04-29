import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_animations/modules/list_animation/view/list_animations_page.dart';
import 'package:sample_animations/modules/main/view/main_page.dart';
import 'package:sample_animations/modules/opacity_animations/view/opacity_animations_page.dart';
import 'package:sample_animations/modules/positioned_animations/view/positioned_animations_page.dart';
import 'package:sample_animations/modules/size_animations/view/size_animations_page.dart';
import 'package:sample_animations/modules/text_animation/counter.dart';

enum Routes {
  main,
  listAnimations,
  textAnimations,
  opacityAnimations,
  positionedAnimations,
  sizeAnimations,
}

extension RoutesExt on Routes {
  String get path {
    switch (this) {
      case Routes.main:
        return '/';
      case Routes.listAnimations:
        return '/list-animations';
      case Routes.textAnimations:
        return '/text-animations';
      case Routes.opacityAnimations:
        return '/opacity-animations';
      case Routes.positionedAnimations:
        return '/positioned-animations';
      case Routes.sizeAnimations:
        return '/size-animations';
    }
  }

  String get name {
    switch (this) {
      case Routes.main:
        return 'Main';
      case Routes.listAnimations:
        return 'List Animations';
      case Routes.textAnimations:
        return 'Text Animations';
      case Routes.opacityAnimations:
        return 'Opacity Animations';
      case Routes.positionedAnimations:
        return 'Positioned Animations';
      case Routes.sizeAnimations:
        return 'Size Animations';
    }
  }
}

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.main.path,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.main.path,
        name: Routes.main.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: MainPage(),
        ),
      ),
      GoRoute(
        path: Routes.textAnimations.path,
        name: Routes.textAnimations.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: TextAnimationPage(),
        ),
      ),
      GoRoute(
        path: Routes.listAnimations.path,
        name: Routes.listAnimations.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ListAnimationsPage(),
        ),
      ),
      GoRoute(
        path: Routes.opacityAnimations.path,
        name: Routes.opacityAnimations.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: OpacityAnimationsPage(),
        ),
      ),
      GoRoute(
        path: Routes.positionedAnimations.path,
        name: Routes.positionedAnimations.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: PositionedAnimationsPage(),
        ),
      ),
      GoRoute(
        path: Routes.sizeAnimations.path,
        name: Routes.sizeAnimations.name,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SizeAnimationsPage(),
        ),
      ),
    ],
  );

  static GoRouter get router => _router;
}
