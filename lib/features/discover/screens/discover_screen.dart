import 'package:flutter/material.dart';

import '../../../core/theme/app_ui.dart';
import '../../benefits/screens/benefits_screen.dart';
import '../../interactions/screens/interactions_screen.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  void _openScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => screen),
    );
  }

  Widget _buildFilterChip({
    required String label,
    required bool selected,
  }) {
    return Container(
      margin: const EdgeInsets.only(left: 8),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFF6C63FF) : Colors.transparent,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: selected
              ? const Color(0xFF6C63FF)
              : Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : null,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildProfileCard(
    BuildContext context, {
    required String name,
    required int age,
    required String city,
    required String match,
    required List<String> tags,
    required List<Color> gradientColors,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        borderRadius: AppUi.brXl,
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: isDark
                ? Colors.black.withOpacity(0.28)
                : Colors.black.withOpacity(0.08),
            blurRadius: 18,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Container(
        height: 440,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: AppUi.brXl,
          gradient: LinearGradient(
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.15),
              Colors.black.withOpacity(0.55),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.18),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Text(
                  '$match تطابق',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              '$name، $age',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              city,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: tags.map((tag) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.18),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.14),
                      borderRadius: AppUi.brMd,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.14),
                      borderRadius: AppUi.brMd,
                    ),
                    child: IconButton(
                      onPressed: () => _openScreen(
                        context,
                        const BenefitsScreen(),
                      ),
                      icon: const Icon(
                        Icons.star_rounded,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: AppUi.brMd,
                    ),
                    child: TextButton.icon(
                      onPressed: () => _openScreen(
                        context,
                        const InteractionsScreen(),
                      ),
                      icon: const Icon(Icons.favorite, color: Colors.red),
                      label: const Text(
                        'إعجاب',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBanner(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: AppUi.brLg,
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
            'اكتشف أشخاصًا متوافقين معك',
            style: TextStyle(
              color: Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'اعثر على اقتراحات أفضل حسب التفاعل والاهتمامات ونسبة التوافق.',
            style: TextStyle(
              color: Colors.white,
              height: 1.5,
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
        title: const Text('اكتشف'),
        actions: [
          IconButton(
            onPressed: () => _openScreen(context, const BenefitsScreen()),
            icon: const Icon(Icons.workspace_premium_outlined),
          ),
        ],
      ),
      body: ListView(
        padding: AppUi.pagePadding,
        children: [
          _buildTopBanner(context),
          const SizedBox(height: AppUi.gapMd),
          const Text(
            'الفلاتر السريعة',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildFilterChip(label: 'الأقرب إليك', selected: true),
                _buildFilterChip(label: 'الأكثر توافقًا', selected: false),
                _buildFilterChip(label: 'نشط الآن', selected: false),
                _buildFilterChip(label: 'اهتمامات مشتركة', selected: false),
              ],
            ),
          ),
          const SizedBox(height: AppUi.gapMd),
          _buildProfileCard(
            context,
            name: 'سارة',
            age: 24,
            city: 'القاهرة',
            match: '92%',
            tags: ['رياضة', 'سفر', 'قهوة'],
            gradientColors: const [
              Color(0xFF8E7CFF),
              Color(0xFF5C4DCC),
            ],
          ),
          _buildProfileCard(
            context,
            name: 'ليان',
            age: 22,
            city: 'الإسكندرية',
            match: '88%',
            tags: ['قراءة', 'موسيقى', 'تصوير'],
            gradientColors: const [
              Color(0xFFFF8FB2),
              Color(0xFFCC5C7A),
            ],
          ),
          _buildProfileCard(
            context,
            name: 'نور',
            age: 25,
            city: 'الجيزة',
            match: '84%',
            tags: ['أفلام', 'تقنية', 'رسم'],
            gradientColors: const [
              Color(0xFF57C7B6),
              Color(0xFF2D8F83),
            ],
          ),
        ],
      ),
    );
  }
}
