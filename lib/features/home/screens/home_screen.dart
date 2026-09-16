import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _buildStatCard(
    BuildContext context, {
    required String title,
    required String value,
    required IconData icon,
    required Color iconBg,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 24,
            backgroundColor: iconBg,
            child: Icon(icon, color: Theme.of(context).colorScheme.primary),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction({
    required IconData icon,
    required String label,
    required Color bgColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 18),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          children: [
            Icon(icon, size: 26),
            const SizedBox(height: 8),
            Text(
              label,
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

  Widget _buildHighlightCard(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            colorScheme.primary,
            colorScheme.primary.withOpacity(0.75),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(26),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'مرحبًا بك في Project X',
            style: TextStyle(
              color: Colors.white,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'اكتشف أشخاصًا جدد، طوّر حضورك داخل التطبيق، واستفد من مزايا ذكية مصممة لتجربة أكثر تميزًا.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.18),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Text(
              'حسابك مفعل • جاهز للاستخدام',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
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
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildActivityItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    final softPrimary = Theme.of(context).colorScheme.primary.withOpacity(0.12);
    final softSecondary = isDark
        ? Colors.white.withOpacity(0.06)
        : Colors.black.withOpacity(0.04);

    return Scaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
        children: [
          _buildHighlightCard(context),
          const SizedBox(height: 22),

          _buildSectionTitle(
            'نظرة سريعة',
            'ملخص لحسابك ونشاطك الحالي داخل التطبيق',
          ),
          const SizedBox(height: 14),

          _buildStatCard(
            context,
            title: 'مستوى الحساب',
            value: 'Lv. 4',
            icon: Icons.trending_up_outlined,
            iconBg: softPrimary,
          ),
          const SizedBox(height: 12),
          _buildStatCard(
            context,
            title: 'نقاطك الحالية',
            value: '120',
            icon: Icons.stars_outlined,
            iconBg: softSecondary,
          ),
          const SizedBox(height: 12),
          _buildStatCard(
            context,
            title: 'نسبة التفاعل',
            value: '68%',
            icon: Icons.auto_graph_outlined,
            iconBg: softPrimary,
          ),
          const SizedBox(height: 22),

          _buildSectionTitle(
            'إجراءات سريعة',
            'الوصول السريع لأهم الأقسام',
          ),
          const SizedBox(height: 14),

          Row(
            children: [
              _buildQuickAction(
                icon: Icons.explore_outlined,
                label: 'اكتشف الآن',
                bgColor: softPrimary,
              ),
              const SizedBox(width: 12),
              _buildQuickAction(
                icon: Icons.chat_bubble_outline,
                label: 'التفاعلات',
                bgColor: softSecondary,
              ),
              const SizedBox(width: 12),
              _buildQuickAction(
                icon: Icons.workspace_premium_outlined,
                label: 'المزايا',
                bgColor: softPrimary,
              ),
            ],
          ),
          const SizedBox(height: 24),

          _buildSectionTitle(
            'آخر النشاطات',
            'تحديثات ومؤشرات مرتبطة بحسابك',
          ),
          const SizedBox(height: 14),

          _buildActivity
