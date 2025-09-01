import 'package:flutter/material.dart';
import 'package:road_pothole/complain.dart';
import 'package:road_pothole/feedback.dart';
import 'package:road_pothole/login.dart';
import 'package:road_pothole/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: feedbackpage(),
    );
  }
}

