import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    scaffoldBackgroundColor: CustomColors.mainBackground,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
    inputDecorationTheme: const InputDecorationTheme(
      hintStyle: TextStyle(
        color: Colors.black,
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
    ),
    primaryColor: Colors.white,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: Colors.black,
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
        color: Colors.grey,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
      ),
      bodyMedium: TextStyle(
        color: CustomColors.blackText,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
      ),
      bodySmall: TextStyle(
        color: Colors.black,
        fontSize: 10.0,
        fontFamily: 'Montserrat',
      ),
      titleMedium: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
      ),
    ),
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black, foregroundColor: Colors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.black.withOpacity(0.5);
            } else {
              if (states.contains(MaterialState.disabled)) {
                return Colors.black.withOpacity(0.5);
              }
            }
            return Colors.black; // Use the component's default.
          },
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
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
          secondary: Colors.black,
          primary: Colors.white,
        )
        .copyWith(background: const Color(0xffE5E5E5)),
  );
}
