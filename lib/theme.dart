import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //static const _primaryColorLight = Color.fromARGB(255, 110, 65, 118);

  static final ThemeData lightTheme = ThemeData(
    //useMaterial3: true,
    primaryColor: const Color(0xff464bb1),
    // colorSchemeSeed: const Color(0xff464bb1),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor:
          MaterialStateProperty.all<Color>(const Color(0xff464bb1)),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(30.0), // Set the border radius here
          // You can also set other border properties like side, borderRadius, etc.
        ),
      ),
    )),
  );

  static final ThemeData darkTheme = ThemeData();
}
