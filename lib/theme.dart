import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //static const _primaryColorLight = Color.fromARGB(255, 110, 65, 118);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Color.fromARGB(255, 110, 65, 118),
  );

  static final ThemeData darkTheme = ThemeData();
}
