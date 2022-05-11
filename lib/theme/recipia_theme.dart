import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipia/theme/colors.dart';

class RecipiaTheme {
  ///Declare a text theme called light text theme which uses google font comfortaa with predefined font size and weight
  ///The color os the text is black
  static TextTheme lightTextTheme = TextTheme(
    bodyText2: GoogleFonts.comfortaa(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.comfortaa(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline1: GoogleFonts.comfortaa(
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    ),
    headline2: GoogleFonts.comfortaa(
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headline3: GoogleFonts.comfortaa(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline4: GoogleFonts.comfortaa(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline5: GoogleFonts.comfortaa(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    headline6: GoogleFonts.comfortaa(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );

  ///Declare a text theme called dark text theme which uses google font comfortaa with predefined font size and weight
  ///The color os the text is white
  static TextTheme darkTextTheme = TextTheme(
    bodyText2: GoogleFonts.comfortaa(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.comfortaa(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headline1: GoogleFonts.comfortaa(
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
      color: Colors.white,
    ),
    headline2: GoogleFonts.comfortaa(
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: Colors.white,
    ),
    headline3: GoogleFonts.comfortaa(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline4: GoogleFonts.comfortaa(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline5: GoogleFonts.comfortaa(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    headline6: GoogleFonts.comfortaa(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  ///Define a static method light which returns the color tones for a light theme
  ///using the light text theme already created
  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: kPrimaryColor,
      ),
      textTheme: lightTextTheme,
    );
  }

  ///Define a static method dark which returns the color tones for a dark theme
  ///using the dark text theme already created
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: kPrimaryColor,
      ),
      textTheme: darkTextTheme,
    );
  }
}
