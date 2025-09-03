import 'package:flutter/material.dart';

class TiendaScreen extends StatelessWidget {
  const TiendaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🛒 Tienda HidroBrot"),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ProductoCard(
            nombre: "NutriBrot",
            descripcion: "Pack de nutrientes inteligentes (A+B, pH+, pH-, EC, limpieza).",
            precio: "49,99 €",
            icono: Icons.water_drop,
          ),
          ProductoCard(
            nombre: "LlumBrot",
            descripcion: "Sistema de iluminación LED con amanecer/anochecer.",
            precio: "129,99 €",
            icono: Icons.lightbulb,
          ),
          ProductoCard(
            nombre: "CO₂Brot",
            descripcion: "Generador de CO₂ optimizado para cultivos.",
            precio: "89,99 €",
            icono: Icons.cloud,
          ),
          ProductoCard(
            nombre: "AigoGrossaBrot",
            descripcion: "Depósito de emergencia inteligente con 60L y bomba incluida.",
            precio: "159,99 €",
            icono: Icons.storage,
          ),
          ProductoCard(
            nombre: "SolarBrot",
            descripcion: "Módulo solar de respaldo en caso de corte eléctrico.",
            precio: "199,99 €",
            icono: Icons.solar_power,
          ),
          ProductoCard(
            nombre: "FredBrot (Próximamente)",
            descripcion: "Mini aire acondicionado diseñado para HidroBrot.",
            precio: "Pronto disponible",
            icono: Icons.ac_unit,
          ),
        ],
      ),
    );
  }
}

class ProductoCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final String precio;
  final IconData icono;

  const ProductoCard({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(icono, size: 40, color: Colors.deepPurple),
        title: Text(
          nombre,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(descripcion),
        trailing: Text(
          precio,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
    );
  }
}
