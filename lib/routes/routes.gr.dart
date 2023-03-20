// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:auto_route_demo/class/person_class.dart' as _i6;
import 'package:auto_route_demo/pages/book_details_page.dart' as _i3;
import 'package:auto_route_demo/pages/book_list_page.dart' as _i2;
import 'package:auto_route_demo/pages/home_page.dart' as _i1;
import 'package:flutter/material.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
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
      return _i4.AutoRoutePage<dynamic>(
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
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BookDetailsPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BookListPage]
class BookListRoute extends _i4.PageRouteInfo<BookListRouteArgs> {
  BookListRoute({
    _i5.Key? key,
    required String id,
    bool? showName,
    _i6.Person? person,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          BookListRoute.name,
          args: BookListRouteArgs(
            key: key,
            id: id,
            showName: showName,
            person: person,
          ),
          rawPathParams: {'id': id},
          rawQueryParams: {'showName': showName},
          initialChildren: children,
        );

  static const String name = 'BookListRoute';

  static const _i4.PageInfo<BookListRouteArgs> page =
      _i4.PageInfo<BookListRouteArgs>(name);
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
  const BookDetailsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          BookDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookDetailsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
