import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final users = [
      {
        'name': 'سارة',
        'age': '24',
        'city': 'القاهرة',
        'match': '89%',
        'interests': 'السفر • القراءة • القهوة',
      },
      {
        'name': 'أحمد',
        'age': '27',
        'city': 'الإسكندرية',
        'match': '84%',
        'interests': 'الجيم • التقنية • الأفلام',
      },
      {
        'name': 'مريم',
        'age': '23',
        'city': 'المنصورة',
        'match': '91%',
        'interests': 'الموسيقى • الرسم • المشي',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('اكتشف')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: users.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final user = users[index];
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(radius: 28, child: Icon(Icons.person)),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        '${user['name']} • ${user['age']}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      user['match']!,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text('المدينة: ${user['city']}'),
                const SizedBox(height: 6),
                Text('الاهتمامات: ${user['interests']}'),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('عرض الملف'),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('اهتمام'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
