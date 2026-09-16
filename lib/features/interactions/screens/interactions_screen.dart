import 'package:flutter/material.dart';

import 'chat_screen.dart';

class InteractionsScreen extends StatelessWidget {
  const InteractionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final matches = [
      {'name': 'سارة', 'lastMessage': 'أهلاً! أخبارك؟', 'time': '10:30 م'},
      {'name': 'مريم', 'lastMessage': 'حبيت اهتماماتك جدًا', 'time': '9:10 م'},
      {'name': 'أحمد', 'lastMessage': 'تحب نتكلم عن السفر؟', 'time': 'أمس'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('التفاعلات')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: matches.length,
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          final item = matches[index];
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            tileColor: Theme.of(context).cardColor,
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(item['name']!),
            subtitle: Text(item['lastMessage']!),
            trailing: Text(item['time']!),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ChatScreen(userName: item['name']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
