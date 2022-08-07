import 'package:flutter/material.dart';

const Color primClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    primaryColor: Colors.red,
    brightness: Brightness.dark,
  );

  static final dark = ThemeData(
    primaryColor: Colors.yellow,
    brightness: Brightness.light,
  );
}
