import 'package:auto_route/annotations.dart';
import 'package:auto_route_demo/pages/book_details_page.dart';
import 'package:auto_route_demo/pages/book_list_page.dart';
import 'package:auto_route_demo/pages/home_page.dart';
import 'package:flutter/material.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
    ),
    AutoRoute(
      page: BookListPage,
    ),
    AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}
