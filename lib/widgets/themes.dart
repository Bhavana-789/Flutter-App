import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      // primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      // cardColor: Colors.white,
      // canvasColor: darkBlue,
      // colorScheme: ColorScheme.fromSeed(seedColor: darkBlue, brightness: Brightness.light),
      // floatingActionButtonTheme:
      //     FloatingActionButtonThemeData(backgroundColor: lightBlue),
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black, size: 25),
        titleTextStyle: TextStyle(
            fontSize: 25, fontStyle: FontStyle.normal, color: Colors.black),
      ));
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      // cardColor: Colors.black,
      // brightness: Brightness.dark,
      // canvasColor: Colors.white,
      // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white,
      // brightness: Brightness.dark),
      // floatingActionButtonTheme:
      //     FloatingActionButtonThemeData(backgroundColor: darkBlue),
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
            fontSize: 25, fontStyle: FontStyle.normal, color: Colors.black),
      ));

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkCreamColor = Vx.gray900;
  static Color darkBlue = const Color(0xff403b58);
  static Color lightBlue = Vx.indigo500;
}
