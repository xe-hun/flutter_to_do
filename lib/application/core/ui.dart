import 'package:flutter/material.dart';

elevatedButtonStyle() => ElevatedButtonThemeData(
        style: ButtonStyle(
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
    ));

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
      elevatedButtonTheme: elevatedButtonStyle());
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green));
}

// enum style {
//   rin(20),
//   ran(40);

//   const style(this.n);

//   final int n;
// }
