# beneficios_ecopetrol

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Prototipo App "Beneficios Ecopetrol"
Este es el código fuente para el prototipo de la aplicación informativa de Ecopetrol, desarrollado con Flutter.

Pasos para Ejecutar el Prototipo

1. Prerrequisitos
   Asegúrate de tener todo lo siguiente instalado y configurado, como se describió en la Guía Estratégica:

Flutter SDK

Android Studio (con el SDK de Android)

Un emulador de Android configurado o un dispositivo físico conectado.

Visual Studio Code con la extensión de Flutter.

2. Configuración del Proyecto
   Clona o descarga el proyecto en tu computador.

Crea la estructura de archivos y carpetas como se te ha indicado. Coloca cada archivo (main.dart, home_screen.dart, etc.) en su directorio correspondiente dentro de la carpeta lib/.

Añade el logo:

Crea la carpeta assets en la raíz de tu proyecto.

Dentro de assets, crea otra carpeta llamada images.

Coloca tu logo con el nombre logo_ecopetrol.png dentro de assets/images/.

Actualiza el archivo pubspec.yaml:

Abre el archivo pubspec.yaml en la raíz del proyecto.

Asegúrate de que la sección dependencies y assets coincida con el código proporcionado.

Instala las dependencias:

Abre una terminal en la carpeta raíz del proyecto y ejecuta el siguiente comando:

flutter pub get

3. Ejecutar la Aplicación
   Abre el proyecto en Visual Studio Code.

Asegúrate de que tu emulador de Android esté en ejecución o que tu dispositivo físico esté conectado y reconocido por Flutter (puedes verificarlo en la barra de estado de VS Code).

Presiona F5 o abre la paleta de comandos (Ctrl+Shift+P) y selecciona "Flutter: Launch Emulator".

Para iniciar la depuración, ve al menú Run > Start Debugging en VS Code.

La aplicación se compilará y se instalará en tu emulador/dispositivo.

4. Siguientes Pasos
   Reemplazar contenido: Busca los textos de marcador de posición (ej. "Aquí va el texto...") y reemplázalos con la información real del Plan Educacional y los beneficios.

Actualizar URLs de descarga: En el archivo lib/presentation/screens/download_screen.dart, cambia las URLs de ejemplo por las URLs reales de los formatos PDF.
