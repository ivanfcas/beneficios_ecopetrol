import 'package:flutter/material.dart';
import 'package:beneficios_ecopetrol/core/constants/app_colors.dart';

// Una pantalla genérica para mostrar un título y un bloque de texto.
// Es reutilizable para cualquier sección informativa.
class DetailScreen extends StatelessWidget {
  final String title;
  final String content;

  const DetailScreen({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // El título de la pantalla se pasa como parámetro.
        title: Text(title),
        // El botón de "Atrás" se añade automáticamente por el `AppBar`.
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Título principal del contenido
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              const Divider(color: AppColors.primaryYellow),
              const SizedBox(height: 16),
              // Contenido principal
              Text(
                content,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
