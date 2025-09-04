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
      "timeline": "Timeline
