import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const HidroBrotApp());
}

class HidroBrotApp extends StatelessWidget {
  const HidroBrotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HidroBrot',
      theme: ThemeData.dark(),
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

  final List<Widget> _pages = const [
    Center(child: Text("Sensores")),
    Center(child: Text("Relés - Caja 2")),
    Center(child: Text("CultiBrot - Seguimiento")),
    Center(child: Text("MetgeBrot - Diagnóstico")),
    Center(child: Text("SocialBrot - Comunidad")),
    Center(child: Text("Tienda / Accesorios")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HidroBrot App')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.sensors),
            label: "Sensores",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power),
            label: "Relés",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: "CultiBrot",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: "MetgeBrot",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "SocialBrot",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: "Tienda",
          ),
        ],
      ),
    );
  }
}
