import 'package:flutter/material.dart';

class SocialBrotScreen extends StatelessWidget {
  const SocialBrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🌐 SocialBrot - Comunidad")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "👥 Comunidad privada SocialBrot",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            Text("📌 Funciones principales:"),
            Text("• Publicar fotos, vídeos y escritos relacionados con cultivo"),
            Text("• Seguridad anti-captura y anti-descarga"),
            Text("• Sistema de puntos y ranking por logros"),
            Text("• Sorteos trimestrales de accesorios HidroBrot"),
            Text("• Sorteo anual de un kit HibridoBrot para los top 10"),

            SizedBox(height: 20),
            Text(
              "Ejemplo de muro social:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("🔹 Usuario1: Mi planta creció 10 cm esta semana 🌱"),
            Text("🔹 Usuario2: Usando NutriBrot, los resultados son brutales 💧"),
            Text("🔹 Usuario3: Conseguí controlar la humedad con AigoGrossaBrot ✅"),
          ],
        ),
      ),
    );
  }
}
