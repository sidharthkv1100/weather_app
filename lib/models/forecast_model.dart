import 'package:flutter/material.dart';

class Forecast {
  final String day;
  final String temperature;
  final IconData icon;

  Forecast({
    required this.day,
    required this.temperature,
    required this.icon,
  });
}
