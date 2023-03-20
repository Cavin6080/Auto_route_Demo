import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      path: '/',
    ),
    AutoRoute(
      page: BookDetailsRoute.page,
      path: '/book-details',
    ),
    CustomRoute(
      path: '/:id',
      page: BookListRoute.page,
      transitionsBuilder: TransitionsBuilders.slideTop,
    ),
  ];
}
