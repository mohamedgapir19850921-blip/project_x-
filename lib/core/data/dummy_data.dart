import 'package:flutter/material.dart';

import 'models/benefit_plan_model.dart';
import 'models/discover_profile_model.dart';
import 'models/home_stat_model.dart';
import 'models/interaction_model.dart';
import 'models/profile_option_model.dart';

class DummyData {
  static const List<HomeStatModel> homeStats = [
    HomeStatModel(
      title: 'النقاط',
      value: '120',
      icon: Icons.stars_rounded,
      color: Color(0xFF6C63FF),
    ),
    HomeStatModel(
      title: 'التفاعل',
      value: '68%',
      icon: Icons.favorite_rounded,
      color: Color(0xFFFF6584),
    ),
    HomeStatModel(
      title: 'المستوى',
      value: '4',
      icon: Icons.bar_chart_rounded,
      color: Color(0xFF2BB6A8),
    ),
  ];

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

  static const List<BenefitPlanModel> benefitPlans = [
    BenefitPlanModel(
      title: 'Basic',
      price: '49 EGP',
      subtitle: 'للاستخدام الخفيف والبداية',
      features: [
        'ظهور محسّن لفترة محدودة',
        'بعض أدوات التفاعل الإضافية',
        'أولوية بسيطة داخل الاكتشاف',
      ],
      highlighted: false,
    ),
    BenefitPlanModel(
      title: 'Plus',
      price: '99 EGP',
      subtitle: 'أفضل توازن بين السعر والمزايا',
      features: [
        'ظهور أقوى داخل الاكتشاف',
        'مزايا تفاعل محسّنة',
        'أولوية أفضل في الوصول',
        'شارات ومؤشرات حساب أفضل',
      ],
      highlighted: true,
    ),
    BenefitPlanModel(
      title: 'Premium',
      price: '149 EGP',
      subtitle: 'أعلى تجربة متاحة داخل التطبيق',
      features: [
        'أقوى ظهور متاح',
        'أفضلية كاملة في الاكتشاف',
        'أدوات مميزة إضافية',
        'تجربة حساب أكثر احترافية',
      ],
      highlighted: false,
    ),
  ];

  static const List<ProfileOptionModel> profileOptions = [
    ProfileOptionModel(
      icon: Icons.edit_outlined,
      title: 'تعديل الملف الشخصي',
      subtitle: 'تحديث البيانات الأساسية والنبذة',
    ),
    ProfileOptionModel(
      icon: Icons.workspace_premium_outlined,
      title: 'إدارة المزايا',
      subtitle: 'عرض الباقات والمزايا النشطة',
    ),
    ProfileOptionModel(
      icon: Icons.palette_outlined,
      title: 'المظهر',
      subtitle: 'التحكم في الثيم الفاتح والداكن',
    ),
    ProfileOptionModel(
      icon: Icons.security_outlined,
      title: 'الخصوصية',
      subtitle: 'إعدادات الأمان والخصوصية',
    ),
    ProfileOptionModel(
      icon: Icons.info_outline,
      title: 'حول التطبيق',
      subtitle: 'معلومات عن النسخة الحالية',
    ),
  ];
}
