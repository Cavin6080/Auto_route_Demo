import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.pushRoute(
                BookListRoute(
                  name: 'cavin',
                  // isGreen: true,
                  // showName: false,
                ),
              ),
              child: const Text(
                "Go to the Book Listing Screen",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
