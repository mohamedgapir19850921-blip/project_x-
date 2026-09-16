import 'package:flutter/material.dart';

import '../../features/discover/screens/discover_screen.dart';
import '../../features/home/screens/home_screen.dart';
import '../../features/interactions/screens/interactions_screen.dart';
import '../../features/profile/screens/profile_screen.dart';
import 'navigation_controller.dart';

class MainNavigationScreen extends StatelessWidget {
  const MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const screens = [
      HomeScreen(),
      DiscoverScreen(),
      InteractionsScreen(),
      ProfileScreen(),
    ];

    return ValueListenableBuilder<int>(
      valueListenable: NavigationController.currentIndex,
      builder: (context, currentIndex, _) {
        return Scaffold(
          body: IndexedStack(
            index: currentIndex,
            children: screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: NavigationController.changeTab,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                activeIcon: Icon(Icons.explore),
                label: 'اكتشف',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                activeIcon: Icon(Icons.favorite),
                label: 'التفاعلات',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'حسابي',
              ),
            ],
          ),
        );
      },
    );
  }
}
