import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/class/person_class.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookListPage extends StatefulWidget {
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
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  Person? _person;
  @override
  void initState() {
    if (widget.person != null) {
      _person = widget.person;
    }
    super.initState();
  }

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
            Text("Passed id: ${widget.id}"),
            Text(
              widget.person != null
                  ? "Class value passed: ${_person?.name}"
                  : "Class value is null",
            ),
            Text(
              widget.showName ?? false
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
