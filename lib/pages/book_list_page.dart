import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookListPage extends StatefulWidget {
  const BookListPage({
    super.key,
    @PathParam('name') required this.name,
    @QueryParam() this.isGreen,
    @QueryParam() this.showName,
    this.person,
    // @QueryParam('person') this.person,
  });
  final String name;
  final List<Person>? person;
  final bool? isGreen;
  final bool? showName;

  @override
  State<BookListPage> createState() => _BookListPageState();
}

class _BookListPageState extends State<BookListPage> {
  Person? _person;
  @override
  void initState() {
    if (widget.person != null) {
      _person = widget.person?[0];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            widget.name,
            style: TextStyle(
              color: widget.isGreen ?? false ? Colors.green : Colors.black,
            ),
          ),
          Center(
            child: Text(
              widget.person != null
                  ? "Person not null ${_person?.name}"
                  : "Person is null",
            ),
          ),
          Center(
            child: Text(
              widget.showName ?? false ? "Cavin" : "No name",
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

class Person {
  Person({this.name});
  String? name;
}
