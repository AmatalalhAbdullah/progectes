import 'package:flutter/material.dart';
import 'package:test2/Screen_one.dart' show ScreenOne;

//import 'screens/screen_three.dart';
// ignore: unused_import
import 'screens/screen_one.dart';
//import 'screens/screen_two.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ScreenOne(),
      routes: {
        'screen1': (_) => const ScreenOne(),
       // 'screen2': (_) => const ScreenTwo(),
       // 'screen3': (_) => const ScreenThree(),
      },
    );
  }
}