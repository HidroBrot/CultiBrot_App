import 'package:flutter/material.dart';

class TiendaScreen extends StatelessWidget {
  final String lang;
  const TiendaScreen({super.key, this.lang = 'es'});

  static const Map<String, Map<String, String>> texts = {
    "es": {
      "title": "🛒 Tienda HidroBrot",
      "nutri": "NutriBrot",
      "nutriDesc": "Pack de nutrientes inteligentes (A+B, pH+, pH-, EC, limpieza).",
      "llum": "LlumBrot",
      "llumDesc": "Sistema LED con amanecer/anochecer.",
      "co2": "CO₂Brot",
      "co2Desc": "Control inteligente de CO₂ para cultivos.",
      "aigo": "AigoGrossaBrot",
      "aigoDesc": "Depósito de emergencia inteligente 60L con bomba.",
      "solar": "SolarBrot",
      "solarDesc": "Módulo solar de respaldo en caso de corte eléctrico.",
      "fred": "FredBrot (Próximamente)",
      "fredDesc": "Mini aire acondicionado diseñado para HidroBrot.",
      "price": "Precio",
    },
    "en": {
      "title": "🛒 HidroBrot Store",
      "nutri": "NutriBrot",
      "nutriDesc": "Smart nutrient pack (A+B, pH+, pH-, EC, cleaning).",
      "llum": "LlumBrot",
      "llumDesc": "LED system with sunrise/sunset.",
      "co2": "CO₂Brot",
      "co2Desc": "Smart CO₂ control for crops.",
      "aigo": "AigoGrossaBrot",
      "aigoDesc": "60L smart emergency tank with pump.",
      "solar": "SolarBrot",
      "solarDesc": "Solar backup module in case of power outage.",
      "fred": "FredBrot (Coming soon)",
      "fredDesc": "Mini air conditioner designed for HidroBrot.",
      "price": "Price",
    },
    "de": {
      "title": "🛒 HidroBrot Shop",
      "nutri": "NutriBrot",
      "nutriDesc": "Intelligentes Nährstoffpaket (A+B, pH+, pH-, EC, Reinigung).",
      "llum": "LlumBrot",
      "llumDesc": "LED-System mit Sonnenaufgang/Sonnenuntergang.",
      "co2": "CO₂Brot",
      "co2Desc": "Intelligente CO₂-Steuerung für Pflanzen.",
      "aigo": "AigoGrossaBrot",
      "aigoDesc": "60L intelligenter Notfalltank mit Pumpe.",
      "solar": "SolarBrot",
      "solarDesc": "Solarmodul für Notfälle bei Stromausfall.",
      "fred": "FredBrot (Bald verfügbar)",
      "fredDesc": "Mini-Klimaanlage für HidroBrot.",
      "price": "Preis",
    },
    "fr": {
      "title": "🛒 Boutique HidroBrot",
      "nutri": "NutriBrot",
      "nutriDesc": "Pack de nutriments intelligents (A+B, pH+, pH-, CE, nettoyage).",
      "llum": "LlumBrot",
      "llumDesc": "Système LED avec lever/coucher de soleil.",
      "co2": "CO₂Brot",
      "co2Desc": "Contrôle intelligent du CO₂ pour cultures.",
      "aigo": "AigoGrossaBrot",
      "aigoDesc": "Réservoir d'urgence intelligent 60L avec pompe.",
      "solar": "SolarBrot",
      "solarDesc": "Module solaire de secours en cas de panne.",
      "fred": "FredBrot (Bientôt)",
      "fredDesc": "Mini climatiseur conçu pour HidroBrot.",
      "price": "Prix",
    },
  };

  @override
  Widget build(BuildContext context) {
    final t = texts[lang] ?? texts["es"]!;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(t["title"]!),
        backgroundColor: Colors.deepPurple[800],
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          _productoCard(Icons.water_drop, t["nutri"]!, t["nutriDesc"]!, "49,99 €"),
          _productoCard(Icons.lightbulb, t["llum"]!, t["llumDesc"]!, "129,99 €"),
          _productoCard(Icons.cloud, t["co2"]!, t["co2Desc"]!, "89,99 €"),
          _productoCard(Icons.storage, t["aigo"]!, t["aigoDesc"]!, "159,99 €"),
          _productoCard(Icons.solar_power, t["solar"]!, t["solarDesc"]!, "199,99 €"),
          _productoCard(Icons.ac_unit, t["fred"]!, t["fredDesc"]!, "—"),
        ],
      ),
    );
  }

  Widget _productoCard(IconData icon, String nombre, String descripcion, String precio) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: Colors.greenAccent),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(nombre,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const SizedBox(height: 5),
                  Text(descripcion,
                      style: const TextStyle(color: Colors.white70)),
                  const SizedBox(height: 5),
                  Text("💶 $precio",
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
