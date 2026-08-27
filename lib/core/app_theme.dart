import 'package:flutter/material.dart';

class AppTheme {
  // Apply Cairo font to all text
  static TextTheme _cairoTextTheme(TextTheme base) {
    return base.apply(fontFamily: 'Cairo');
  }

  // --- Light Theme ---
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo', // Global font
    brightness: Brightness.light,

    colorScheme: ColorScheme.light(
      primary: Colors.teal.shade700,
      onPrimary: Colors.white,
      secondary: Colors.tealAccent.shade700,
      surface: Colors.white,
      onSurface: Colors.black87,
      outline: Colors.teal.shade200,
    ),

    textTheme: _cairoTextTheme(const TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16),
      labelLarge: TextStyle(fontWeight: FontWeight.bold),
    )),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.teal.shade700,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: const TextStyle(
        fontFamily: 'Cairo',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    tabBarTheme: const TabBarThemeData(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      indicatorColor: Colors.tealAccent,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey.shade100,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.teal),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.teal, width: 2),
      ),
    ),
  );

  // --- Dark Theme ---
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Cairo', // Global font
    brightness: Brightness.dark,

    colorScheme: const ColorScheme.dark(
      primary: Colors.teal,
      onPrimary: Colors.white,
      secondary: Colors.tealAccent,
      surface: Color(0xFF1E1E1E),
      onSurface: Colors.white,
      outline: Colors.tealAccent,
    ),

    textTheme: _cairoTextTheme(const TextTheme(
      titleLarge: TextStyle(fontWeight: FontWeight.bold),
      bodyLarge: TextStyle(fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white70),
    )),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF1E1E1E),
      foregroundColor: Colors.tealAccent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'Cairo',
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    tabBarTheme: const TabBarThemeData(
      labelColor: Colors.tealAccent,
      unselectedLabelColor: Colors.white54,
      indicatorColor: Colors.tealAccent,
      labelStyle: TextStyle(
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Color(0xFF2A2A2A),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.tealAccent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: Colors.tealAccent, width: 1.5),
      ),
    ),
  );
}
