import 'package:flutter/material.dart';
import 'package:testpackage/entrada_modulo.dart';

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
          title: const Text("Pruebita", style: TextStyle(color: Colors.white)),
        ),
        body: Column( // Quitamos el Center porque Expanded necesita saber límites
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Componente Local (App Host)"),
            ),

            // SOLUCIÓN: Usamos Expanded
            // Esto le dice al módulo: "Toma todo el espacio sobrante de la pantalla"
            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias, // Opcional: para redondear bordes
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),
                // Aquí vive tu aplicación de FlutterFlow encapsulada
                child: const ModuloFlutterFlow(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}