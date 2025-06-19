import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:beneficios_ecopetrol/core/constants/app_colors.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  // Función para intentar abrir una URL.
  // Muestra un mensaje si no se puede abrir.
  void _launchURL(BuildContext context, String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      // Muestra un Snackbar si hay un error al abrir la URL.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No se pudo abrir el enlace: $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Descargar Formatos'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
        children: [
          // LISTA DE FORMATOS PARA DESCARGAR
          // Cada ListTile representa un formato.
          // Reemplaza los nombres y las URLs con los datos reales.

          _buildDownloadTile(context, 'Formato de Solicitud de Beneficio',
              'URL_AL_FORMATO_1.pdf' // URL de ejemplo
              ),
          _buildDownloadTile(context, 'Formato de Novedades Educativas',
              'URL_AL_FORMATO_2.pdf' // URL de ejemplo
              ),
          _buildDownloadTile(context, 'Formato de Actualización de Datos',
              'URL_AL_FORMATO_3.pdf' // URL de ejemplo
              ),
          // Puedes añadir más formatos aquí...
        ],
      ),
    );
  }

  // Widget reutilizable para cada elemento de la lista de descargas.
  Widget _buildDownloadTile(BuildContext context, String title, String url) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.only(bottom: 12.0),
      child: ListTile(
        leading: const Icon(Icons.file_present, color: AppColors.primaryGreen),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        trailing:
            const Icon(Icons.download_for_offline, color: AppColors.lightText),
        onTap: () => _launchURL(context, url),
      ),
    );
  }
}
