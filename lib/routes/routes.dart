import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:auto_route_demo/pages/home_page.dart';
import 'package:auto_route_demo/pages/otp_page.dart';
import 'package:auto_route_demo/pages/sign_in_page.dart';
import 'package:auto_route_demo/wrappers/sign_in_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SignInWrapperPage,
      name: 'LoginPage',
      children: [
        AutoRoute(
          path: '',
          page: SignInPage,
        ),
        AutoRoute(
          path: 'otp',
          page: OtpPage,
        ),
      ],
    ),
    AutoRoute(
      name: 'HomePage',
      path: '/home',
      page: HomePage,
    ),
  ],
)
class $AppRouter {}
