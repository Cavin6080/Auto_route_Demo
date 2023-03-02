import 'package:auto_route/annotations.dart';
import 'package:auto_route_demo/pages/book_details_page.dart';
import 'package:auto_route_demo/pages/book_list_page.dart';
import 'package:auto_route_demo/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';

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
      maintainState: true,
    ),
    AutoRoute(page: BookDetailsPage, path: '/details'),
    AutoRoute(path: '/home/*', page: DemoPage),

    // if the path does not match to home, it will redirect
    RedirectRoute(path: '*', redirectTo: '/details')
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
