import 'package:flutter/material.dart';

import '../auth/screens/login_screen.dart';
import '../auth/screens/register_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final pages = const [
      _OnboardingData(
        icon: Icons.favorite_outline,
        title: 'تعارف اجتماعي بشكل أذكى',
        subtitle: 'اكتشف أشخاصًا مناسبين لك بناءً على الاهتمامات والتوافق.',
      ),
      _OnboardingData(
        icon: Icons.chat_bubble_outline_rounded,
        title: 'ابدأ التفاعل بسهولة',
        subtitle: 'محادثات ومقترحات تساعدك على كسر الجمود وبدء الكلام.',
      ),
      _OnboardingData(
        icon: Icons.workspace_premium_outlined,
        title: 'مزايا داخل التطبيق',
        subtitle: 'نقاط ومستويات وباقات وخصائص تحسن تجربتك داخل Project X.',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Spacer(),
              Icon(
                pages[0].icon,
                size: 90,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                pages[0].title,
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text(
                pages[0].subtitle,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const RegisterScreen()),
                    );
                  },
                  child: const Text('إنشاء حساب'),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const LoginScreen()),
                    );
                  },
                  child: const Text('تسجيل الدخول'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OnboardingData {
  final IconData icon;
  final String title;
  final String subtitle;

  const _OnboardingData({
    required this.icon,
    required this.title,
    required this.subtitle,
  });
}
