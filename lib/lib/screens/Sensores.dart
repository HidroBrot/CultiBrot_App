import 'package:flutter/material.dart';

class SensoresScreen extends StatelessWidget {
  const SensoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sensores HidroBrot"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("📡 Sensores en tiempo real:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text("🌡️ Temperatura ambiente: 25 ºC"),
            Text("💧 Humedad ambiente: 60 %"),
            Text("🌊 Temperatura agua: 22 ºC"),
            Text("📏 Nivel agua: 75 %"),
            Text("⚡ pH: 6.2"),
            Text("💡 EC: 1.8 mS/cm"),
            Text("☀️ Luz: 4500 lux"),
            Text("🌬️ CO₂: 800 ppm"),
          ],
        ),
      ),
    );
  }
}
