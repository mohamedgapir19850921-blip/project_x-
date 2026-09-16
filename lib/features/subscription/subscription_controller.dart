import 'package:flutter/foundation.dart';

class SubscriptionController {
  static final ValueNotifier<bool> isSubscribed = ValueNotifier<bool>(false);

  static void activateSubscription() {
    isSubscribed.value = true;
  }

  static void resetSubscription() {
    isSubscribed.value = false;
  }
}
