import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../theme_mode/providers/theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('الإعدادات')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'الثيم',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          RadioListTile<ThemeMode>(
            value: ThemeMode.system,
            groupValue: themeProvider.themeMode,
            onChanged: (value) {
              if (value != null) themeProvider.setThemeMode(value);
            },
            title: const Text('حسب الجهاز'),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.light,
            groupValue: themeProvider.themeMode,
            onChanged: (value) {
              if (value != null) themeProvider.setThemeMode(value);
            },
            title: const Text('فاتح'),
          ),
          RadioListTile<ThemeMode>(
            value: ThemeMode.dark,
            groupValue: themeProvider.themeMode,
            onChanged: (value) {
              if (value != null) themeProvider.setThemeMode(value);
            },
            title: const Text('غامق'),
          ),
        ],
      ),
    );
  }
}
