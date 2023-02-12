import 'package:flutter/material.dart';

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.white,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
    primaryColor: Colors.black,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 18.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      displayMedium: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600),
      displaySmall: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
      ),
      bodyMedium: TextStyle(
        color: Colors.white,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
      ),
      bodySmall: TextStyle(
        color: Colors.white,
        fontSize: 10.0,
        fontFamily: 'Montserrat',
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
      ),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white, foregroundColor: Colors.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white.withOpacity(0.5);
            } else {
              if (states.contains(MaterialState.disabled)) {
                return Colors.white.withOpacity(0.5);
              }
            }
            return Colors.white; // Use the component's default.
          },
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            color: Colors.black,
            fontSize: 14.0,
            fontFamily: 'Montserrat',
          ),
        ),
      ),
    ),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(
          secondary: Colors.white,
          primary: Colors.black,
        )
        .copyWith(background: const Color(0xffE5E5E5)),
  );
}
