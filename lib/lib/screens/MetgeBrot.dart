import 'package:flutter/material.dart';

class MetgeBrotScreen extends StatelessWidget {
  final String lang;
  const MetgeBrotScreen({super.key, this.lang = 'es'});

  static const Map<String, Map<String, String>> texts = {
    "es": {
      "title": "🩺 MetgeBrot - Diagnóstico",
      "upload": "Subir foto de la planta",
      "plaga": "Posible plaga detectada",
      "plagaDesc": "Ácaros en hojas superiores",
      "carencia": "Carencia nutricional",
      "carenciaDesc": "Falta de magnesio: hojas amarillas",
      "estado": "Estado general",
      "estadoDesc": "La planta está en buen estado",
    },
    "en": {
      "title": "🩺 MetgeBrot - Diagnosis",
      "upload": "Upload plant photo",
      "plaga": "Possible pest detected",
      "plagaDesc": "Mites on upper leaves",
      "carencia": "Nutrient deficiency",
      "carenciaDesc": "Magnesium deficiency: yellow leaves",
      "estado": "General state",
      "estadoDesc": "The plant is in good condition",
    },
    "de": {
      "title": "🩺 MetgeBrot - Diagnose",
      "upload": "Pflanzenfoto hochladen",
      "plaga": "Möglicher Schädlingsbefall",
      "plagaDesc": "Milben auf oberen Blättern",
      "carencia": "Nährstoffmangel",
      "carenciaDesc": "Magnesiummangel: gelbe Blätter",
      "estado": "Allgemeiner Zustand",
      "estadoDesc": "Die Pflanze ist in gutem Zustand",
    },
    "fr": {
      "title": "🩺 MetgeBrot - Diagnostic",
      "upload": "Télécharger une photo de la plante",
      "plaga": "Ravageur possible détecté",
      "plagaDesc": "Acarien sur les feuilles supérieures",
      "carencia": "Carence nutritionnelle",
      "carenciaDesc": "Manque de magnésium : feuilles jaunes",
      "estado": "État général",
      "estadoDesc": "La plante est en bon état",
    },
  };

  @override
  Widget build(BuildContext context) {
    final t = texts[lang] ?? texts["es"]!;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(t["title"]!),
        backgroundColor: Colors.redAccent[700],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  // Lógica de subir foto (cámara/galería)
                },
                icon: const Icon(Icons.camera_alt),
                label: Text(t["upload"]!),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: ListView(
                children: [
                  _diagnosticCard(Icons.bug_report, Colors.red, t["plaga"]!, t["plagaDesc"]!),
                  _diagnosticCard(Icons.science, Colors.orange, t["carencia"]!, t["carenciaDesc"]!),
                  _diagnosticCard(Icons.check_circle, Colors.green, t["estado"]!, t["estadoDesc"]!),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _diagnosticCard(IconData icon, Color color, String title, String subtitle) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icon, color: color, size: 35),
        title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.white70)),
      ),
    );
  }
}
