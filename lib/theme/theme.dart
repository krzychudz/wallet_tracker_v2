import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return Theme.of(context).copyWith(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: Colors.black,
      primary: Colors.white,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
    ),
    primaryColor: Colors.white,
    backgroundColor: const Color(0xffE5E5E5),
    textTheme: TextTheme(
      headline1: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 16.0,
      ),
      bodyText1: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 12.0,
      ),
      bodyText2: GoogleFonts.montserrat(
          color: const Color(0xff3D4548), fontSize: 10.0),
      caption: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 14.0,
      ),
      subtitle1: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 14.0,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        textStyle: MaterialStateProperty.all<TextStyle>(
          GoogleFonts.montserrat(color: Colors.black, fontSize: 14.0),
        ),
      ),
    ),
  );
}
