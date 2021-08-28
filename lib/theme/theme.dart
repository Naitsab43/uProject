
import 'package:flutter/material.dart';

class CustomTheme {

  static ThemeData get theme {

    return ThemeData(
      primaryColor: Colors.purple[600],
      floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.purple[800])
    );

  } 

}