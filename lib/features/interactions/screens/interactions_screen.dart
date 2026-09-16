import 'package:flutter/material.dart';

import '../../../core/data/dummy_data.dart';
import '../../../core/data/models/interaction_model.dart';
import '../../../core/theme/app_ui.dart';
import '../../discover/screens/discover_screen.dart';
import '../../profile/screens/profile_screen.dart';

class InteractionsScreen extends StatelessWidget {
  const InteractionsScreen({super.key});

  void _openScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  Widget _buildTopCard(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: AppUi.brXl,
        gradient: LinearGradient(
          colors: [
            primary,
            primary.withOpacity(0.78),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'التفاعلات والرسائل',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'تابع آخر الإعجابات، الطلبات، والمحادثات في مكان واحد بشكل مرتب وواضح.',
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard({
    required IconData icon,
    required String title,
    required String value,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: AppUi.brMd,
        ),
        child: Column(
          children: [
            Icon(icon, size: 26),
            const SizedBox(height: 10),
            Text(
              value,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInteractionItem(InteractionModel item) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: AppUi.brLg,
        color: item.avatarColor.withOpacity(0.08),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: item.avatarColor.withOpacity(0.22),
          child: Icon(item.icon, color: item.avatarColor),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                item.name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              item.time,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            item.subtitle,
            style: const TextStyle(height: 1.4),
          ),
        ),
        trailing: item.unread
            ? Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xFF6C63FF),
                  shape: BoxShape.circle,
                ),
              )
            : const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 16,
                color: Colors.grey,
              ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppUi.sectionTitleStyle),
        const SizedBox(height: 4),
        Text(subtitle, style: AppUi.sectionSubtitleStyle),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final items = DummyData.interactions;
    final primarySoft = AppUi.softPrimary(context);
    final neutralSoft = AppUi.softNeutral(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('التفاعلات'),
        actions: [
          IconButton(
            onPressed: () => _openScreen(context, const ProfileScreen()),
            icon: const Icon(Icons.person_outline),
          ),
        ],
      ),
      body: ListView(
        padding: AppUi.pagePadding,
        children: [
          _buildTopCard(context),
          const SizedBox(height: AppUi.gapMd),
          Row(
            children: [
              _buildSummaryCard(
                icon: Icons.favorite_border,
                title: 'إعجابات',
                value: '12',
                color: primarySoft,
              ),
              const SizedBox(width: 12),
              _buildSummaryCard(
                icon: Icons.chat_bubble_outline,
                title: 'محادثات',
                value: '5',
                color: neutralSoft,
              ),
              const SizedBox(width: 12),
              _buildSummaryCard(
                icon: Icons.person_add_alt_1_outlined,
                title: 'طلبات',
                value: '3',
                color: primarySoft,
              ),
            ],
          ),
          const SizedBox(height: AppUi.gapLg),
          _buildSectionTitle(
            'أحدث التفاعلات',
            'آخر ما وصلك من رسائل واهتمامات',
          ),
          const SizedBox(height: 14),
          ...items.map(_buildInteractionItem),
          const SizedBox(height: 8),
          SizedBox(
            height: 50,
            child: ElevatedButton.icon(
              onPressed: () => _openScreen(context, const DiscoverScreen()),
              icon: const Icon(Icons.explore_outlined),
              label: const Text('الذهاب إلى الاكتشاف'),
            ),
          ),
        ],
      ),
    );
  }
}
