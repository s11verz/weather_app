// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:weather_app/screen_a.dart';
import 'package:weather_app/screen_b.dart';
import 'package:weather_app/screen_c.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/' : (context) => ScreenA(),
        '/b' : (context) => ScreenB(),
        '/c' : (context) => ScreenC(),
      },
    );
  }
}

