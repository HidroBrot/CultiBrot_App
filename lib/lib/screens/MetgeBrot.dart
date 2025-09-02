import 'package:flutter/material.dart';

class MetgeBrotScreen extends StatelessWidget {
  const MetgeBrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🩺 MetgeBrot - Diagnóstico")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "📷 Diagnóstico con IA",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text("➤ Sube una foto de tu planta"),
            Text("➤ La IA detectará plagas y carencias"),
            Text("➤ Te mostrará recomendaciones inmediatas"),
            Text("➤ Historial de diagnósticos anteriores"),

            SizedBox(height: 20),
            Text(
              "Ejemplo de resultados:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("• Plaga detectada: Ácaros rojos"),
            Text("• Carencia: Nitrógeno bajo"),
            Text("• Solución sugerida: Aplicar fertilizante NPK 20-10-10"),
          ],
        ),
      ),
    );
  }
}
