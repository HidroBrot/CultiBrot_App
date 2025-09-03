import 'package:flutter/material.dart';

class SensoresScreen extends StatelessWidget {
  const SensoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📡 Sensores HidroBrot"),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            SensorCard(
              icon: Icons.thermostat,
              label: "Temp. Ambiente",
              value: "25 °C",
            ),
            SensorCard(
              icon: Icons.water_drop,
              label: "Humedad",
              value: "60 %",
            ),
            SensorCard(
              icon: Icons.opacity,
              label: "Temp. Agua",
              value: "22 °C",
            ),
            SensorCard(
              icon: Icons.storage,
              label: "Nivel Agua",
              value: "75 %",
            ),
            SensorCard(
              icon: Icons.science,
              label: "pH",
              value: "6.2",
            ),
            SensorCard(
              icon: Icons.electrical_services,
              label: "EC",
              value: "1.8 mS/cm",
            ),
            SensorCard(
              icon: Icons.wb_sunny,
              label: "Luz",
              value: "4500 lux",
            ),
            SensorCard(
              icon: Icons.air,
              label: "CO₂",
              value: "800 ppm",
            ),
          ],
        ),
      ),
    );
  }
}

class SensorCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const SensorCard({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 6,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.green, size: 40),
            const SizedBox(height: 10),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5),
            Text(
              value,
              style: const TextStyle(
                color: Colors.greenAccent,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
