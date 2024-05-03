import 'package:flutter/material.dart';

const primary = Color.fromRGBO(86, 105, 129, 1.0);
const secondary = Color(0xFF89a7b1);
const surface = Color.fromARGB(255, 162, 166, 168);
const background = Color(0xFF031C30);

ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: primary,
  primary: primary,
  secondary: secondary,
  surface: surface,
  background: background,
  brightness: Brightness.light,
);
