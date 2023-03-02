import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/pages/screens/profile_details_screen.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
            child: Text(
              "Profile Tab",
            ),
          ),
          const SizedBox(height: 40),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.pushRoute(const ProfileDetailsRoute());
              },
              child: const Text("Go to Edit Profile"),
            ),
          ),
        ],
      ),
    );
  }
}
