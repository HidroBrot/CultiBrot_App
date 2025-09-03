import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'sensores.dart';
import 'reles.dart';
import 'cultibrot.dart';
import 'metgebrot.dart';
import 'socialbrot.dart';
import 'tienda.dart';
import 'login.dart'; // 👈 necesario para volver al login

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

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

  Future<void> _logout() async {
    await FirebaseAuth.instance.signOut();
    // 🔄 Redirige al login
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("📊 HidroBrot - Panel"),
        backgroundColor: Colors.teal[900],
        actions: [
          IconButton(
            onPressed: _logout,
            icon: const Icon(Icons.logout),
            tooltip: "Cerrar sesión",
          ),
        ],
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
