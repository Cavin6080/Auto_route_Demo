import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text("Book List Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pushRoute(
            const BookDetailsRoute(),
          ),
          child: const Text("Navigate to Book Details Screen"),
        ),
      ),
    );
  }
}
