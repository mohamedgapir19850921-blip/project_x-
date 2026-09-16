import 'package:flutter/material.dart';

class InteractionModel {
  final String name;
  final String subtitle;
  final String time;
  final IconData icon;
  final Color avatarColor;
  final bool unread;

  const InteractionModel({
    required this.name,
    required this.subtitle,
    required this.time,
    required this.icon,
    required this.avatarColor,
    required this.unread,
  });
}
