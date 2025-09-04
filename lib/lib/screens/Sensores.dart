import 'package:flutter/material.dart';

class SensoresScreen extends StatelessWidget {
  final String lang;
  const SensoresScreen({super.key, this.lang = 'es'});

  static const Map<String, Map<String, String>> texts = {
    "es": {
      "title": "Sensores HidroBrot",
      "tempAmb": "🌡️ Temp. Ambiente",
      "hum": "💧 Humedad",
      "tempAgua": "🌊 Temp. Agua",
      "nivel": "📦 Nivel Agua",
      "ph": "⚗️ pH",
      "ec": "🔌 EC",
      "luz": "☀️ Luz",
      "co2": "🟢 CO₂",
    },
    "en": {
      "title": "HidroBrot Sensors",
      "tempAmb": "🌡️ Air Temp",
      "hum": "💧 Humidity",
      "tempAgua": "🌊 Water Temp",
      "nivel": "📦 Water Level",
      "ph": "⚗️ pH",
      "ec": "🔌 EC",
      "luz": "☀️ Light",
      "co2": "🟢 CO₂",
    },
    "de": {
      "title": "HidroBrot Sensoren",
      "tempAmb": "🌡️ Lufttemp.",
      "hum": "💧 Feuchtigkeit",
      "tempAgua": "🌊 Wassertemp.",
      "nivel": "📦 Wasserstand",
      "ph": "⚗️ pH",
      "ec": "🔌 EC",
      "luz": "☀️ Licht",
      "co2": "🟢 CO₂",
    },
    "fr": {
      "title": "Capteurs HidroBrot",
      "tempAmb": "🌡️ Temp. Air",
      "hum": "💧 Humidité",
      "tempAgua": "🌊 Temp. Eau",
      "nivel": "📦 Niveau Eau",
      "ph": "⚗️ pH",
      "ec": "🔌 EC",
      "luz": "☀️ Lumière",
      "co2": "🟢 CO₂",
    },
  };

  @override
  Widget build(BuildContext context) {
    final t = texts[lang] ?? texts["es"]!;

    return Scaffold(
      appBar: AppBar(title: Text(t["title"]!), backgroundColor: Colors.green[900]),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: [
          _sensorCard(t["tempAmb"]!, "25 °C"),
          _sensorCard(t["hum"]!, "60 %"),
          _sensorCard(t["tempAgua"]!, "22 °C"),
          _sensorCard(t["nivel"]!, "75 %"),
          _sensorCard(t["ph"]!, "6.2"),
          _sensorCard(t["ec"]!, "1.8 mS/cm"),
          _sensorCard(t["luz"]!, "4500 lux"),
          _sensorCard(t["co2"]!, "800 ppm"),
        ],
      ),
    );
  }

  Widget _sensorCard(String label, String value) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 8),
            Text(value, style: const TextStyle(color: Colors.greenAccent, fontSize: 18, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
