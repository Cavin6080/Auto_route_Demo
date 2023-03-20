import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/pages/profile_page.dart';
import 'package:auto_route_demo/pages/home_page.dart';
import 'package:auto_route_demo/pages/tab_page.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: "/",
      page: TabRoute.page,
      children: [
        AutoRoute(
          path: 'home',
          page: HomeRouter.page,
        ),
        AutoRoute(
          path: "profile",
          page: ProfileRouter.page,
        ),
      ],
    ),
  ];
}
