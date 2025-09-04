import 'package:flutter/material.dart';

class CultiBrotScreen extends StatelessWidget {
  final String lang;
  const CultiBrotScreen({super.key, this.lang = 'es'});

  static const Map<String, Map<String, String>> texts = {
    "es": {
      "title": "🌱 CultiBrot - Seguimiento",
      "timeline": "Línea de tiempo",
      "add": "Añadir nota",
      "export": "Exportar PDF/CSV",
      "siembra": "Siembra",
      "crecimiento": "Crecimiento",
      "floracion": "Floración",
      "cosecha": "Cosecha",
    },
    "en": {
      "title": "🌱 CultiBrot - Tracking",
      "timeline": "Timeline",
      "add": "Add note",
      "export": "Export PDF/CSV",
      "siembra": "Sowing",
      "crecimiento": "Growth",
      "floracion": "Flowering",
      "cosecha": "Harvest",
    },
    "de": {
      "title": "🌱 CultiBrot - Verlauf",
      "timeline": "Zeitlinie",
      "add": "Notiz hinzufügen",
      "export": "PDF/CSV exportieren",
      "siembra": "Aussaat",
      "crecimiento": "Wachstum",
      "floracion": "Blüte",
      "cosecha": "Ernte",
    },
    "fr": {
      "title": "🌱 CultiBrot - Suivi",
      "timeline": "Chronologie",
      "add": "Ajouter une note",
      "export": "Exporter PDF/CSV",
      "siembra": "Semis",
      "crecimiento": "Croissance",
      "floracion": "Floraison",
      "cosecha": "Récolte",
    },
  };

  @override
  Widget build(BuildContext context) {
    final t = texts[lang] ?? texts["es"]!;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(t["title"]!),
        backgroundColor: Colors.teal[800],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(t["timeline"]!,
                style: const TextStyle(
                    color: Colors.greenAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  _timelineTile("01/03/2025", t["siembra"]!, "Inicio del cultivo"),
                  _timelineTile("15/03/2025", t["crecimiento"]!, "Fase vegetativa"),
                  _timelineTile("20/04/2025", t["floracion"]!, "Inicio de floración"),
                  _timelineTile("30/05/2025", t["cosecha"]!, "Listo para recolectar"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // lógica añadir nota
                  },
                  icon: const Icon(Icons.note_add),
                  label: Text(t["add"]!),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // lógica exportar
                  },
                  icon: const Icon(Icons.picture_as_pdf),
                  label: Text(t["export"]!),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _timelineTile(String fecha, String etapa, String desc) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: Colors.greenAccent, size: 30),
        title: Text(etapa,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        subtitle: Text(
          "$fecha\n$desc",
          style: const TextStyle(color: Colors.white70),
        ),
        isThreeLine: true,
      ),
    );
  }
}
