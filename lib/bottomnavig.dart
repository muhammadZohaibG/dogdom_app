import 'package:dogdom_app/home.dart';
import 'package:flutter/material.dart';
import 'package:dogdom_app/messages.dart';
import 'package:dogdom_app/circle.dart';
import 'package:dogdom_app/release.dart';
import 'package:dogdom_app/personal.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const CirclePage(),
    const ReleasePage(),
    const MessagePage(),
    const PersonalPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/home.png')),
                backgroundColor: Colors.white,
                label: 'home'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/circle.png')),
                backgroundColor: Colors.white,
                label: 'circle'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/release.png')),
                backgroundColor: Colors.white,
                label: 'release'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/message.png')),
                backgroundColor: Colors.white,
                label: 'message'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/user.png')),
                backgroundColor: Colors.white,
                label: 'profile'),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 248, 88, 88),
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 20,
          onTap: _onItemTapped,
          elevation: 0),
    );
  }
}
