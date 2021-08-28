
import 'package:flutter/material.dart';

class CustomTheme {

  static ThemeData get theme {

    return ThemeData(
      primaryColor: Colors.blue[600],
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.blue[800])
    );

  } 

}