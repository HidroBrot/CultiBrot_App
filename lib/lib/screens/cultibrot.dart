import 'package:flutter/material.dart';

class CultiBrotScreen extends StatelessWidget {
  const CultiBrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🌱 CultiBrot - Seguimiento"),
        backgroundColor: Colors.teal[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Cultivo: HidroBrot Demo",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Línea de tiempo simple (ejemplo)
            Expanded(
              child: ListView(
                children: const [
                  TimelineTile(
                      etapa: "Siembra",
                      fecha: "01/03/2025",
                      descripcion: "Inicio del cultivo."),
                  TimelineTile(
                      etapa: "Crecimiento",
                      fecha: "15/03/2025",
                      descripcion: "Fase vegetativa."),
                  TimelineTile(
                      etapa: "Floración",
                      fecha: "20/04/2025",
                      descripcion: "Inicio de floración."),
                  TimelineTile(
                      etapa: "Cosecha",
                      fecha: "30/05/2025",
                      descripcion: "Listo para recolectar."),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Botones de acción
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Aquí más adelante: añadir nota al cultivo
                  },
                  icon: const Icon(Icons.note_add),
                  label: const Text("Añadir Nota"),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // Aquí más adelante: exportar datos PDF/CSV
                  },
                  icon: const Icon(Icons.picture_as_pdf),
                  label: const Text("Exportar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para representar cada etapa del timeline
class TimelineTile extends StatelessWidget {
  final String etapa;
  final String fecha;
  final String descripcion;

  const TimelineTile({
    super.key,
    required this.etapa,
    required this.fecha,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: Colors.teal, size: 30),
        title: Text(
          etapa,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("$fecha\n$descripcion"),
        isThreeLine: true,
      ),
    );
  }
}
