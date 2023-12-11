import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/class/person_class.dart';
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => context.pushRoute(BookListRoute(id: '1')),
              child: const Text(
                "Navigate to Book list",
              ),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                BookListRoute(
                  id: '2',
                  person: Person(name: "Cavin"),
                ),
              ),
              child: const Text("Pass class value to book list"),
            ),
            ElevatedButton(
              onPressed: () => context.pushRoute(
                BookListRoute(
                  id: '2',
                  showName: true,
                ),
              ),
              child: const Text("Pass query params to book list"),
            ),
          ],
        ),
      ),
    );
  }
}
