import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
      elevatedButtonTheme: elevatedButtonStyle());
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green));
}

elevatedButtonStyle() => ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      ),
    );

TextTheme textTheme(BuildContext context) {
  return Theme.of(context).textTheme.copyWith(
        bodyText1: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontSize: 18, wordSpacing: .2, fontWeight: FontWeight.w300),
      );
}

InputDecorationTheme inputDecoration(BuildContext context) {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
    border: inputBorder(context),
    errorBorder: inputBorder(context),
    focusedBorder: inputBorder(context),
    focusedErrorBorder: inputBorder(context),
    enabledBorder: inputBorder(context),
    disabledBorder: inputBorder(context),
  );
}

OutlineInputBorder inputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderSide: BorderSide(width: .5, color: Theme.of(context).backgroundColor),
    borderRadius: const BorderRadius.all(Radius.circular(5)),
  );
}
