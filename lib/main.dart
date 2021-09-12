import 'package:flutter/material.dart';
import 'screens/screen_home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ScreenHome(),
    theme: ThemeData(
      primaryColor: Color( 0xffe59400),
      accentColor: Colors.white,
      scaffoldBackgroundColor: Color( 0xfff5e9b9),
    ),
  ));
}

