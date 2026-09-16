import 'package:flutter/material.dart';

import '../../../core/theme/app_ui.dart';
import '../../discover/screens/discover_screen.dart';
import '../../profile/screens/profile_screen.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

  void _openScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  Widget _buildHeaderCard(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'طوّر تجربتك داخل Project X',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'احصل على مزايا إضافية تساعدك على ظهور أفضل، وصول أوسع، وتجربة أكثر تميزًا داخل التطبيق.',
            style: TextStyle(
              color: Colors.white,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color,
        borderRadius: AppUi.brMd,
      ),
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCard({
    required String title,
    required String price,
    required String subtitle,
    required List<String> features,
    required bool highlighted,
    required VoidCallback onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: highlighted ? const Color(0xFF6C63FF) : null,
        borderRadius: AppUi.brXl,
        border: Border.all(
          color: highlighted
              ? const Color(0xFF6C63FF)
              : Colors.grey.withOpacity(0.25),
          width: 1.2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (highlighted)
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.18),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'الأكثر شيوعًا',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Text(
            title,
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: highlighted ? Colors.white : null,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 13,
              color: highlighted ? Colors.white70 : Colors.grey,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            price,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: highlighted ? Colors.white : null,
            ),
          ),
          const SizedBox(height: 16),
          ...features.map(
            (feature) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    size: 20,
                    color: highlighted ? Colors.white : const Color(0xFF6C63FF),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      feature,
                      style: TextStyle(
                        color: highlighted ? Colors.white : null,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    highlighted ? Colors.white : const Color(0xFF6C63FF),
                foregroundColor:
                    highlighted ? const Color(0xFF6C63FF) : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 0,
              ),
              onPressed: onPressed,
              child: const Text(
                'اختيار الباقة',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoBox(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppUi.softNeutral(context),
        borderRadius: AppUi.brMd,
      ),
      child: const Text(
        'جميع المزايا والباقات تُستخدم داخل التطبيق فقط، ولا يوجد سحب أموال أو مكاسب نقدية مباشرة.',
        style: TextStyle(
          height: 1.6,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final softPrimary = AppUi.softPrimary(context);
    final softSecondary = AppUi.softNeutral(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('المزايا'),
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
          _buildHeaderCard(context),
          const SizedBox(height: AppUi.gapMd),
          Text(
            'لماذا الترقية؟',
            style: AppUi.sectionTitleStyle,
          ),
          const SizedBox(height: 14),
          _buildFeatureItem(
            icon: Icons.visibility_outlined,
            text: 'زيادة الظهور داخل الاكتشاف',
            color: softPrimary,
          ),
          _buildFeatureItem(
            icon: Icons.flash_on_outlined,
            text: 'وصول أسرع وتفاعل أفضل',
            color: softSecondary,
          ),
          _buildFeatureItem(
            icon: Icons.workspace_premium_outlined,
            text: 'ميزات إضافية لتحسين الحساب',
            color: softPrimary,
          ),
          const SizedBox(height: AppUi.gapMd),
          Text(
            'الباقات المتاحة',
            style: AppUi.sectionTitleStyle,
          ),
          const SizedBox(height: 14),
          _buildPlanCard(
            title: 'Basic',
            price: '49 EGP',
            subtitle: 'للاستخدام الخفيف والبداية',
            features: const [
              'ظهور محسّن لفترة محدودة',
              'بعض أدوات التفاعل الإضافية',
              'أولوية بسيطة داخل الاكتشاف',
            ],
            highlighted: false,
            onPressed: () => _openScreen(context, const DiscoverScreen()),
          ),
          _buildPlanCard(
            title: 'Plus',
            price: '99 EGP',
            subtitle: 'أفضل توازن بين السعر والمزايا',
            features: const [
              'ظهور أقوى داخل الاكتشاف',
              'مزايا تفاعل محسّنة',
              'أولوية أفضل في الوصول',
              'شارات ومؤشرات حساب أفضل',
            ],
            highlighted: true,
            onPressed: () => _openScreen(context, const ProfileScreen()),
          ),
          _buildPlanCard(
            title: 'Premium',
            price: '149 EGP',
            subtitle: 'أعلى تجربة متاحة داخل التطبيق',
            features: const [
              'أقوى ظهور متاح',
              'أفضلية كاملة في الاكتشاف',
              'أدوات مميزة إضافية',
              'تجربة حساب أكثر احترافية',
            ],
            highlighted: false,
            onPressed: () => _openScreen(context, const ProfileScreen()),
          ),
          const SizedBox(height: 8),
          _buildInfoBox(context),
        ],
      ),
    );
  }
}
