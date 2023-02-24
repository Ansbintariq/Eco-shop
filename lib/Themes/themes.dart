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
        outline: Color.fromARGB(255, 255, 255, 255),
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
        bodyLarge: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
            fontWeight: FontWeight.bold),
        bodyMedium: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 158, 157, 157),
            fontSize: 13,
            fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 17, 180, 31),
              foregroundColor: Color.fromARGB(255, 0, 0, 0))));
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: Color.fromARGB(255, 11, 170, 80),
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xfff34a853),
        onPrimary: Colors.white,
        secondary: Color.fromARGB(255, 212, 112, 54),
        onSecondary: Colors.white,
        primaryContainer: Color.fromARGB(255, 212, 211, 210),
        secondaryContainer: Color.fromARGB(255, 11, 170, 80),
        tertiaryContainer: Color.fromARGB(255, 247, 225, 166),
        error: Color.fromARGB(255, 151, 149, 149),
        onError: Color(0xfffffba38),
        background: Colors.blue,
        onBackground: Colors.white,
        surface: Color.fromARGB(255, 224, 19, 63),
        onSurface: Colors.white,
        outline: Colors.black,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(255, 30, 202, 179),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
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
          fontSize: 12,
        ),
        bodyLarge: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 16,
            fontWeight: FontWeight.bold),
        bodyMedium: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 158, 157, 157),
            fontSize: 13,
            fontWeight: FontWeight.bold),
        labelSmall: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 14,
            fontWeight: FontWeight.bold),
        titleSmall: GoogleFonts.montserrat(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 14,
            fontWeight: FontWeight.bold),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xfffffba38),
              foregroundColor: Color.fromARGB(255, 0, 0, 0)))
      // colorScheme: ColorScheme.light(),
      );
}
