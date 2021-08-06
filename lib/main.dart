import 'package:flutter/material.dart';

import 'package:notas_app/screens/home_screen.dart';
import 'package:notas_app/screens/project_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uProject',
      initialRoute: "project",
      routes: {
        "home": (_) => HomeScreen(),
        "project": (_) => ProjectScreen(),
      },
    );
  }
}