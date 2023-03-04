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

import '../class/person_class.dart' as _i6;
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
                id: pathParams.getString('id'),
                showName: queryParams.optBool('showName'),
              ));
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.BookListPage(
          key: args.key,
          id: args.id,
          showName: args.showName,
          person: args.person,
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
          HomeRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          BookListRoute.name,
          path: '/:id',
        ),
        _i4.RouteConfig(
          BookDetailsRoute.name,
          path: '/book-details',
        ),
        _i4.RouteConfig(
          '/home/*#redirect',
          path: '/home/*',
          redirectTo: '/',
          fullMatch: true,
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
class BookListRoute extends _i4.PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    _i5.Key? key,
    required String id,
    bool? showName,
    _i6.Person? person,
  }) : super(
          BookListRoute.name,
          path: '/:id',
          args: BookListRouteArgs(
            key: key,
            id: id,
            showName: showName,
            person: person,
          ),
          rawPathParams: {'id': id},
          rawQueryParams: {'showName': showName},
        );

  static const String name = 'BookListRoute';
}

class BookListRouteArgs {
  const BookListRouteArgs({
    this.key,
    required this.id,
    this.showName,
    this.person,
  });

  final _i5.Key? key;

  final String id;

  final bool? showName;

  final _i6.Person? person;

  @override
  String toString() {
    return 'BookListRouteArgs{key: $key, id: $id, showName: $showName, person: $person}';
  }
}

/// generated route for
/// [_i3.BookDetailsPage]
class BookDetailsRoute extends _i4.PageRouteInfo<void> {
  const BookDetailsRoute()
      : super(
          BookDetailsRoute.name,
          path: '/book-details',
        );

  static const String name = 'BookDetailsRoute';
}
