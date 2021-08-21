import 'package:flutter/material.dart';

import 'package:notas_app/screens/home_screen.dart';
import 'package:notas_app/screens/note_screen.dart';
import 'package:notas_app/screens/notes_screen.dart';
import 'package:notas_app/screens/project_screen.dart';
import 'package:notas_app/screens/task_screen.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'uProject',
      initialRoute: "notes",
      routes: {
        "home": (_) => HomeScreen(),
        "project": (_) => ProjectScreen(),
        "task": (_) => TaskScreen(),
        "notes": (_) => NotesScreen(),
        "note": (_) => NoteScreen(),
      },
    );
  }
}