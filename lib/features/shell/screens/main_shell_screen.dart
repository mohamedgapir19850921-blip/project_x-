import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../benefits/screens/benefits_screen.dart';
import '../../discover/screens/discover_screen.dart';
import '../../home/screens/home_screen.dart';
import '../../interactions/screens/interactions_screen.dart';
import '../../profile/screens/profile_screen.dart';
import '../providers/navigation_provider.dart';

class MainShellScreen extends StatelessWidget {
  const MainShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = context.watch<NavigationProvider>();

    final screens = [
      const HomeScreen(),
      const DiscoverScreen(),
      const InteractionsScreen(),
      const BenefitsScreen(),
      const ProfileScreen(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: navigationProvider.currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationProvider.currentIndex,
        onTap: navigationProvider.changeTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_rounded),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.travel_explore_outlined),
            activeIcon: Icon(Icons.travel_explore),
            label: 'اكتشف',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_outlined),
            activeIcon: Icon(Icons.forum),
            label: 'التفاعلات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.workspace_premium_outlined),
            activeIcon: Icon(Icons.workspace_premium),
            label: 'المزايا',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
