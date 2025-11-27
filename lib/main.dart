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
          title: const Text("Super App", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Componente Local (App Host)"),
            ),

            Expanded(
              child: Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: const ModuloFlutterFlow(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}