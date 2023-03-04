import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

class SignInWrapperPage extends StatefulWidget {
  final Function(bool isLoggedIn)? onLogin;

  const SignInWrapperPage({super.key, this.onLogin});

  @override
  State<SignInWrapperPage> createState() => SignInnWrapperPageState();
}

class SignInnWrapperPageState extends State<SignInWrapperPage> {
  String email = "";

  @override
  Widget build(BuildContext context) {
    return AutoRouter.declarative(
      routes: (handler) {
        log("handler called");
        return [
          SignInRoute(
            onNext: (result) {
              setState(() {
                email = result;
              });
            },
          ),
          if (email.isNotEmpty)
            OtpRoute(
              onNext: (result) async {
                try {
                  // validate the email and password
                  // await validateEmailAndPassword(email, result);
                  log("widget on login true");
                  widget.onLogin!(true);
                } catch (e) {
                  // do something with the error
                }
              },
            ),
        ];
      },
    );
  }
}
