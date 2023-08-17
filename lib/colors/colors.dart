import 'package:flutter/material.dart';

const MaterialColor coral = MaterialColor(_coralPrimaryValue, <int, Color>{
  50: Color(0xFFFDEEEE),
  100: Color(0xFFFAD5D5),
  200: Color(0xFFF7BABA),
  300: Color(0xFFF39E9E),
  400: Color(0xFFF18989),
  500: Color(_coralPrimaryValue),
  600: Color(0xFFEC6C6C),
  700: Color(0xFFE96161),
  800: Color(0xFFE75757),
  900: Color(0xFFE24444),
});
const int _coralPrimaryValue = 0xFFEE7474;

const MaterialColor coralAccent = MaterialColor(_coralAccentValue, <int, Color>{
  100: Color(0xFFFFFFFF),
  200: Color(_coralAccentValue),
  400: Color(0xFFFFCFCF),
  700: Color(0xFFFFB6B6),
});
const int _coralAccentValue = 0xFFFFFFFF;