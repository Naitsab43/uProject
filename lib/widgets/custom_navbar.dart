import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0,
      backgroundColor: Colors.red,
      iconSize: 26,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black45,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit),
          label: "",
          activeIcon: Icon(Icons.ac_unit, size: 30,)
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.note),
          label: "",
          activeIcon: Icon(Icons.note, size: 30,)
        ),
      ],
    );
  }
}