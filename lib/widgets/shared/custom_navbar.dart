import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CustomNavigationBar(
      iconSize: 25.0,
      
      selectedColor: Colors.white,
      strokeColor: Colors.white,
      unSelectedColor: Color.fromRGBO(50, 50, 50, 1),
      backgroundColor: Theme.of(context).primaryColor,
      items: [

        CustomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.tasks),

        ),
        CustomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.stickyNote),

        ),

      ],
      currentIndex: 0,
      onTap: (value) => Navigator.pushNamed(context, "notes"),
    );
  }

  /* @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: FontAwesomeIcons.tasks, title: 'Proyecto'),
        TabItem(icon: FontAwesomeIcons.stickyNote, title: 'Notas'),
      ],
      curveSize: 95,
      backgroundColor: Theme.of(context).primaryColor,
      height: 60,
      top: -20,
    );
  } */

  
}