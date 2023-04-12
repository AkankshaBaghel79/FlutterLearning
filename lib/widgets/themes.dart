import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mytheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor,
      primaryColor: Vx.green500,
      primaryColorDark: Colors.green,
      appBarTheme: const AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkcreamcolor,
      primaryColor: redish,
      primaryColorDark: Colors.white,
      appBarTheme: const AppBarTheme(
      color: Colors.black,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      )
  );

  //colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluish = Vx.purple900;
  static Color darkcreamcolor = Vx.gray900;
  static Color greenish = Colors.green;
  static Color indiigoish = Vx.indigo500;
  static Color redish = Vx.red500;
}
