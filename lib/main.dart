import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CopyPage(),
    );
  }
}

class CopyPage extends StatefulWidget {
  const CopyPage({super.key});

  @override
  State<CopyPage> createState() => _CopyPageState();
}

class _CopyPageState extends State<CopyPage> {
  final TextEditingController input = TextEditingController();
  final TextEditingController output = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              " TextField",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),
            Container(
              height: 3,
              color: const Color.fromARGB(255, 150, 21, 21),
            ),

            const SizedBox(height: 30),

            TextField(
              controller: input,
              decoration: const InputDecoration(
                labelText: "Enter the Name ",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: output,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: " the name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  output.text = input.text;
                });
              },
              child: const Text("bottom "),
            ),
          ],
        ),
      ),
    );
  }
}

