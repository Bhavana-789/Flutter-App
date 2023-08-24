import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.lato().fontFamily,
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 25),
        titleTextStyle: TextStyle(
            fontSize: 25, fontStyle: FontStyle.normal, color: Colors.black),
      ));
  static ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
      );

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBlue = const Color(0xff403b58);
}

