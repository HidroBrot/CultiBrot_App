import 'package:flutter/material.dart';

class RelesScreen extends StatelessWidget {
  const RelesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Control de Relés - Caja 2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("🔌 Control de dispositivos conectados:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("🌬️ Ventilación"),
            Text("💨 Extracción"),
            Text("💡 LlumBrot (Luces)"),
            Text("💧 AigoGrossaBrot (Riego Emergencia)"),
            Text("⚡ NutriBrot (Dosis nutrientes)"),
            Text("💦 Bomba de circulación"),
            Text("☁️ Nebulizadores"),
            Text("🌫️ Humidificador"),
            Text("💨 Oxigenador"),
            Text("☀️ SolarBrot (Emergencia corte eléctrico)"),
            Text("🌡️ Aire acondicionado (FredBrot futuro)"),
          ],
        ),
      ),
    );
  }
}
