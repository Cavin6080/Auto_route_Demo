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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/otp_page.dart' as _i3;
import '../pages/sign_in_page.dart' as _i2;
import '../wrappers/sign_in_wrapper.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    Login.name: (routeData) {
      final args = routeData.argsAs<LoginArgs>(orElse: () => const LoginArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.SignInWrapperPage(
          key: args.key,
          onLogin: args.onLogin,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      final args = routeData.argsAs<SignInRouteArgs>(
          orElse: () => const SignInRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.SignInPage(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
    OtpRoute.name: (routeData) {
      final args =
          routeData.argsAs<OtpRouteArgs>(orElse: () => const OtpRouteArgs());
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.OtpPage(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          Login.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              SignInRoute.name,
              path: '',
              parent: Login.name,
            ),
            _i4.RouteConfig(
              OtpRoute.name,
              path: 'otp',
              parent: Login.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.SignInWrapperPage]
class Login extends _i4.PageRouteInfo<LoginArgs> {
  Login({
    _i5.Key? key,
    dynamic Function(bool)? onLogin,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          Login.name,
          path: '/',
          args: LoginArgs(
            key: key,
            onLogin: onLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'Login';
}

class LoginArgs {
  const LoginArgs({
    this.key,
    this.onLogin,
  });

  final _i5.Key? key;

  final dynamic Function(bool)? onLogin;

  @override
  String toString() {
    return 'LoginArgs{key: $key, onLogin: $onLogin}';
  }
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i5.Key? key,
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

  final _i5.Key? key;

  final Function? onNext;

  @override
  String toString() {
    return 'SignInRouteArgs{key: $key, onNext: $onNext}';
  }
}

/// generated route for
/// [_i3.OtpPage]
class OtpRoute extends _i4.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    _i5.Key? key,
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

  final _i5.Key? key;

  final Function? onNext;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, onNext: $onNext}';
  }
}
