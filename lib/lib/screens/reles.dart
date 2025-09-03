import 'package:flutter/material.dart';

class RelesScreen extends StatelessWidget {
  const RelesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("⚡ Control de Relés - Caja 2"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          children: const [
            RelayCard(icon: Icons.air, label: "Ventilación"),
            RelayCard(icon: Icons.waves, label: "Extracción"),
            RelayCard(icon: Icons.lightbulb, label: "LlumBrot (Luces)"),
            RelayCard(icon: Icons.opacity, label: "AigoGrossaBrot"),
            RelayCard(icon: Icons.science, label: "NutriBrot"),
            RelayCard(icon: Icons.water, label: "Bomba circulación"),
            RelayCard(icon: Icons.cloud, label: "Nebulizadores"),
            RelayCard(icon: Icons.ac_unit, label: "Humidificador"),
            RelayCard(icon: Icons.bubble_chart, label: "Oxigenador"),
            RelayCard(icon: Icons.solar_power, label: "SolarBrot Emergencia"),
            RelayCard(icon: Icons.ac_unit, label: "FredBrot (A/A futuro)"),
          ],
        ),
      ),
    );
  }
}

class RelayCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const RelayCard({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.blue, size: 40),
            const SizedBox(height: 10),
            Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
            const SizedBox(height: 5),
            Switch(
              value: false,
              onChanged: (bool value) {
                // Aquí se conectará con la lógica real de control de relés
              },
              activeColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
