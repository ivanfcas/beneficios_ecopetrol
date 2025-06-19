import 'package:flutter/material.dart';
import 'package:beneficios_ecopetrol/presentation/screens/detail_screen.dart';
import 'package:beneficios_ecopetrol/presentation/widgets/main_menu_button.dart';
import 'package:beneficios_ecopetrol/core/constants/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beneficios Ecopetrol'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Botón para "Plan Educacional"
                MainMenuButton(
                  title: 'Plan Educacional',
                  icon: Icons.school,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(
                          title: 'Plan Educacional',
                          // CONTENIDO DE MARCADOR DE POSICIÓN
                          content:
                              'Aquí va el texto detallado sobre el Plan Educacional de Ecopetrol. Esta sección puede contener varios párrafos explicando todos los aspectos del plan.',
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // Botón para "Portafolio de Beneficios"
                MainMenuButton(
                  title: 'Portafolio de Beneficios',
                  icon: Icons.card_giftcard,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(
                          title: 'Portafolio de Beneficios',
                          // CONTENIDO DE MARCADOR DE POSICIÓN
                          content:
                              'Aquí va la descripción completa del portafolio de beneficios. Puedes listar y detallar cada uno de los beneficios disponibles para los empleados.',
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),

                // Botón para "Descargar Formatos"
                MainMenuButton(
                  title: 'Descargar Formatos',
                  icon: Icons.download,
                  onPressed: () {
                    // Navega a la pantalla dedicada a las descargas.
                    Navigator.pushNamed(context, '/downloads');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
