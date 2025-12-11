
// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'Homepage.dart';
import 'Searchpage.dart';
import 'Settingpage.dart';
import 'Accountpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IndexPage(),
      
    );
  }
}

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Accountpage(),
  ];

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return 'الصفحة الرئيسية';
      case 1:
        return 'صفحة البحث';
      case 2:
        return 'صفحة الإعدادات';
      case 3:
        return 'صفحة الحساب';
      default:
        return 'تطبيق';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // كل النصوص من اليمين
      child: Scaffold(
        appBar: AppBar(
          title: Text(_getTitle(_selectedIndex)),
          backgroundColor: Colors.blueGrey,
        ),
        body: IndexedStack(
          index: _selectedIndex,
          children: _pages,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Colors.blue, // اللون الأزرق لجميع العناصر المحددة
          unselectedItemColor: Colors.grey[600],
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'البحث',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'الإعدادات',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: 'الحساب',
            ),
          ],
        ),
      ),
    );
  }
}

class Homepage {
  const Homepage();
}
