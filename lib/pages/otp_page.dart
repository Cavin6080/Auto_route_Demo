import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OtpPage extends StatelessWidget {
  final Function? onNext;

  const OtpPage({super.key, this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Otp Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              onNext!("abc");
              // context.router.root.push(
              //   Login(
              //     // email: textEditingController.text,
              //     onLogin: (e) {
              //       log("login successfully");

              //     },
              //   ),
              // );
            },
            child: const Text("On otp tap"),
          ),
        ],
      ),
    );
  }
}
