import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:outfitorbit/core/constants/app_wrapper_screen.dart';
import 'package:outfitorbit/views/auth/forget_password_screen.dart';
import 'package:outfitorbit/views/auth/login_screen.dart';
import 'package:outfitorbit/views/auth/register_screen.dart';
import 'package:outfitorbit/views/bag/bag_screen.dart';
import 'package:outfitorbit/views/bag/checkout_screen.dart';
import 'package:outfitorbit/views/bag/shipping_address_screen.dart';
import 'package:outfitorbit/views/favorites/favorites_screen.dart';
import 'package:outfitorbit/views/home/home_screen.dart';
import 'package:outfitorbit/views/home/short_dress_screen.dart';
import 'package:outfitorbit/views/home/widgets/cart_bottom_sheet.dart';
import 'package:outfitorbit/views/onboarding/search_result_screen.dart';
import 'package:outfitorbit/views/onboarding/take_photo_screen.dart';
import 'package:outfitorbit/views/onboarding/visual_search_screen.dart';
import 'package:outfitorbit/views/profile/profile_screen.dart';
import 'package:outfitorbit/views/shop/categories_card.dart';
import 'package:outfitorbit/views/shop/categories_view_screen.dart';
import 'package:outfitorbit/views/shop/filter_screen.dart';
import 'package:outfitorbit/views/shop/shop_screen.dart';
import 'package:outfitorbit/views/shop/women_top_screen.dart';

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
  static String get login => '/login';
  static String get register => '/signup';
  static String get forgotPassword => '/forgotPassword';
  static String get home => '/home';
  static String get bag => '/bag';
  static String get favorite => '/favorite';
  static String get profile => '/profile';
  static String get shop => '/shop';
  static String get onboarding => '/visual';
  static String get takePhoto => '/takePhoto';
  static String get categoriesView => '/categoriesView';
  static String get categoriesCard => '/categoriesCard';
  static String get searchResult => '/searchResult';
  static String get womenTop => '/womenTop';
  static String get shortDress => '/shortDress';
  static String get filter => '/filter';
  static String get cartSheet => '/cartSheet';
  static String get checkOutScreen => '/checkOutScreen';
  static String get shippingAddress => '/shippingAddress';
}

final GlobalKey<NavigatorState> parentNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> homeTabNavigatorKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> shopNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> bagNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> favoriteTabNavigationKey =
    GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> profileNavigatorKey =
    GlobalKey<NavigatorState>();

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
      initialLocation: AppRoutes.searchResult,
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
      path: AppRoutes.takePhoto,
      builder: (context, state) => const TakePhotoScreen(),
    ),
    GoRoute(
      path: AppRoutes.categoriesView,
      builder: (context, state) => const CategoriesViewScreen(),
    ),
    GoRoute(
      path: AppRoutes.categoriesCard,
      builder: (context, state) => const CategoriesCard(),
    ),
    GoRoute(
      path: AppRoutes.searchResult,
      builder: (context, state) => const SearchResultScreen(),
    ),
    GoRoute(
      path: AppRoutes.womenTop,
      builder: (context, state) => const WomenTopScreen(),
    ),
    GoRoute(
      path: AppRoutes.shortDress,
      builder: (context, state) => const ShortDressScreen(),
    ),
    GoRoute(
      path: AppRoutes.cartSheet,
      builder: (context, state) => CartBottomSheet(),
    ),
    GoRoute(
      path: AppRoutes.checkOutScreen,
      builder: (context, state) => const CheckoutScreen(),
    ),
    GoRoute(
      path: AppRoutes.shippingAddress,
      builder: (context, state) => const ShippingAddressScreen(),
    ),
    GoRoute(
      path: AppRoutes.filter,
      builder: (context, state) => FilterScreen(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: AppRoutes.register,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoutes.forgotPassword,
      builder: (context, state) => const ForgetPasswordScreen(),
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
              routes: [
                GoRoute(
                  path: AppRoutes.categoriesView,
                  pageBuilder: (context, state) {
                    return getPage(
                      child: const CategoriesViewScreen(),
                      state: state,
                    );
                  },
                ),
              ],
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
          navigatorKey: bagNavigatorKey,
          routes: [
            GoRoute(
              path: AppRoutes.bag,
              pageBuilder: (context, GoRouterState state) {
                return getPage(
                  child: const BagScreen(),
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
