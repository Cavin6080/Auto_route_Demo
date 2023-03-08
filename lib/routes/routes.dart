import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_demo/pages/profile_page.dart';
import 'package:auto_route_demo/pages/home_page.dart';
import 'package:auto_route_demo/pages/tab_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      initial: true,
      page: TabPage,
      children: [
        // First bottomnavigation bar tab
        AutoRoute(
          path: 'home',
          name: "HomeRouter",
          page: HomePage,
        ),

        // Second bottomnavigation bar tab
        AutoRoute(
          path: "profile",
          name: "ProfileRouter",
          page: ProfilePage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
