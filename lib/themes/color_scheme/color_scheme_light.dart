import 'package:flutter/material.dart';

const primary = Color(0xFFB5485F);
const secondary = Color(0xFF5A3546);
const grey = Color.fromARGB(255, 162, 166, 168);
const background = Colors.white;

ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: primary,
  primary: primary,
  secondary: secondary,
  surface: grey,
  background: background,
  brightness: Brightness.light,
);
