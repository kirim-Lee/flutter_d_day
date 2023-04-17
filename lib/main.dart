import 'package:d_day/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: "sunflower",
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.w700,
            fontFamily: "parisienne"
          ),
          displayMedium: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.w700,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 20
          ),
        )
      ),
      home: const HomeScreen()
  ));
}
