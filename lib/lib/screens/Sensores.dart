import 'package:flutter/material.dart';

class SensoresScreen extends StatelessWidget {
  const SensoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sensores")),
      body: const Center(
        child: Text(
          "Aquí verás los sensores en tiempo real (Temperatura, Humedad, pH, EC, CO₂, Luz, Agua...)",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
