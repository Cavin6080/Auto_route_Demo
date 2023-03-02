import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_demo/pages/screens/home_details_screen.dart';
import 'package:auto_route_demo/pages/screens/profile_details_screen.dart';
import 'package:auto_route_demo/pages/tabs/home_tab.dart';
import 'package:auto_route_demo/pages/tabs/main_tab.dart';
import 'package:auto_route_demo/pages/tabs/profile_tab.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: GroupPage,
      initial: true,
      path: '/',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'home',
          name: 'HomeRouter',
          children: [
            AutoRoute(path: '', page: HomeTab),
            AutoRoute(path: 'home-details', page: HomeDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'ProfileRouter',
          children: [
            AutoRoute(path: '', page: ProfileTab),
            AutoRoute(path: 'profile-details', page: ProfileDetailsPage),
            RedirectRoute(path: '*', redirectTo: ''),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
