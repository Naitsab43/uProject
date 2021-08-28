import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class CustomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      items: [
        TabItem(icon: FontAwesomeIcons.tasks, title: 'Proyecto'),
        TabItem(icon: FontAwesomeIcons.stickyNote, title: 'Notas'),
      ],
      curveSize: 95,
      backgroundColor: Colors.red,
      height: 60,
      top: -20,
    );
  }
}