import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
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
            onPressed: () => onNext!("abc"),
            child: const Text("On otp tap"),
          ),
        ],
      ),
    );
  }
}
