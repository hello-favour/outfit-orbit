import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_wrapper_screen.dart';
import 'package:outfitorbit/views/auth/login_screen.dart';
import 'package:outfitorbit/views/auth/register_screen.dart';
import 'package:outfitorbit/views/favorites/favorites_screen.dart';
import 'package:outfitorbit/views/home/home_screen.dart';
import 'package:outfitorbit/views/onboarding/visual_search_screen.dart';
import 'package:outfitorbit/views/profile/profile_screen.dart';
import 'package:outfitorbit/views/shop/shop_screen.dart';

Page getPage({
  required Widget child,
  required GoRouterState state,
}) {
  return MaterialPage(
    key: state.pageKey,
    child: child,
  );
}

abstract class AppRoutes {
  static String get onboarding => '/splash';
  static String get login => '/login';
  static String get register => '/signup';
  static String get forgotPassword => '/forgotPassword';
  static String get home => '/home';
  static String get bag => '/bag';
  static String get favorite => '/favorite';
  static String get profile => '/profile';
  static String get shop => '/shop';
}

final GlobalKey<NavigatorState> parentNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> homeTabNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> favoriteTabNavigationKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> profileNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> bagNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> shopNavigatorKey = GlobalKey<NavigatorState>();

class CustomNavigationHelper {
  static final CustomNavigationHelper _instance =
      CustomNavigationHelper._internal();

  static CustomNavigationHelper get instance => _instance;
  factory CustomNavigationHelper() {
    return _instance;
  }

  CustomNavigationHelper._internal() {
    // Router initialization happens here.
    router = GoRouter(
      navigatorKey: parentNavigatorKey,
      initialLocation: AppRoutes.login,
      routes: routes,
    );
  }

  static late GoRouter router;

  final routes = [
    GoRoute(
      path: AppRoutes.onboarding,
      builder: (context, state) => const VisualSearchScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: parentNavigatorKey,
      pageBuilder: (
        BuildContext context,
        GoRouterState state,
        StatefulNavigationShell navigationShell,
      ) {
        return getPage(
            child: AppWrapperScreen(
              child: navigationShell,
            ),
            state: state);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: homeTabNavigatorKey,
          routes: [
            GoRoute(
              path: AppRoutes.home,
              pageBuilder: (context, GoRouterState state) {
                return getPage(
                  child: const HomeScreen(),
                  state: state,
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: shopNavigatorKey,
          routes: [
            GoRoute(
              path: AppRoutes.shop,
              pageBuilder: (context, GoRouterState state) {
                return getPage(
                  child: const ShopScreen(),
                  state: state,
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: favoriteTabNavigationKey,
          routes: [
            GoRoute(
              path: AppRoutes.favorite,
              pageBuilder: (context, GoRouterState state) {
                return getPage(
                  child: const FavoritesScreen(),
                  state: state,
                );
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: profileNavigatorKey,
          routes: [
            GoRoute(
              path: AppRoutes.profile,
              pageBuilder: (context, GoRouterState state) {
                return getPage(
                  child: const ProfileScreen(),
                  state: state,
                );
              },
            ),
          ],
        ),
      ],
    ),
  ];
}
