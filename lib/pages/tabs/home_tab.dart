import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'HomeRouter')
class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              "Home Tab",
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.pushRoute(const HomeDetailsRoute());
              },
              child: const Text("Go to Home Details"),
            ),
          ),
        ],
      ),
    );
  }
}
