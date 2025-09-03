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
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          PostCard(
            user: "JuanGrow",
            content: "Mis tomates ya tienen flor 🌸🍅",
            likes: 23,
            comments: 4,
          ),
          PostCard(
            user: "HydroAna",
            content: "Probando el módulo NutriBrot, increíble lo rápido que crecen 💧🌿",
            likes: 45,
            comments: 12,
          ),
          PostCard(
            user: "CarlosHidro",
            content: "Hoy instalé mi AigoGrossaBrot, el agua nunca falta 🚰",
            likes: 19,
            comments: 3,
          ),
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final String user;
  final String content;
  final int likes;
  final int comments;

  const PostCard({
    super.key,
    required this.user,
    required this.content,
    required this.likes,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.grey[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(user[0]),
                ),
                const SizedBox(width: 10),
                Text(
                  user,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              content,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red[400]),
                const SizedBox(width: 5),
                Text("$likes", style: const TextStyle(color: Colors.white)),
                const SizedBox(width: 20),
                Icon(Icons.comment, color: Colors.blue[300]),
                const SizedBox(width: 5),
                Text("$comments", style: const TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
