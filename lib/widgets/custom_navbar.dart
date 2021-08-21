import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          icon: Icon(FontAwesomeIcons.sitemap),
          label: "",
          activeIcon: Icon(FontAwesomeIcons.sitemap, size: 25,)
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.stickyNote),
          label: "",
          activeIcon: Icon(FontAwesomeIcons.stickyNote, size: 25,)
        ),
      ],
    );
  }
}