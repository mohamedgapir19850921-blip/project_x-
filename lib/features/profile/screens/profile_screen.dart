import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Widget _buildHeader(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
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
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final soft = isDark
        ? Colors.white.withOpacity(0.06)
        : Colors.black.withOpacity(0.04);

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: soft,
        borderRadius: BorderRadius.circular(22),
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
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      leading: Icon(icon),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(subtitle),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      onTap: onTap,
    );
  }

  Widget _buildOptionsSection(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final cardBg = isDark
        ? Colors.white.withOpacity(0.04)
        : Colors.black.withOpacity(0.025);

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        children: [
          _buildOptionTile(
            icon: Icons.edit_outlined,
            title: 'تعديل الملف الشخصي',
            subtitle: 'تحديث البيانات الأساسية والنبذة',
            onTap: () {},
          ),
          _buildOptionTile(
            icon: Icons.workspace_premium_outlined,
            title: 'إدارة المزايا',
            subtitle: 'عرض الباقات والمزايا النشطة',
            onTap: () {},
          ),
          _buildOptionTile(
            icon: Icons.palette_outlined,
            title: 'المظهر',
            subtitle: 'التحكم في الثيم الفاتح والداكن',
            onTap: () {},
          ),
          _buildOptionTile(
            icon: Icons.security_outlined,
            title: 'الخصوصية',
            subtitle: 'إعدادات الأمان والخصوصية',
            onTap: () {},
          ),
          _buildOptionTile(
            icon: Icons.info_outline,
            title: 'حول التطبيق',
            subtitle: 'معلومات عن النسخة الحالية',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildStatusBox(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary.withOpacity(0.12);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(18),
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
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildHeader(context),
          const SizedBox(height: 18),
          _buildStatusBox(context),
          const SizedBox(height: 18),
          _buildInfoCard(context),
          const SizedBox(height: 18),
          const Text(
            'الإعدادات والخيارات',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
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
        borderRadius: BorderRadius.circular(16),
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
