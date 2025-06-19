import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Temporizador de 3 segundos para la pantalla de bienvenida.
    Timer(const Duration(seconds: 3), () {
      // Después de 3 segundos, navega a la pantalla principal ('/home').
      // `pushReplacementNamed` evita que el usuario pueda volver a esta pantalla.
      Navigator.of(context).pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Usamos el color primario de fondo.
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LOGO DE ECOPETROL:
            // La app buscará el logo en 'assets/images/logo_ecopetrol.png'.
            // Asegúrate de que el archivo exista y lo hayas declarado en pubspec.yaml.
            // Si el logo no se encuentra, mostrará un ícono de error.
            Image.asset(
              'assets/images/logo_ecopetrol.png',
              width: 200,
              errorBuilder: (context, error, stackTrace) {
                // Mensaje de fallback si el logo no carga.
                return const Icon(
                  Icons.business,
                  size: 100,
                  color: Colors.white,
                );
              },
            ),
            const SizedBox(height: 24),
            // Indicador de carga para darle feedback visual al usuario.
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
