import 'package:flutter/material.dart';

class AppTheme{
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        // primary color
        primaryColor: Colors.indigo,

        // APPBAR theme
        appBarTheme:  const AppBarTheme(
          color: primary,
          elevation: 0
        )
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