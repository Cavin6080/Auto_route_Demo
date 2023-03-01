import 'package:auto_route/annotations.dart';
import 'package:auto_route_demo/pages/book_details_page.dart';
import 'package:auto_route_demo/pages/book_list_page.dart';
import 'package:auto_route_demo/pages/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomePage,
      initial: true,
      path: '/home',
    ),
    AutoRoute(
      page: BookListPage,
      path: '/home/:name',
    ),
    AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}
