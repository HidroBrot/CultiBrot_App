import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HidroBrot"),
        backgroundColor: Colors.green[800],
        centerTitle: true,
      ),
      body: Container(
        color: Colors.green[50], // Fondo suave
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "🌱 Cultivo inteligente en tu bolsillo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),

            // Botones principales
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildMenuButton(
                      context, Icons.sensors, "Sensores", Colors.green),
                  _buildMenuButton(
                      context, Icons.power, "Relés", Colors.teal),
                  _buildMenuButton(
                      context, Icons.timeline, "CultiBrot", Colors.blue),
                  _buildMenuButton(
                      context, Icons.medical_services, "MetgeBrot", Colors.red),
                  _buildMenuButton(
                      context, Icons.group, "SocialBrot", Colors.orange),
                  _buildMenuButton(
                      context, Icons.shopping_cart, "Tienda", Colors.brown),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para botones reutilizables
  static Widget _buildMenuButton(
      BuildContext context, IconData icon, String title, Color color) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.all(12),
      ),
      onPressed: () {
        // Aquí enlazaremos la navegación a cada pantalla
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Abrir: $title")),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          const SizedBox(height: 10),
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
