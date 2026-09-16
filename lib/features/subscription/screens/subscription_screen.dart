import 'package:flutter/material.dart';

import '../subscription_controller.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  void _pay(BuildContext context) {
    SubscriptionController.activateSubscription();

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('تم تفعيل الاشتراك بنجاح'),
      ),
    );

    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الاشتراك'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            const Text(
              'الاشتراك الدائم',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'ادفع مرة واحدة فقط بقيمة 10 جنيه عبر المحافظ الإلكترونية.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueGrey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Text(
                    'مميزات الاشتراك:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 12),
                  Text('• تفعيل الشراء داخل التطبيق'),
                  Text('• الوصول للميزات المدفوعة'),
                  Text('• دفع مرة واحدة فقط'),
                ],
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () => _pay(context),
              child: const Text('ادفع 10 جنيه الآن'),
            ),
          ],
        ),
      ),
    );
  }
}
