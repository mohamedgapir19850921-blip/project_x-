import 'package:flutter/material.dart';

class BenefitsScreen extends StatelessWidget {
  const BenefitsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final plans = [
      {
        'title': 'باقة Plus',
        'subtitle': 'ظهور أفضل + تفاعلات إضافية',
      },
      {
        'title': 'باقة Premium',
        'subtitle': 'مزايا أوسع وتجربة أقوى داخل التطبيق',
      },
    ];

    final benefits = [
      'تمييز الملف الشخصي',
      'رفع الظهور في الاكتشاف',
      'تفاعلات خاصة إضافية',
      'أولوية في بعض المميزات الاجتماعية',
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('المزايا')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'الباقات',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ...plans.map(
            (plan) => Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  plan['title']!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(plan['subtitle']!),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: const Text('اشترك'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'مزايا إضافية',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ...benefits.map(
            (benefit) => Container(
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: ListTile(
                leading: const Icon(Icons.check_circle_outline),
                title: Text(benefit),
                trailing: OutlinedButton(
                  onPressed: () {},
                  child: const Text('تفعيل'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
