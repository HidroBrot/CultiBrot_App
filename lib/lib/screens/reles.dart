import 'package:flutter/material.dart';

class RelesScreen extends StatefulWidget {
  final String lang;
  const RelesScreen({super.key, this.lang = 'es'});

  @override
  State<RelesScreen> createState() => _RelesScreenState();
}

class _RelesScreenState extends State<RelesScreen> {
  // 🌍 Traducciones
  static const Map<String, Map<String, String>> texts = {
    "es": {
      "title": "⚡ Relés - Caja 2",
      "vent": "Ventilación",
      "ext": "Extracción",
      "luces": "Luces (LlumBrot)",
      "aigo": "AigoGrossaBrot",
      "nutri": "NutriBrot",
      "bomba": "Bomba circulación",
      "nebu": "Nebulizadores",
      "humi": "Humidificador",
      "oxi": "Oxigenador",
      "solar": "SolarBrot Emergencia",
      "fred": "FredBrot (A/A)",
      "desh": "Deshumidificador",
    },
    "en": {
      "title": "⚡ Relays - Box 2",
      "vent": "Ventilation",
      "ext": "Extraction",
      "luces": "Lights (LlumBrot)",
      "aigo": "AigoGrossaBrot",
      "nutri": "NutriBrot",
      "bomba": "Circulation Pump",
      "nebu": "Nebulizers",
      "humi": "Humidifier",
      "oxi": "Oxygenator",
      "solar": "SolarBrot Emergency",
      "fred": "FredBrot (A/C)",
      "desh": "Dehumidifier",
    },
    "de": {
      "title": "⚡ Relais - Box 2",
      "vent": "Belüftung",
      "ext": "Absaugung",
      "luces": "Lichter (LlumBrot)",
      "aigo": "AigoGrossaBrot",
      "nutri": "NutriBrot",
      "bomba": "Umwälzpumpe",
      "nebu": "Nebelgeräte",
      "humi": "Luftbefeuchter",
      "oxi": "Sauerstoffgeber",
      "solar": "SolarBrot Notfall",
      "fred": "FredBrot (Klimaanlage)",
      "desh": "Entfeuchter",
    },
    "fr": {
      "title": "⚡ Relais - Boîte 2",
      "vent": "Ventilation",
      "ext": "Extraction",
      "luces": "Lumières (LlumBrot)",
      "aigo": "AigoGrossaBrot",
      "nutri": "NutriBrot",
      "bomba": "Pompe de circulation",
      "nebu": "Nébulisateurs",
      "humi": "Humidificateur",
      "oxi": "Oxygénateur",
      "solar": "SolarBrot Urgence",
      "fred": "FredBrot (Clim)",
      "desh": "Déshumidificateur",
    },
  };

  final Map<String, bool> _states = {
    "vent": false,
    "ext": false,
    "luces": false,
    "aigo": false,
    "nutri": false,
    "bomba": false,
    "nebu": false,
    "humi": false,
    "oxi": false,
    "solar": false,
    "fred": false,
    "desh": false,
  };

  void _toggle(String key) {
    setState(() {
      _states[key] = !_states[key]!;
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = texts[widget.lang] ?? texts["es"]!;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(t["title"]!),
        backgroundColor: Colors.grey[900],
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        children: _states.keys.map((k) {
          return _relayCard(t[k]!, _states[k]!, () => _toggle(k));
        }).toList(),
      ),
    );
  }

  Widget _relayCard(String label, bool state, VoidCallback onTap) {
    return Card(
      color: state ? Colors.green[700] : Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(state ? Icons.toggle_on : Icons.toggle_off,
                  color: Colors.white, size: 50),
              const SizedBox(height: 10),
              Text(
                label,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              Text(
                state ? "ON" : "OFF",
                style: TextStyle(
                  color: state ? Colors.greenAccent : Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
