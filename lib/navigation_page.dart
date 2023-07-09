import 'package:flutter/material.dart';
import 'package:flutter_training/data_provider.dart';
import 'package:flutter_training/first_page.dart';
import 'package:flutter_training/second_page.dart';
import 'package:provider/provider.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> pages = const [FirstPage(), SecondPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  activeIcon: Icon(
                    Icons.home_filled,
                    color: Colors.blue,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                activeIcon: Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                label: "Settings",
              ),
            ]),
        body: pages[_selectedIndex]);
  }
}
