import 'package:auto_route/auto_route.dart';
import 'package:auto_route_demo/routes/routes.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainTabPage extends StatelessWidget {
  const MainTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return AppBar(
          title: tabsRouter.activeIndex == 0
              ? const Text("Home Page")
              : const Text("Profile Page"),
        );
      },
      routes: const [
        HomeTabRoute(),
        ProfileTabRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return ScaleTransition(
          scale: animation,
          child: child,
        );
      },
      bottomNavigationBuilder: (context, tabsRouter) {
        return BottomNavigationBar(
          onTap: tabsRouter.setActiveIndex,
          currentIndex: tabsRouter.activeIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}
