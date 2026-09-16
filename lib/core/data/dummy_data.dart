import 'package:flutter/material.dart';

import 'models/discover_profile_model.dart';
import 'models/interaction_model.dart';

class DummyData {
  static const List<DiscoverProfileModel> discoverProfiles = [
    DiscoverProfileModel(
      name: 'سارة',
      age: 24,
      city: 'القاهرة',
      match: '92%',
      tags: ['رياضة', 'سفر', 'قهوة'],
      gradientColors: [
        0xFF8E7CFF,
        0xFF5C4DCC,
      ],
    ),
    DiscoverProfileModel(
      name: 'ليان',
      age: 22,
      city: 'الإسكندرية',
      match: '88%',
      tags: ['قراءة', 'موسيقى', 'تصوير'],
      gradientColors: [
        0xFFFF8FB2,
        0xFFCC5C7A,
      ],
    ),
    DiscoverProfileModel(
      name: 'نور',
      age: 25,
      city: 'الجيزة',
      match: '84%',
      tags: ['أفلام', 'تقنية', 'رسم'],
      gradientColors: [
        0xFF57C7B6,
        0xFF2D8F83,
      ],
    ),
  ];

  static const List<InteractionModel> interactions = [
    InteractionModel(
      name: 'سارة',
      subtitle: 'أبدت إعجابًا بملفك الشخصي.',
      time: 'منذ 5 د',
      icon: Icons.favorite,
      avatarColor: Colors.pink,
      unread: true,
    ),
    InteractionModel(
      name: 'ليان',
      subtitle: 'أرسلت لك رسالة جديدة: مرحبًا، كيف حالك؟',
      time: 'منذ 12 د',
      icon: Icons.chat_bubble,
      avatarColor: Color(0xFF6C63FF),
      unread: true,
    ),
    InteractionModel(
      name: 'نور',
      subtitle: 'تم قبول التفاعل بينكما ويمكنكم بدء المحادثة.',
      time: 'منذ 1 س',
      icon: Icons.check_circle,
      avatarColor: Colors.teal,
      unread: false,
    ),
    InteractionModel(
      name: 'ريم',
      subtitle: 'زارت ملفك الشخصي أكثر من مرة.',
      time: 'اليوم',
      icon: Icons.remove_red_eye_outlined,
      avatarColor: Colors.orange,
      unread: false,
    ),
  ];
}
