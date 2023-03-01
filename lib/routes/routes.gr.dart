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
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../pages/book_details_page.dart' as _i2;
import '../pages/book_list_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    BookListRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.BookListPage(),
      );
    },
    BookDetailsRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BookDetailsPage(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          BookListRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          BookDetailsRoute.name,
          path: '/book-details-page',
        ),
      ];
}

/// generated route for
/// [_i1.BookListPage]
class BookListRoute extends _i3.PageRouteInfo<void> {
  const BookListRoute()
      : super(
          BookListRoute.name,
          path: '/',
        );

  static const String name = 'BookListRoute';
}

/// generated route for
/// [_i2.BookDetailsPage]
class BookDetailsRoute extends _i3.PageRouteInfo<void> {
  const BookDetailsRoute()
      : super(
          BookDetailsRoute.name,
          path: '/book-details-page',
        );

  static const String name = 'BookDetailsRoute';
}
