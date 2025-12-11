import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scrollable")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Text("test " * 400),
      ),
    );
  }
}