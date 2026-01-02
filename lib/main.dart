import 'package:flutter/material.dart';
import 'screens/weather_home.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: const WeatherHome(),
    );
  }
}
