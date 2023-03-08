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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/home_page.dart' as _i2;
import '../pages/profile_page.dart' as _i3;
import '../pages/tab_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabPage(),
      );
    },
    HomeRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    ProfileRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ProfilePage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          TabRoute.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              HomeRouter.name,
              path: 'home',
              parent: TabRoute.name,
            ),
            _i4.RouteConfig(
              ProfileRouter.name,
              path: 'profile',
              parent: TabRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.TabPage]
class TabRoute extends _i4.PageRouteInfo<void> {
  const TabRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TabRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i2.HomePage]
class HomeRouter extends _i4.PageRouteInfo<void> {
  const HomeRouter()
      : super(
          HomeRouter.name,
          path: 'home',
        );

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i3.ProfilePage]
class ProfileRouter extends _i4.PageRouteInfo<void> {
  const ProfileRouter()
      : super(
          ProfileRouter.name,
          path: 'profile',
        );

  static const String name = 'ProfileRouter';
}
