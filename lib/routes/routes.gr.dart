// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route_demo/pages/home_page.dart' as _i4;
import 'package:auto_route_demo/pages/otp_page.dart' as _i3;
import 'package:auto_route_demo/pages/sign_in_page.dart' as _i2;
import 'package:auto_route_demo/wrappers/sign_in_wrapper.dart' as _i1;
import 'package:flutter/material.dart' as _i6;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginPage.name: (routeData) {
      final args =
          routeData.argsAs<LoginPageArgs>(orElse: () => const LoginPageArgs());
      return _i5.AutoRoutePage<dynamic>(
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
      return _i5.AutoRoutePage<dynamic>(
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
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.OtpPage(
          key: args.key,
          onNext: args.onNext,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.HomePage(),
      );
    },
  };
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
          args: LoginPageArgs(
            key: key,
            onLogin: onLogin,
          ),
          initialChildren: children,
        );

  static const String name = 'LoginPage';

  static const _i5.PageInfo<LoginPageArgs> page =
      _i5.PageInfo<LoginPageArgs>(name);
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
/// [_i2.SignInPage]
class SignInRoute extends _i5.PageRouteInfo<SignInRouteArgs> {
  SignInRoute({
    _i6.Key? key,
    Function? onNext,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SignInRoute.name,
          args: SignInRouteArgs(
            key: key,
            onNext: onNext,
          ),
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i5.PageInfo<SignInRouteArgs> page =
      _i5.PageInfo<SignInRouteArgs>(name);
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
/// [_i3.OtpPage]
class OtpRoute extends _i5.PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    _i6.Key? key,
    Function? onNext,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            onNext: onNext,
          ),
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const _i5.PageInfo<OtpRouteArgs> page =
      _i5.PageInfo<OtpRouteArgs>(name);
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

/// generated route for
/// [_i4.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
