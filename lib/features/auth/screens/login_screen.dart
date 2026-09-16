import 'package:flutter/material.dart';

import '../../../core/navigation/main_navigation_screen.dart';
import '../../../core/theme/app_ui.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _openApp(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => const MainNavigationScreen()),
    );
  }

  void _openRegister(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const RegisterScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppUi.pagePadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Icon(
                Icons.lock_person_rounded,
                size: 84,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 20),
              Text(
                'تسجيل الدخول',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              const Text(
                'سجّل دخولك للوصول إلى حسابك ومتابعة استخدام التطبيق.',
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.6),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                  border: OutlineInputBorder(
                    borderRadius: AppUi.brMd,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  border: OutlineInputBorder(
                    borderRadius: AppUi.brMd,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: () => _openApp(context),
                child: const Text('دخول'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => _openRegister(context),
                child: const Text('إنشاء حساب جديد'),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
