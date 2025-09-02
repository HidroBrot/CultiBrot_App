import 'package:flutter/material.dart';

// Importar todas las pantallas (asegúrate de que existen en /lib/screens)
import 'screens/dashboard.dart';
import 'screens/sensores.dart';
import 'screens/reles.dart';
import 'screens/cultibrot.dart';
import 'screens/metgebrot.dart';
import 'screens/socialbrot.dart';
import 'screens/tienda.dart';
import 'screens/login.dart';

void main() {
  runApp(const HidroBrotApp());
}

class HidroBrotApp extends StatelessWidget {
  const HidroBrotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HidroBrot App',
      theme: ThemeData.dark(), // Tema oscuro por defecto
      home: const DashboardScreen(),
    );
  }
}
