import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';
import 'package:flutter_application_1/timeLine.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = '車の家計簿';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData.light(),
      home: NavigationBar(),
    );
  }
}

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBar createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {
  int _selectedIndex = 0;
  final _pageWidgets = [
    PostList(),
    timeLine(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            title: Text('Timeline'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            title: Text('History'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Setting'),
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);
}
