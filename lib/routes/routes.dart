import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      path: "/",
      page: TabRoute.page,
      children: [
        // First bottomnavigation bar tab
        AutoRoute(
          path: 'home',
          page: HomeRouter.page,
        ),

        // Second bottomnavigation bar tab
        AutoRoute(
          path: "profile",
          page: ProfileRouter.page,
        ),
      ],
    ),
  ];
}
