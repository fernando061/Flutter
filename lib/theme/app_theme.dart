import 'package:flutter/material.dart';

class AppTheme{
  static const Color textColor = Colors.white;
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // primary color
        primaryColor: Colors.indigo,

        // APPBAR theme
        appBarTheme:  const AppBarTheme(
          color: primary,
          elevation: 0
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)
        ),
        
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
        ),
        // textTheme: const TextTheme(
        //   bodyLarge: TextStyle(color: Colors.white), // Establece el color del texto en blanco
        //   bodyMedium: TextStyle(color: Colors.white),
        // )
      );

















  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        // primary color
        primaryColor: Colors.indigo,

        // APPBAR theme
        appBarTheme:  const AppBarTheme(
          color: primary,
          elevation: 0
        ),

        scaffoldBackgroundColor: Colors.black
      );
}