// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../pages/screens/home_details_screen.dart' as _i4;
import '../pages/screens/profile_details_screen.dart' as _i6;
import '../pages/tabs/home_tab.dart' as _i3;
import '../pages/tabs/main_tab.dart' as _i1;
import '../pages/tabs/profile_tab.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    MainTabRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MainTabPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeTab.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomeTab(),
      );
    },
    HomeDetailsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.HomeDetailsPage(),
      );
    },
    ProfileTab.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.ProfileTab(),
      );
    },
    ProfileDetailsRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileDetailsPage(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          MainTabRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: MainTabRoute.name,
              children: [
                _i7.RouteConfig(
                  HomeTab.name,
                  path: '',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  HomeDetailsRoute.name,
                  path: 'home-details',
                  parent: HomeRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: HomeRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
            _i7.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: MainTabRoute.name,
              children: [
                _i7.RouteConfig(
                  ProfileTab.name,
                  path: '',
                  parent: ProfileRouter.name,
                ),
                _i7.RouteConfig(
                  ProfileDetailsRoute.name,
                  path: 'profile-details',
                  parent: ProfileRouter.name,
                ),
                _i7.RouteConfig(
                  '*#redirect',
                  path: '*',
                  parent: ProfileRouter.name,
                  redirectTo: '',
                  fullMatch: true,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MainTabPage]
class MainTabRoute extends _i7.PageRouteInfo<void> {
  const MainTabRoute({List<_i7.PageRouteInfo>? children})
      : super(
          MainTabRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MainTabRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i7.PageRouteInfo<void> {
  const HomeRouter({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i7.PageRouteInfo<void> {
  const ProfileRouter({List<_i7.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.HomeTab]
class HomeTab extends _i7.PageRouteInfo<void> {
  const HomeTab()
      : super(
          HomeTab.name,
          path: '',
        );

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i4.HomeDetailsPage]
class HomeDetailsRoute extends _i7.PageRouteInfo<void> {
  const HomeDetailsRoute()
      : super(
          HomeDetailsRoute.name,
          path: 'home-details',
        );

  static const String name = 'HomeDetailsRoute';
}

/// generated route for
/// [_i5.ProfileTab]
class ProfileTab extends _i7.PageRouteInfo<void> {
  const ProfileTab()
      : super(
          ProfileTab.name,
          path: '',
        );

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i6.ProfileDetailsPage]
class ProfileDetailsRoute extends _i7.PageRouteInfo<void> {
  const ProfileDetailsRoute()
      : super(
          ProfileDetailsRoute.name,
          path: 'profile-details',
        );

  static const String name = 'ProfileDetailsRoute';
}
