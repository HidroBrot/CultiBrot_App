import 'package:flutter/material.dart';

// Importamos todas las pantallas
import 'screens/sensores.dart';
import 'screens/reles.dart';
import 'screens/cultibrot.dart';
import 'screens/metgebrot.dart';
import 'screens/socialbrot.dart';
import 'screens/tienda.dart';

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

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  // Conexión de todas las pantallas finales
  final List<Widget> _pages = const [
    SensoresScreen(),
    RelesScreen(),
    CultiBrotScreen(),
    MetgeBrotScreen(),
    SocialBrotScreen(),
    TiendaScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.sensors), label: 'Sensores'),
          BottomNavigationBarItem(icon: Icon(Icons.power), label: 'Relés'),
          BottomNavigationBarItem(icon: Icon(Icons.timeline), label: 'CultiBrot'),
          BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: 'MetgeBrot'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'SocialBrot'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Tienda'),
        ],
      ),
    );
  }
}
