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
      path: '/:id',
      maintainState: true,
    ),
    AutoRoute(page: BookDetailsPage, path: '/book-details'),
    // AutoRoute(path: '/home/*', page: DemoPage),

    // if the path does not match to home, it will redirect
    RedirectRoute(path: '/home/*', redirectTo: '/')
  ],
)
class $AppRouter {}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("redirect is working"),
      ),
    );
  }
}
