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
      path: '/',
      page: LoginPage.page,
      children: [
        AutoRoute(path: '', page: SignInRoute.page),
        AutoRoute(path: 'otp', page: OtpRoute.page),
      ],
    ),
    AutoRoute(path: '/home', page: HomeRoute.page),
  ];
}
