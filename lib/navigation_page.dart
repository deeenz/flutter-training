import 'package:flutter/material.dart';
import 'package:flutter_training/first_page.dart';
import 'package:flutter_training/second_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentIndex = 0;

  List<Widget> pages = const [FirstPage(), SecondPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          selectedItemColor: Colors.blue,
          backgroundColor: Colors.yellow,
          unselectedItemColor: Colors.black38,
          unselectedFontSize: 12,
          selectedFontSize: 16,
          onTap: (index) {
            currentIndex = index;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              activeIcon: Icon(
                Icons.home_filled,
                color: Colors.blue,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              activeIcon: Icon(
                Icons.settings,
                color: Colors.blue,
              ),
              label: "Settings",
            ),
          ]),
      body: pages[currentIndex],
    );
  }
}
