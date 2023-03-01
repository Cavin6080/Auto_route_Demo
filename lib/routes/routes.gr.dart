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
      final pathParams = routeData.inheritedPathParams;
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<BookListRouteArgs>(
          orElse: () => BookListRouteArgs(
                name: pathParams.getString('name'),
                isGreen: queryParams.optBool('isGreen'),
                showName: queryParams.optBool('showName'),
              ));
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.BookListPage(
          key: args.key,
          name: args.name,
          isGreen: args.isGreen,
          showName: args.showName,
        ),
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
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i4.RouteConfig(
          BookListRoute.name,
          path: '/home/:name',
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
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookListPage]
class BookListRoute extends _i4.PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    _i5.Key? key,
    required String name,
    bool? isGreen,
    bool? showName,
  }) : super(
          BookListRoute.name,
          path: '/home/:name',
          args: BookListRouteArgs(
            key: key,
            name: name,
            isGreen: isGreen,
            showName: showName,
          ),
          rawPathParams: {'name': name},
          rawQueryParams: {
            'isGreen': isGreen,
            'showName': showName,
          },
        );

  static const String name = 'BookListRoute';
}

class BookListRouteArgs {
  const BookListRouteArgs({
    this.key,
    required this.name,
    this.isGreen,
    this.showName,
  });

  final _i5.Key? key;

  final String name;

  final bool? isGreen;

  final bool? showName;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key, name: $name, isGreen: $isGreen, showName: $showName}';
  }
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
