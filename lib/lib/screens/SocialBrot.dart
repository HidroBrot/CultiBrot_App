import 'package:flutter/material.dart';

class SocialBrotScreen extends StatelessWidget {
  const SocialBrotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🌱 SocialBrot - Comunidad"),
        backgroundColor: Colors.indigo[800],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Comparte tus cultivos y aprende con la comunidad",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),

          // Lista de publicaciones de ejemplo
          Expanded(
            child: ListView(
              children: const [
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child
