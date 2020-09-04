import 'package:first_flutter_app/ui/movie_ui/movie_ui.dart';
import 'package:flutter/material.dart';

import 'ui/home.dart';

// void main() {
//   runApp(ScaffoldExample());
// }

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    brightness: Brightness.dark,
    accentColor: Colors.amber,
    primaryColor: Colors.green,
    scaffoldBackgroundColor: Colors.green.shade700,
    backgroundColor: Colors.amber,
    textTheme: _appTextTheme(base.textTheme)
  );
}

TextTheme _appTextTheme(TextTheme base){
  return base.copyWith(
    headline5: base.headline5.copyWith(
      fontWeight: FontWeight.w500,
    ),
    headline6: base.headline6.copyWith(
      fontSize: 18,
    ),
    caption: base.caption.copyWith(
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
    button: base.button.copyWith(
      // letterSpacing: 3.0
      fontSize: 12,
      // backgroundColor: Colors.red,
    ),
    bodyText2: base.bodyText2.copyWith(
      fontSize: 25,
      fontFamily: "Satisfy",
      color: Colors.white,
    )
  ).apply(
    fontFamily: "Satisfy",
    displayColor: Colors.black,
    bodyColor: Colors.white
  );
}

void main() => runApp(new MaterialApp(
    theme: _appTheme,
  // theme: ThemeData(
  //   brightness: Brightness.dark,
  //   primaryColor: Colors.grey[800],
  //   textTheme: TextTheme(
  //     headline5: TextStyle(
  //       fontSize: 34,
  //       fontWeight: FontWeight.bold,
  //     ),
  //     bodyText2: TextStyle(
  //       fontSize: 17,
  //       color: Colors.white
  //     ),
  //   ),
  // ),
  home: QuizApp(),
));
