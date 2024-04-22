import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade500,
    secondary: Colors.grey.shade200,
    tertiary: Colors.white,
    inversePrimary: Colors.grey.shade900,
    surfaceTint: Colors.grey.shade900,
    surfaceVariant: const Color(0xFF88B2AC),
    shadow: Colors.white,

  ),
  
 
);


ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Colors.grey.shade900,
    primary: Colors.grey.shade600,
    secondary: Colors.grey.shade700,
    tertiary: const Color.fromARGB(255, 38, 38, 38),
    inversePrimary: Colors.grey.shade300,
    surfaceTint: const Color(0xFFE4E7E6),
    surfaceVariant: const Color(0xFF4a4a4a),
    shadow: const Color(0xFF4a4a4a),
  ),
  
);