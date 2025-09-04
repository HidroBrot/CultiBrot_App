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
    "fr
