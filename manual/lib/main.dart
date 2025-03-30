import 'package:flutter/material.dart';
import 'screens/pantalla_inicio.dart';

void main() {
  runApp(const SenaManualApp());
}

class SenaManualApp extends StatelessWidget {
  const SenaManualApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manual SENA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF39A900), // Verde SENA
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF39A900),
          secondary: const Color(0xFFFF6600), // Nara
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF39A900),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF39A900),
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
