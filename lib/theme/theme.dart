import 'package:flutter/material.dart';
import 'package:wallet_tracker_v2/theme/colors/custom_colors.dart';

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
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.black,
        fontSize: 18.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      headline2: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600),
      headline3: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      headline4: TextStyle(
        color: Colors.grey,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 12.0,
        fontFamily: 'Montserrat',
      ),
      bodyText2: TextStyle(
        color: CustomColors.blackText,
        fontSize: 10.0,
        fontFamily: 'Montserrat',
      ),
      caption: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
      ),
      subtitle1: TextStyle(
        color: Colors.black,
        fontSize: 14.0,
        fontFamily: 'Montserrat',
      ),
    ),
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
        // backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
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
  );
}
