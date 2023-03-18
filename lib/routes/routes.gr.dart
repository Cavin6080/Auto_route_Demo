// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/home_page.dart' as _i2;
import '../pages/otp_page.dart' as _i4;
import '../pages/sign_in_page.dart' as _i3;
import '../wrappers/sign_in_wrapper.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SignInWrapperPage(
          key: args.key,
          onLogin: args.onLogin,
        ),
      );
    },
    HomePage.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.SignInPage(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      final args =
          routeData.argsAs<OtpRouteArgs>(orElse: () => const OtpRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.OtpPage(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LoginPage.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              SignInRoute.name,
              path: '',
              parent: LoginPage.name,
            ),
            _i5.RouteConfig(
              OtpRoute.name,
              path: 'otp',
              parent: LoginPage.name,
            ),
          ],
        ),
        _i5.RouteConfig(
          HomePage.name,
          path: '/home',
        ),
      ];
}

/// generated route for
/// [_i1.SignInWrapperPage]
class LoginPage extends _i5.PageRouteInfo<LoginPageArgs> {
  LoginPage({
    _i6.Key? key,
    dynamic Function(bool)? onLogin,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          LoginPage.name,
          path: '/',
          args: LoginPageArgs(
            key: key,
            onLogin: onLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginPage';
}

class LoginPageArgs {
  const LoginPageArgs({
    this.key,
    this.onLogin,
  });

  final _i6.Key? key;

  final dynamic Function(bool)? onLogin;

  @override
  String toString() {
    return 'LoginPageArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomePage extends _i5.PageRouteInfo<void> {
  const HomePage()
      : super(
          HomePage.name,
          path: '/home',
        );

  static const String name = 'HomePage';
}

/// generated route for
/// [_i3.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i6.Key? key,
    Function? onNext,
  }) : super(
          SignInRoute.name,
          path: '',
          args: SignInRouteArgs(
            key: key,
            onNext: onNext,
          ),
        );

  static const String name = 'SignInRoute';
}

class SignInRouteArgs {
  const SignInRouteArgs({
    this.key,
    this.onNext,
  });

  final _i6.Key? key;

  final Function? onNext;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onNext: $onNext}';
  }
}

/// generated route for
/// [_i4.OtpPage]
class OtpRoute extends _i5.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    _i6.Key? key,
    Function? onNext,
  }) : super(
          OtpRoute.name,
          path: 'otp',
          args: OtpRouteArgs(
            key: key,
            onNext: onNext,
          ),
        );

  static const String name = 'OtpRoute';
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    this.onNext,
  });

  final _i6.Key? key;

  final Function? onNext;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, onNext: $onNext}';
  }
}
