import 'package:flutter/material.dart';

ThemeData darkmood = ThemeData(
  colorScheme: const ColorScheme.dark(
    surface: Color(0xFF121212), // Darker background surface
    primary: Color(0xFFBB86FC), // Primary color for text, icons, etc.
    secondary: Color(0xFF03DAC6), // Accent color for UI elements like buttons
    tertiary: Color(0xFF3700B3), // Darker shade for highlighting elements
    inversePrimary: Color(0xFF121212), // Dark background for inverse elements
  ),
);
