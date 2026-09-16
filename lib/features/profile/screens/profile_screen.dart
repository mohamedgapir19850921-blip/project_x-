import 'package:flutter/material.dart';

import 'settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حسابي'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              );
            },
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Center(
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 42,
                  child: Icon(Icons.person, size: 42),
                ),
                const SizedBox(height: 12),
                const Text(
                  'مستخدم Project X',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                const Text('القاهرة • مستوى 4'),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _tile(
            context,
            icon: Icons.person_outline,
            title: 'الملف الشخصي',
            subtitle: 'عرض وتعديل بياناتك',
          ),
          _tile(
            context,
            icon: Icons.workspace_premium_outlined,
            title: 'الباقات والمزايا',
            subtitle: 'إدارة الاشتراكات والخصائص',
          ),
          _tile(
            context,
            icon: Icons.group_add_outlined,
            title: 'الدعوات',
            subtitle: 'رابط الإحالة والحالات',
          ),
          _tile(
            context,
            icon: Icons.privacy_tip_outlined,
            title: 'الخصوصية',
            subtitle: 'التحكم في الرؤية والتواصل',
          ),
        ],
      ),
    );
  }

  Widget _tile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
        onTap: () {},
      ),
    );
  }
}
