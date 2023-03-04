import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final _router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Auto route Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      routerDelegate: AutoRouterDelegate.declarative(
        _router,
        routes: (_) => [
          Login(
            onLogin: (e) {
              if (e) {
                log("logged in ");
              } else {
                log("not logged in ");
              }
            },
          ),
        ],
      ),
      routeInformationParser: _router.defaultRouteParser(),
    );
  }
}
