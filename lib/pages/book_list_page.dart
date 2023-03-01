import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({
    super.key,
    @PathParam('name') required this.name,
    @QueryParam() this.isGreen,
    @QueryParam() this.showName,
  });
  final String name;
  final bool? isGreen;
  final bool? showName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            name,
            style: TextStyle(
              color: isGreen ?? false ? Colors.green : Colors.black,
            ),
          ),
          Center(
            child: Text(
              showName ?? false ? "Cavin" : "No name",
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.pushRoute(const BookDetailsRoute());
              },
              child: const Text("Go to the next page"),
            ),
          ),
        ],
      ),
    );
  }
}
