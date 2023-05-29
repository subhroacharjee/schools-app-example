import 'package:flutter/material.dart';

class Topic {
  const Topic({
    required this.id,
    required this.title,
    required this.emoji,
    required this.color,
  });

  final String id;
  final String title;
  final String emoji;
  final Color color;
}
