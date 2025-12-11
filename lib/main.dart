import 'package:flutter/material.dart';

void main() => runApp(const MyListApp());

class MyListApp extends StatelessWidget {
  const MyListApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListTile Example',
      home: const ListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  
  final List<Map<String, String>> items = const [
    {
      'title': 'العنصر الأول',
      'subtitle': 'وصف قصير للعنصر الأول',
    },
    {
      'title': 'العنصر الثاني',
      'subtitle': 'وصف قصير للعنصر الثاني',
    },
    {
      'title': 'العنصر الثالث',
      'subtitle': 'وصف قصير للعنصر الثالث',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('my list')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final title = items[index]['title']!;
            final subtitle = items[index]['subtitle']!;
            return ListTile(
              leading: const Icon(Icons.home), 
              title: Text(title),             
              subtitle: Text(subtitle),         
              trailing: const Icon(Icons.arrow_forward_ios), 
              onTap: () {
              
                print('تم الضغط على: $title');
                
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('ضغطت على: $title')),
                );
              },
            );
          },
        ),
      ),
    );
  }
}