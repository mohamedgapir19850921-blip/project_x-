import 'package:flutter/material.dart';

import '../../../core/data/dummy_data.dart';
import '../../../core/data/models/profile_option_model.dart';
import '../../../core/theme/app_ui.dart';
import '../../benefits/screens/benefits_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _openBenefits(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const BenefitsScreen()),
    );
  }

  void _handleOptionTap(BuildContext context, ProfileOptionModel option) {
    if (option.title == 'إدارة المزايا') {
      _openBenefits(context);
    }
  }

  Widget _buildHeader(BuildContext context) {
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
      child: Column(
        children: [
          const CircleAvatar(
            radius: 42,
            backgroundColor: Colors.white24,
            child: Icon(
              Icons.person,
              size: 42,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'المستخدم',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'حساب نشط داخل Project X',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              Expanded(
                child: _ProfileStatItem(
                  title: 'المستوى',
                  value: '4',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _ProfileStatItem(
                  title: 'النقاط',
                  value: '120',
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: _ProfileStatItem(
                  title: 'التفاعل',
                  value: '68%',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppUi.softNeutral(context),
        borderRadius: AppUi.brLg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'نبذة',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'هذا نموذج مبدئي لملف المستخدم داخل التطبيق، ويمكن لاحقًا إضافة الصورة الحقيقية، النبذة الشخصية، الاهتمامات، والمزيد من التفاصيل.',
            style: TextStyle(
              height: 1.7,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOptionTile({
    required ProfileOptionModel option,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: AppUi.brMd,
      ),
      leading: Icon(option.icon),
      title: Text(
        option.title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(option.subtitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      onTap: onTap,
    );
  }

  Widget _buildOptionsSection(BuildContext context) {
    final options = DummyData.profileOptions;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppUi.softNeutral(context),
        borderRadius: AppUi.brLg,
      ),
      child: Column(
        children: options.map((option) {
          return _buildOptionTile(
            option: option,
            onTap: () => _handleOptionTap(context, option),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildStatusBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppUi.softPrimary(context),
        borderRadius: AppUi.brMd,
      ),
      child: const Row(
        children: [
          Icon(Icons.verified_outlined),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'حسابك في حالة جيدة، ويمكنك تحسين ظهوره أكثر من خلال صفحة المزايا.',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('حسابي'),
        actions: [
          IconButton(
            onPressed: () => _openBenefits(context),
            icon: const Icon(Icons.workspace_premium_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: AppUi.pagePadding,
        children: [
          _buildHeader(context),
          const SizedBox(height: AppUi.gapMd),
          _buildStatusBox(context),
          const SizedBox(height: AppUi.gapMd),
          _buildInfoCard(context),
          const SizedBox(height: AppUi.gapMd),
          Text(
            'الإعدادات والخيارات',
            style: AppUi.sectionTitleStyle,
          ),
          const SizedBox(height: 12),
          _buildOptionsSection(context),
        ],
      ),
    );
  }
}

class _ProfileStatItem extends StatelessWidget {
  final String title;
  final String value;

  const _ProfileStatItem({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.16),
        borderRadius: AppUi.brMd,
      ),
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
