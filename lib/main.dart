import 'package:flutter/material.dart';

// 1. IMPORTAR EL PAQUETE
// Como renombramos la dependencia en el pubspec a 'test_package', el import es así:
import 'package:testpackage/testpackage.dart';
// NOTA: Si este archivo 'test_package.dart' no existe,
// revisa dentro de la carpeta "External Libraries" cuál es el archivo principal.

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent.shade700,
          title: const Text(
            "Pruebita",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            // Corregido: Se debe especificar la clase MainAxisAlignment
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Componente Local"),
              const SizedBox(height: 20),

              // 2. USAR EL WIDGET DEL PAQUETE
              // Aquí debes poner el nombre de la clase (Widget) que viene en tu paquete.
              // Por ejemplo, si tu paquete exporta un widget llamado 'TestWidget':

              // TestWidget(),  // <--- DESCOMENTAR Y USAR EL NOMBRE REAL

              // Si no sabes el nombre, escribe "test" y presiona Ctrl+Espacio
              // para que el autocompletado te sugiera los widgets disponibles del paquete.
            ],
          ),
        ),
      ),
    );
  }
}