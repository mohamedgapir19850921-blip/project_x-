import 'package:flutter/material.dart';

import 'screens/subscription_screen.dart';
import 'subscription_controller.dart';

class SubscriptionGuard {
  static Future<bool> checkAccess(BuildContext context) async {
    if (SubscriptionController.isSubscribed.value) {
      return true;
    }

    await Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const SubscriptionScreen()),
    );

    return SubscriptionController.isSubscribed.value;
  }
}
