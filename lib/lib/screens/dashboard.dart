import 'package:flutter/material.dart';
import 'sensores.dart';
import 'reles.dart';
import 'cultibrot.dart';
import 'metgebrot.dart';
import 'socialbrot.dart';
import 'tienda.dart';

class DashboardScreen extends StatefulWidget {
  final String lang;
  const DashboardScreen({super.key, this.lang = 'es'});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      SensoresScreen(lang: widget.lang),
      RelesScreen(lang: widget.lang),
      CultiBrotScreen(lang: widget.lang),
      MetgeBrotScreen(lang: widget.lang),
      SocialBrotScreen(lang: widget.lang),
      TiendaScreen(lang: widget.lang),
    ];
  }

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: Colors.grey,
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
