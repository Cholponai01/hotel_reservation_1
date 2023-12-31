import 'package:flutter/material.dart';

var theme = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      foregroundColor: Colors.transparent,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        height: 1.20,
      )),
  textTheme: const TextTheme(
    bodySmall: TextStyle(
      fontSize: 14,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
      height: 1.20,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
      height: 1.20,
    ),
    bodyLarge: TextStyle(
      fontSize: 22,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
      height: 1.20,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w500,
      height: 1.20,
    ),
    titleLarge: TextStyle(
      fontSize: 30,
      fontFamily: 'SF Pro Display',
      fontWeight: FontWeight.w600,
      height: 1.20,
    ),
  ),
);
