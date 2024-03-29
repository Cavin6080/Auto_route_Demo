import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pushRoute(
            const BookListRoute(),
          ),
          child: const Text(
            "Navigate to Book list Screen",
          ),
        ),
      ),
    );
  }
}
