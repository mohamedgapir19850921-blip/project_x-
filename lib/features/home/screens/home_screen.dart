import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
  }) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: colorScheme.primary.withValues(alpha: 0.12),
            child: Icon(icon, color: colorScheme.primary),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(title),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'مرحبًا بك في Project X',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          const Text(
            'لوحة سريعة لأهم معلوماتك ونشاطك داخل التطبيق.',
          ),
          const SizedBox(height: 16),
          _buildCard(
            context,
            title: 'حالة الحساب',
            value: 'مفعل',
            icon: Icons.verified_user_outlined,
          ),
          const SizedBox(height: 12),
          _buildCard(
            context,
            title: 'نقاطك الحالية',
            value: '120',
            icon: Icons.stars_outlined,
          ),
          const SizedBox(height: 12),
          _buildCard(
            context,
            title: 'مستواك',
            value: 'Lv. 4',
            icon: Icons.trending_up_outlined,
          ),
          const SizedBox(height: 12),
          _buildCard(
            context,
            title: 'X%',
            value: '68%',
            icon: Icons.auto_graph_outlined,
          ),
        ],
      ),
    );
  }
}
