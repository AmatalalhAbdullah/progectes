import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final TextEditingController field1 = TextEditingController();
  final TextEditingController field2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(child: ListView(
        children: [
            DrawerHeader(child:Center(child: 
             Text('gggggggg'))),
        ListTile(
          title: Text('الصفحه الرئسية'),
          subtitle: Text('النص'),
          leading: Icon(Icons.home),
        ),
Divider(),
 ListTile(
          title: Text('الصفحه البحث'),
          subtitle: Text('النص'),
          leading: Icon(Icons.search),
        )

        ],
      ),),

      appBar: AppBar(title: const Text("TestField")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: field1,
              decoration: const InputDecoration(hintText: "Enter The Name"),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: field2,
              decoration: const InputDecoration(hintText: "Enter The Name"),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  'screen2',
                  arguments: {
                    'name1': field1.text,
                    'name2': field2.text,
                  },
                );
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}