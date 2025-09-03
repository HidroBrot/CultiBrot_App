import 'package:flutter/material.dart';

// Importamos las demás pantallas
import 'sensores.dart';
import 'reles.dart';
import 'cultibrot.dart';
import 'metgebrot.dart';
import 'socialbrot.dart';
import 'tienda.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  // Aquí conectamos las pantallas
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
        title: const Text('HidroBrot App'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sensors),
            label: 'Sensores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power),
            label: 'Relés',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'CultiBrot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: 'MetgeBrot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'SocialBrot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Tienda',
          ),
        ],
      ),
    );
  }
}
