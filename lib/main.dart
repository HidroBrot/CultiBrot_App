import 'package:flutter/material.dart';

void main() {
  runApp(const CultiBrotApp());
}

class CultiBrotApp extends StatelessWidget {
  const CultiBrotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CultiBrot',
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CultiBrot')),
      body: const Center(
        child: Text(
          'Bienvenido a CultiBrot',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
