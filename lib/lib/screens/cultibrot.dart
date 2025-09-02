import 'package:flutter/material.dart';

class CultiBrotScreen extends StatelessWidget {
  const CultiBrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🌱 CultiBrot - Seguimiento")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "📊 Timeline del cultivo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text("➤ Fecha de siembra: 01/09/2025"),
            Text("➤ Estado actual: Crecimiento"),
            Text("➤ Último riego: hace 3 horas"),
            Text("➤ Próximo riego: en 5 horas"),
            Text("➤ Temperatura media: 24 °C"),
            Text("➤ Humedad media: 65 %"),

            SizedBox(height: 20),
            Text(
              "Funciones:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("• Añadir notas y fotos de cultivo"),
            Text("• Generar informes en PDF/CSV"),
            Text("• Crear timelapse con imágenes"),
          ],
        ),
      ),
    );
  }
}
