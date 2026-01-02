import 'package:flutter/material.dart';
import '../widgets/forecast_card.dart';
import '../constants/colors.dart';

class WeatherHome extends StatelessWidget {
  const WeatherHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.gradientStart,
              AppColors.gradientEnd
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// HEADER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Kochi",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Icon(Icons.location_on, color: Colors.white),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  "Tuesday, 2 January",
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 40),

                /// CURRENT WEATHER
                Center(
                  child: Column(
                    children: const [
                      Icon(
                        Icons.wb_sunny,
                        size: 100,
                        color: Colors.yellow,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "28°",
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Sunny",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                /// FORECAST TITLE
                const Text(
                  "5-Day Forecast",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 15),

                /// FORECAST LIST
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      ForecastCard(day: "Wed", temp: "30°", icon: Icons.wb_sunny),
                      ForecastCard(day: "Thu", temp: "29°", icon: Icons.cloud),
                      ForecastCard(day: "Fri", temp: "27°", icon: Icons.cloud_queue),
                      ForecastCard(day: "Sat", temp: "26°", icon: Icons.grain),
                      ForecastCard(day: "Sun", temp: "28°", icon: Icons.wb_sunny),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
