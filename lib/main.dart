import 'package:beneficios_ecopetrol/presentation/screens/download_screen.dart';
import 'package:flutter/material.dart';
import 'package:beneficios_ecopetrol/presentation/screens/splash_screen.dart';
import 'package:beneficios_ecopetrol/presentation/screens/home_screen.dart';
import 'package:beneficios_ecopetrol/core/constants/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beneficios Ecopetrol',
      // Desactiva la cinta de "Debug" en la esquina superior derecha.
      debugShowCheckedModeBanner: false,
      // TEMA GLOBAL DE LA APLICACIÓN:
      // Aquí definimos los colores y fuentes por defecto.
      theme: ThemeData(
        primaryColor: AppColors.primaryGreen,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.primaryGreen,
          secondary: AppColors.primaryYellow,
        ),
        fontFamily: 'Roboto', // Puedes cambiar la fuente si lo deseas.
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: Colors.white,
          elevation: 2.0,
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: AppColors.darkText,
          ),
          bodyMedium: TextStyle(fontSize: 16.0, color: AppColors.lightText),
        ),
      ),

      // RUTAS DE NAVEGACIÓN:
      // Define las pantallas de la app y cómo navegar entre ellas.
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/downloads': (context) => const DownloadScreen(),
      },
    );
  }
}
