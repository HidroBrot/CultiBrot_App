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
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            RelayCard(icon: Icons.air, label: "Ventilación"),
            RelayCard(icon: Icons.waves, label: "Extracción"),
            RelayCard(icon: Icons.lightbulb, label: "LlumBrot (Luces)"),
            RelayCard(icon: Icons.water_drop, label: "AigoGrossaBrot"),
            RelayCard(icon: Icons.science, label: "NutriBrot"),
            RelayCard(icon: Icons.water, label: "Bomba circulación"),
            RelayCard(icon: Icons.cloud, label: "Nebulizadores"),
            RelayCard(icon: Icons.ac_unit, label: "Humidificador"),
            RelayCard(icon: Icons.bubble_chart, label: "Oxigenador"),
            RelayCard(icon: Icons.solar_power, label: "SolarBrot Emergencia"),
            RelayCard(icon: Icons.ac_unit_outlined, label: "FredBrot (A/A futuro)"),
            RelayCard(icon: Icons.water_damage, label: "Deshumidificador"),
          ],
        ),
      ),
    );
  }
}

class RelayCard extends StatefulWidget {
  final IconData icon;
  final String label;

  const RelayCard({super.key, required this.icon, required this.label});

  @override
  State<RelayCard> createState() => _RelayCardState();
}

class _RelayCardState extends State<RelayCard> {
  bool _isOn = false;

  void _toggleRelay() {
    setState(() {
      _isOn = !_isOn;
    });

    // Aquí se conectará con Firebase/ESP32 para activar el relé real
    print("${widget.label} -> ${_isOn ? "Encendido" : "Apagado"}");
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _isOn ? Colors.green[700] : Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: _toggleRelay,
        borderRadius: BorderRadius.circular(15),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(widget.icon, size: 40, color: Colors.white),
              const SizedBox(height: 10),
              Text(
                widget.label,
                style: const TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                _isOn ? "ON" : "OFF",
                style: TextStyle(
                  color: _isOn ? Colors.lightGreenAccent : Colors.redAccent,
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
