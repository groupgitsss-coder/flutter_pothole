import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:road_pothole/login.dart';

Dio dio = Dio();
final baseUrl = 'http://192.168.1.80:5000';

Future<void> regApi(data, context) async {
  try {
    Response response = await dio.post('$baseUrl/studentreg', data: data);

    print(response);
    // print(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const loginpage()),
      ); // MaterialPageRoute
    } else {
      throw Exception('failed to get');
    }
  } catch (e) {
    print(e.toString());
  }
}
