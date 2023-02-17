import 'package:eco_shop/Themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mythemes {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xfff232446),
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: const Color(0xfff232446),
      onPrimary: Colors.white,
      secondary: Colors.green,
      onSecondary: Colors.white,
      primaryContainer: Color(0xfff747d8f),
      secondaryContainer: Color(0xfff1e8d8f),
      error: Color.fromARGB(255, 233, 74, 74),
      onError: Colors.white,
      background: Colors.blue,
      onBackground: Colors.white,
      surface: Colors.pink,
      onSurface: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xfff232446),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.amber),
    // colorScheme: ColorScheme.dark(),
    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.bold),
      displaySmall: GoogleFonts.montserrat(
        color: Color(0xfff8c92a8),
        fontSize: 13,
      ),
      bodySmall: GoogleFonts.montserrat(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 13,
      ),
    ),
  );
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Color.fromARGB(255, 11, 170, 80),
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xfff34a853),
      onPrimary: Colors.white,
      secondary: Color.fromARGB(255, 212, 112, 54),
      onSecondary: Colors.white,
      primaryContainer: Colors.orange,
      secondaryContainer: Color.fromARGB(255, 11, 170, 80),
      tertiaryContainer: Color.fromARGB(255, 255, 255, 255),
      error: Color.fromARGB(255, 151, 149, 149),
      onError: Colors.white,
      background: Colors.blue,
      onBackground: Colors.white,
      surface: Colors.pink,
      onSurface: Colors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color.fromARGB(255, 30, 202, 179),
        selectedItemColor: Colors.black,
        unselectedItemColor: white),

    textTheme: TextTheme(
      displayMedium: GoogleFonts.montserrat(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.bold),
      displaySmall: GoogleFonts.montserrat(
        color: Color.fromARGB(255, 203, 201, 201),
        fontSize: 13,
      ),
      bodySmall: GoogleFonts.montserrat(
        color: Color.fromARGB(255, 210, 208, 208),
        fontSize: 13,
      ),
    ),

    // colorScheme: ColorScheme.light(),
  );
}
