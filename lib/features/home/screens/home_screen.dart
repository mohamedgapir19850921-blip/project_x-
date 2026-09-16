import 'package:flutter/material.dart';

import '../../../core/data/dummy_data.dart';
import '../../../core/data/models/home_stat_model.dart';
import '../../../core/navigation/navigation_controller.dart';
import '../../../core/theme/app_ui.dart';
import '../../benefits/screens/benefits_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openBenefits(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const BenefitsScreen()),
    );
  }

  void _goToTab(int index) {
    NavigationController.changeTab(index);
  }

  Widget _buildWelcomeCard(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: AppUi.brXl,
        gradient: LinearGradient(
          colors: [
            primary,
            primary.withOpacity(0.75),
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'مرحبًا بك في Project X',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'ابدأ رحلتك، استكشف المستخدمين، تابع تفاعلاتك، وطوّر حسابك من صفحة المزايا.',
            style: TextStyle(
              color: Colors.white,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(HomeStatModel stat) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
      decoration: BoxDecoration(
        color: stat.color.withOpacity(0.12),
        borderRadius: AppUi.brMd,
      ),
      child: Column(
        children: [
          Icon(stat.icon, color: stat.color, size: 28),
          const SizedBox(height: 10),
          Text(
            stat.value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            stat.title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        color: color.withOpacity(0.10),
        borderRadius: AppUi.brLg,
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: CircleAvatar(
          backgroundColor: color.withOpacity(0.18),
          child: Icon(icon, color: color),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(subtitle),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
        onTap: onTap,
      ),
    );
  }

  Widget _buildTipBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppUi.softNeutral(context),
        borderRadius: AppUi.brMd,
      ),
      child: const Row(
        children: [
          Icon(Icons.lightbulb_outline),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'نصيحة: كلما أكملت ملفك الشخصي وحافظت على التفاعل، زادت جودة الاقتراحات التي تظهر لك.',
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final stats = DummyData.homeStats;

    return Scaffold(
      appBar: AppBar(
        title: const Text('الرئيسية'),
        actions: [
          IconButton(
            onPressed: () => _goToTab(3),
            icon: const Icon(Icons.person_outline),
          ),
        ],
      ),
      body: ListView(
        padding: AppUi.pagePadding,
        children: [
          _buildWelcomeCard(context),
          const SizedBox(height: AppUi.gapMd),
          Text(
            'إحصائياتك السريعة',
            style: AppUi.sectionTitleStyle,
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              ...stats.asMap().entries.map((entry) {
                final index = entry.key;
                final stat = entry.value;

                return Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: index == stats.length - 1 ? 0 : 12,
                    ),
                    child: _buildStatCard(stat),
                  ),
                );
              }),
            ],
          ),
          const SizedBox(height: AppUi.gapLg),
          Text(
            'الوصول السريع',
            style: AppUi.sectionTitleStyle,
          ),
          const SizedBox(height: 12),
          _buildQuickAction(
            icon: Icons.explore_outlined,
            title: 'اكتشف المستخدمين',
            subtitle: 'تصفح الاقتراحات والملفات المتوافقة معك',
            color: const Color(0xFF6C63FF),
            onTap: () => _goToTab(1),
          ),
          _buildQuickAction(
            icon: Icons.favorite_border,
            title: 'التفاعلات',
            subtitle: 'راجع الإعجابات والرسائل والطلبات',
            color: const Color(0xFFFF6584),
            onTap: () => _goToTab(2),
          ),
          _buildQuickAction(
            icon: Icons.workspace_premium_outlined,
            title: 'المزايا',
            subtitle: 'طوّر تجربتك داخل التطبيق',
            color: const Color(0xFF2BB6A8),
            onTap: () => _openBenefits(context),
          ),
          const SizedBox(height: AppUi.gapMd),
          _buildTipBox(context),
        ],
      ),
    );
  }
}
