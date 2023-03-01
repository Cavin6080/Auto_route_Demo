import 'package:auto_route/annotations.dart';
import 'package:auto_route_demo/pages/book_details_page.dart';
import 'package:auto_route_demo/pages/book_list_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: BookListPage, initial: true),
    AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}
