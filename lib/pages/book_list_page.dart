import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/class/person_class.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class BookListPage extends StatelessWidget {
  const BookListPage({
    super.key,
    @PathParam('id') required this.id,
    @QueryParam() this.showName,
    this.person,
  });
  final String id;
  final Person? person;
  final bool? showName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Book list page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Passed id: $id"),
            Text(
              person != null
                  ? "Class value passed: ${person?.name}"
                  : "Class value is null",
            ),
            Text(
              showName ?? false
                  ? "Show name parameter true"
                  : "Show name parameter false",
            ),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(const BookDetailsRoute());
              },
              child: const Text("Go to the book details screen"),
            ),
          ],
        ),
      ),
    );
  }
}
