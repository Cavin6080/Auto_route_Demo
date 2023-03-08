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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/material.dart' as _i6;

import '../pages/home_page.dart' as _i3;
import '../pages/profile_page.dart' as _i4;
import '../pages/tab_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ProfilePage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          TabRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: TabRoute.name,
              children: [
                _i5.RouteConfig(
                  HomeRoute.name,
                  path: '',
                  parent: HomeRouter.name,
                )
              ],
            ),
            _i5.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: TabRoute.name,
              children: [
                _i5.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfileRouter.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.TabPage]
class TabRoute extends _i5.PageRouteInfo<void> {
  const TabRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TabRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRouter.name,
          path: 'home',
          initialChildren: children,
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter({List<_i5.PageRouteInfo>? children})
      : super(
          ProfileRouter.name,
          path: 'profile',
          initialChildren: children,
        );

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute()
      : super(
          ProfileRoute.name,
          path: '',
        );

  static const String name = 'ProfileRoute';
}
