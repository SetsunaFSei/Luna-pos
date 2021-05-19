import 'package:flutter/material.dart';

class CelesetialNavBar {
  Widget bottomNavBar(int index, Function(int) onTap) => BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: index,
        selectedItemColor: Colors.amber[800],
        onTap: onTap,
      );
}
