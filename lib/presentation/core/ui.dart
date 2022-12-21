import 'package:flutter/material.dart';

ThemeData lightThemeData() {
  return ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
    highlightColor: Colors.grey.shade400,

    //  Colors.grey.shade400,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.grey.shade900, fontSize: 18),
      bodyText2: TextStyle(
          color: Colors.grey.shade800,
          fontSize: 14,
          letterSpacing: 1.2,
          height: 1.5),
      headline4: TextStyle(color: Colors.grey.shade900, fontSize: 32),
    ),
  );
}

ThemeData darkThemeData() {
  return ThemeData.dark().copyWith(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.grey),
    highlightColor: Colors.grey.shade600,
    textTheme: TextTheme(
        bodyText1: TextStyle(color: Colors.grey.shade200, fontSize: 18),
        bodyText2: TextStyle(
            color: Colors.grey.shade200,
            fontSize: 14,
            letterSpacing: 1.2,
            height: 1.5),
        headline4: TextStyle(color: Colors.grey.shade100, fontSize: 32)),
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

enum InCurvePosition {
  first,
  last,
}

class InCurve extends Curve {
  const InCurve(this.inCurvePosition);
  final InCurvePosition inCurvePosition;

  @override
  double transformInternal(double t) {
    if (inCurvePosition == InCurvePosition.first) {
      return t.clamp(0, .5) * 2;
      // clambDouble(t, 0, .5) * 2;
    } else {
      return (t.clamp(0.5, 1) - 0.5) * 2;
      // return (clampDouble(t, 0.5, 1) - 0.5) * 2;
    }
  }
}
