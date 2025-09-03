import 'package:flutter/material.dart';

class MetgeBrotScreen extends StatelessWidget {
  const MetgeBrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🩺 MetgeBrot - Diagnóstico"),
        backgroundColor: Colors.redAccent[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Diagnóstico Inteligente",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Botón para subir foto
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Aquí luego conectamos cámara o galería
                },
                icon: const Icon(Icons.camera_alt),
                label: const Text("Subir foto de la planta"),
              ),
            ),

            const SizedBox(height: 30),

            // Resultados de diagnóstico de ejemplo
            Expanded(
              child: ListView(
                children: const [
                  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.bug_report, color: Colors.red),
                      title: Text("Posible plaga detectada"),
                      subtitle: Text("Ácaros en hojas superiores."),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.science, color: Colors.orange),
                      title: Text("Carencia nutricional"),
                      subtitle: Text("Falta de magnesio: hojas amarillas."),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.check_circle, color: Colors.green),
                      title: Text("Estado general"),
                      subtitle: Text("La planta está en buen estado."),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
