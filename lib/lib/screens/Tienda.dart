import 'package:flutter/material.dart';

class TiendaScreen extends StatelessWidget {
  const TiendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🛒 Tienda HidroBrot")),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            "Catálogo oficial HidroBrot",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),

          Text("📦 Accesorios disponibles:"),
          Text("• NutriBrot (control de nutrientes y dosificación)"),
          Text("• LlumBrot (luces inteligentes con amanecer/anochecer)"),
          Text("• CO₂Brot (inyección inteligente de CO₂)"),
          Text("• AigoGrossaBrot (depósito de emergencia inteligente 60L)"),
          Text("• CentralBrot (pantalla central de control)"),
          Text("• CamBrot (cámara de cultivo integrada)"),
          Text("• SolarBrot (respaldo solar de emergencia)"),
          Text("• Fundas Pro (aislamiento térmico para cubos y tapas)"),
          Text("• FredBrot (control de aire acondicionado futuro)"),

          SizedBox(height: 20),
          Text(
            "📌 Nota importante:",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "El tiempo de entrega depende del modelo y cantidad, ya que estamos en plena expansión.",
          ),
        ],
      ),
    );
  }
}
