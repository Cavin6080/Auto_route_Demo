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
import 'package:flutter/material.dart' as _i6;

import '../pages/book_details_page.dart' as _i3;
import '../pages/book_list_page.dart' as _i2;
import '../pages/home_page.dart' as _i1;
import 'routes.dart' as _i4;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
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
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.BookListPage(
          key: args.key,
          name: args.name,
          isGreen: args.isGreen,
          showName: args.showName,
          person: args.person,
        ),
      );
    },
    BookDetailsRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.BookDetailsPage(),
      );
    },
    DemoRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.DemoPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/home',
        ),
        _i5.RouteConfig(
          BookListRoute.name,
          path: '/home/:name',
        ),
        _i5.RouteConfig(
          BookDetailsRoute.name,
          path: '/details',
        ),
        _i5.RouteConfig(
          DemoRoute.name,
          path: '/home/*',
        ),
        _i5.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/details',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.BookListPage]
class BookListRoute extends _i5.PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    _i6.Key? key,
    required String name,
    bool? isGreen,
    bool? showName,
    List<_i2.Person>? person,
  }) : super(
          BookListRoute.name,
          path: '/home/:name',
          args: BookListRouteArgs(
            key: key,
            name: name,
            isGreen: isGreen,
            showName: showName,
            person: person,
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
    this.person,
  });

  final _i6.Key? key;

  final String name;

  final bool? isGreen;

  final bool? showName;

  final List<_i2.Person>? person;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key, name: $name, isGreen: $isGreen, showName: $showName, person: $person}';
  }
}

/// generated route for
/// [_i3.BookDetailsPage]
class BookDetailsRoute extends _i5.PageRouteInfo<void> {
  const BookDetailsRoute()
      : super(
          BookDetailsRoute.name,
          path: '/details',
        );

  static const String name = 'BookDetailsRoute';
}

/// generated route for
/// [_i4.DemoPage]
class DemoRoute extends _i5.PageRouteInfo<void> {
  const DemoRoute()
      : super(
          DemoRoute.name,
          path: '/home/*',
        );

  static const String name = 'DemoRoute';
}
