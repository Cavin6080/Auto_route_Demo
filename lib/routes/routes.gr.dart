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

import '../pages/book_details_page.dart' as _i3;
import '../pages/book_list_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    BookListRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BookListPage(),
      );
    },
    BookDetailsRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.BookDetailsPage(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          BookListRoute.name,
          path: '/book-list-page',
        ),
        _i4.RouteConfig(
          BookDetailsRoute.name,
          path: '/book-details-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookListPage]
class BookListRoute extends _i4.PageRouteInfo<void> {
  const BookListRoute()
      : super(
          BookListRoute.name,
          path: '/book-list-page',
        );

  static const String name = 'BookListRoute';
}

/// generated route for
/// [_i3.BookDetailsPage]
class BookDetailsRoute extends _i4.PageRouteInfo<void> {
  const BookDetailsRoute()
      : super(
          BookDetailsRoute.name,
          path: '/book-details-page',
        );

  static const String name = 'BookDetailsRoute';
}
