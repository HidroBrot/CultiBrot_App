import 'package:flutter/material.dart';

// Importa todas las pantallas que ya creaste
import 'pantallas/Sensores.dart';
import 'pantallas/reles.dart';
import 'pantallas/cultiBrot.dart';
import 'pantallas/MetgeBrot.dart';
import 'pantallas/SocialBrot.dart';
import 'pantallas/Tienda.dart';

void main() {
  runApp(const HidroBrotApp());
}

class HidroBrotApp extends StatelessWidget {
  const HidroBrotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicación HidroBrot',
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

  // Aquí conectamos las pantallas creadas
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
      appBar: AppBar(
        title: const Text('Aplicación HidroBrot'),
        centerTitle: true,
      ),
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
