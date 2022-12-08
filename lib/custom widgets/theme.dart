import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData1() {
  return ThemeData(
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: Color.fromARGB(255, 127, 17, 224)),
    //iconTheme: IconThemeData(color: Color.fromARGB(255, 127, 17, 224)),
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      // contentPadding: EdgeInsets.symmetric(
      //   vertical: 22,
      //   horizontal: 26,
      // ),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 127, 17, 224))),
      //Color.fromARGB(255, 245, 167, 44)
      labelStyle: TextStyle(
        //fontSize: 35,
        color: Color.fromARGB(255, 127, 17, 224),
      ),
    ),
    appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 127, 17, 224)),
    primaryColor: const Color.fromARGB(255, 127, 17, 224),
    secondaryHeaderColor: const Color.fromARGB(255, 245, 167, 44),

    //canvasColor: const Color.fromARGB(255, 65, 13, 214),
    textTheme: GoogleFonts.interTextTheme(),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 127, 17, 224),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 127, 17, 224),
      ),
    ),
  );
}

ThemeData themeData2() {
  return ThemeData(
    appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 65, 13, 214)),
    primaryColor: const Color.fromARGB(255, 65, 13, 214),
    secondaryHeaderColor: const Color.fromARGB(255, 245, 167, 44),
    dividerColor: const Color.fromARGB(255, 65, 13, 214),
    //canvasColor: const Color.fromARGB(255, 65, 13, 214),
    textTheme: GoogleFonts.interTextTheme(),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 65, 13, 214),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 65, 13, 214),
      ),
    ),
  );
}
