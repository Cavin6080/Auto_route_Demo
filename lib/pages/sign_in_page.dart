import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key, this.onNext});

  final Function? onNext;

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Sign In Screen"),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: TextField(
              controller: textEditingController,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              widget.onNext!(textEditingController.text);
            },
            child: const Text("Go to otp screen"),
          ),
        ],
      ),
    );
  }
}
