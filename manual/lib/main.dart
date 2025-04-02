import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/pantalla_inicio.dart';
import 'theme/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reglamento del Aprendiz SENA',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,
      home: const PantallaInicio(),
    );
  }
}
