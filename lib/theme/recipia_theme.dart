import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class RecipiaTheme {
  ///Declare a text theme called light text theme which uses google font comfortaa with predefined font size and weight
  ///The color os the text is black
  static TextTheme lightTextTheme = TextTheme(
    bodyText2: GoogleFonts.comfortaa(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    bodyText1: GoogleFonts.comfortaa(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    headline1: GoogleFonts.comfortaa(
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
      color: kLightTextColor,
    ),
    headline2: GoogleFonts.comfortaa(
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: kLightTextColor,
    ),
    headline3: GoogleFonts.comfortaa(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: kLightTextColor,
    ),
    headline4: GoogleFonts.comfortaa(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: kLightTextColor,
    ),
    headline5: GoogleFonts.comfortaa(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: kLightTextColor,
    ),
    headline6: GoogleFonts.comfortaa(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: kLightTextColor,
    ),
  );

  ///Declare a text theme called dark text theme which uses google font comfortaa with predefined font size and weight
  ///The color os the text is white
  static TextTheme darkTextTheme = TextTheme(
    bodyText2: GoogleFonts.comfortaa(
      fontSize: 10.0,
      fontWeight: FontWeight.w400,
      color: kDarkTextColor,
    ),
    bodyText1: GoogleFonts.comfortaa(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    headline1: GoogleFonts.comfortaa(
      fontSize: 24.0,
      fontWeight: FontWeight.w900,
      color: kDarkTextColor,
    ),
    headline2: GoogleFonts.comfortaa(
      fontSize: 22.0,
      fontWeight: FontWeight.w800,
      color: kDarkTextColor,
    ),
    headline3: GoogleFonts.comfortaa(
      fontSize: 20.0,
      fontWeight: FontWeight.w700,
      color: kDarkTextColor,
    ),
    headline4: GoogleFonts.comfortaa(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: kDarkTextColor,
    ),
    headline5: GoogleFonts.comfortaa(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: kDarkTextColor,
    ),
    headline6: GoogleFonts.comfortaa(
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
      color: kDarkTextColor,
    ),
  );

  ///Define a static method light which returns the color tones for a light theme
  ///using the light text theme already created
  static ThemeData light() {
    return ThemeData(
      scaffoldBackgroundColor: kLightScaffoldColor,
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) => Colors.black),
      ),
      appBarTheme: AppBarTheme(
        foregroundColor: kLightAppBarTextColor,
        backgroundColor: kLightAppBarBackgroundColor,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: kLightAppBarTextColor,
          fontWeight: FontWeight.w300,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: kLightAppBarTextColor,
        backgroundColor: kLightAppBarBackgroundColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: kWhiteColor,
        unselectedItemColor: kLightAppBarTextColor,
        backgroundColor: kLightAppBarBackgroundColor,
      ),
      cardColor: kLightCardColor,
      textTheme: lightTextTheme,
    );
  }

  ///Define a static method dark which returns the color tones for a dark theme
  ///using the dark text theme already created
  static ThemeData dark() {
    return ThemeData(
      scaffoldBackgroundColor: kDarkScaffoldColor,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: kDarkAppBarTextColor,
        backgroundColor: kDarkAppBarBackgroundColor,
        titleTextStyle: TextStyle(
          fontSize: 22,
          color: kLightCardColor,
          fontWeight: FontWeight.w300,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: kDarkAppBarTextColor,
        backgroundColor: kDarkCardColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kWhiteColor,
        backgroundColor: kDarkAppBarBackgroundColor,
      ),
      cardColor: kDarkCardColor,
      textTheme: darkTextTheme,
    );
  }
}
