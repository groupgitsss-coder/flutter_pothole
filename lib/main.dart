import 'package:flutter/material.dart';
import 'package:road_pothole/contractor.dart';
import 'package:road_pothole/feedback.dart';
import 'package:road_pothole/issues.dart';
import 'package:road_pothole/pothole.dart';
import 'package:road_pothole/workassign.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: issuespage(),
    );
  }
}

