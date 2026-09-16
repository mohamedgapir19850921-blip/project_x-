import 'package:flutter/material.dart';

import '../../shell/screens/main_shell_screen.dart';

class ActivationScreen extends StatelessWidget {
  const ActivationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: const Text('تفعيل الحساب')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Icon(
              Icons.verified_user_outlined,
              size: 80,
              color: colorScheme.primary,
            ),
            const SizedBox(height: 20),
            const Text(
              'حسابك غير مفعل حاليًا',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'يتم دفع رسوم تفعيل مرة واحدة فقط بقيمة 10 جنيه لتفعيل الحساب واستخدام المنصة.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: colorScheme.primary.withOpacity(0.08),
              ),
              child: const Column(
                children: [
                  Text(
                    'رسوم التفعيل',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '10 جنيه - مرة واحدة',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (_) => const MainShellScreen(),
                    ),
                    (route) => false,
                  );
                },
                child: const Text('تفعيل الآن'),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'نسخة أولية: التفعيل هنا تجريبي وسيتم ربطه لاحقًا بنظام دفع حقيقي آمن.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
