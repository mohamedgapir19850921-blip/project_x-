import 'package:flutter/material.dart';

class InteractionsScreen extends StatelessWidget {
  const InteractionsScreen({super.key});

  Widget _buildTopCard(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
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
          borderRadius: BorderRadius.circular(18),
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

  Widget _buildInteractionItem({
    required String name,
    required String subtitle,
    required String time,
    required IconData icon,
    required Color avatarColor,
    required bool unread,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: avatarColor.withOpacity(0.08),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: avatarColor.withOpacity(0.22),
          child: Icon(icon, color: avatarColor),
        ),
        title: Row(
          children: [
            Expanded(
              child: Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              time,
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
            subtitle,
            style: const TextStyle(height: 1.4),
          ),
        ),
        trailing: unread
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
        Text(
          title,
          style: const TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final primarySoft = Theme.of(context).colorScheme.primary.withOpacity(0.12);
    final neutralSoft = isDark
        ? Colors.white.withOpacity(0.06)
        : Colors.black.withOpacity(0.04);

    return Scaffold(
      appBar: AppBar(
        title: const Text('التفاعلات'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildTopCard(context),
          const SizedBox(height: 20),
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
          const SizedBox(height: 24),
          _buildSectionTitle(
            'أحدث التفاعلات',
            'آخر ما وصلك من رسائل واهتمامات',
          ),
          const SizedBox(height: 14),
          _buildInteractionItem(
            name: 'سارة',
            subtitle: 'أبدت إعجابًا بملفك الشخصي.',
            time: 'منذ 5 د',
            icon: Icons.favorite,
            avatarColor: Colors.pink,
            unread: true,
          ),
          _buildInteractionItem(
            name: 'ليان',
            subtitle: 'أرسلت لك رسالة جديدة: مرحبًا، كيف حالك؟',
            time: 'منذ 12 د',
            icon: Icons.chat_bubble,
            avatarColor: const Color(0xFF6C63FF),
            unread: true,
          ),
          _buildInteractionItem(
            name: 'نور',
            subtitle: 'تم قبول التفاعل بينكما ويمكنكم بدء المحادثة.',
            time: 'منذ 1 س',
            icon: Icons.check_circle,
            avatarColor: Colors.teal,
            unread: false,
          ),
          _buildInteractionItem(
            name: 'ريم',
            subtitle: 'زارت ملفك الشخصي أكثر من مرة.',
            time: 'اليوم',
            icon: Icons.remove_red_eye_outlined,
            avatarColor: Colors.orange,
            unread: false,
          ),
        ],
      ),
    );
  }
}
