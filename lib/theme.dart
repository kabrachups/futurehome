import 'package:flutter/material.dart';

var lightThemeData = ThemeData(
  // colorScheme: ColorScheme(
  //     primary: Colors.black,
  //     onPrimary: Colors.grey[800]!,
  //     background: Colors.black,
  //     onBackground: Colors.black,
  //     secondary: Colors.cyan[200]!,
  //     onSecondary: Colors.white,
  //     error: Colors.black,
  //     onError: Colors.white,
  //     surface: Colors.black,
  //     onSurface: Colors.black,
  //     brightness: Brightness.light),
  scaffoldBackgroundColor: Colors.grey[500]!,
  cardTheme: CardTheme(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.blue, width: 1.0),
      borderRadius: BorderRadius.circular(15),
    ),
    elevation: 0,
    // shadowColor: Colors.grey[100]!,
  ),
  // buttonTheme: ButtonThemeData(
  //   buttonColor: Colors.black,
  // ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      backgroundColor: Colors.grey[800]!,
      primary: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey[300]!, width: 1.0),
        borderRadius: BorderRadius.circular(25),
      ),
    ),
  ),
);
