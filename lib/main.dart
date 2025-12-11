import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNav Example',
      home: const BottomNavExample(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomNavExample extends StatefulWidget {
  const BottomNavExample({super.key});
  @override
  State<BottomNavExample> createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _currentIndex = 0;

  // ثلاث صفحات منفصلة
  final List<Widget> _pages = const [
    PageOne(),
    PageTwo(),
    PageThree(),
  ];

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Directionality( // لو تبي RTL عربي
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: const Text('مثال BottomNavigationBar')),
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTap,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'الصفحة الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'المتجر',
            ),
      
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'الحساب',
            ),
          ],
        ),
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'هذه الصفحة الرئيسية',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'صفحة المتجر',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'صفحة الحساب',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}