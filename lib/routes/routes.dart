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
    // RedirectRoute(path: '/', redirectTo: 'home'),
    AutoRoute(
      page: MainTabRoute.page,
      path: '/',
      children: [
        AutoRoute(
          page: HomeTabRoute.page,
          path: 'home',
          children: [
            AutoRoute(path: '', page: HomeRouter.page),
            AutoRoute(path: 'home-details', page: HomeDetailsRoute.page),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          page: ProfileTabRoute.page,
          path: 'profile',
          children: [
            AutoRoute(path: '', page: ProfileRoute.page),
            AutoRoute(path: '', page: ProfileDetailsRoute.page),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ];
}

@RoutePage()
class HomeTabPage extends AutoRouter {
  const HomeTabPage({super.key});
}

@RoutePage()
class ProfileTabPage extends AutoRouter {
  const ProfileTabPage({super.key});
}
