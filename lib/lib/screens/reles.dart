import 'package:flutter/material.dart';

class RelesScreen extends StatelessWidget {
  const RelesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Relés - Caja 2")),
      body: const Center(
        child: Text(
          "Aquí controlarás ventilación, extracción, luces, bombas, nebulizadores, humidificador y oxigenador.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
