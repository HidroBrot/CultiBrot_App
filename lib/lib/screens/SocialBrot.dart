import 'package:flutter/material.dart';

class SocialBrotScreen extends StatelessWidget {
  final String lang;
  const SocialBrotScreen({super.key, this.lang = 'es'});

  static const Map<String, Map<String, String>> texts = {
    "es": {
      "title": "🌱 SocialBrot - Comunidad",
      "welcome": "Comparte tus cultivos con la comunidad",
      "newPost": "Nueva publicación",
      "example1": "Mis tomates ya tienen flor 🌸🍅",
      "example2": "Probando NutriBrot, ¡resultados increíbles!",
      "example3": "AigoGrossaBrot me salvó el riego 🚰",
    },
    "en": {
      "title": "🌱 SocialBrot - Community",
      "welcome": "Share your crops with the community",
      "newPost": "New post",
      "example1": "My tomatoes are flowering 🌸🍅",
      "example2": "Testing NutriBrot, amazing results!",
      "example3": "AigoGrossaBrot saved my irrigation 🚰",
    },
    "de": {
      "title": "🌱 SocialBrot - Gemeinschaft",
      "welcome": "Teile deine Pflanzen mit der Community",
      "newPost": "Neuer Beitrag",
      "example1": "Meine Tomaten blühen 🌸🍅",
      "example2": "NutriBrot ausprobiert, tolle Ergebnisse!",
      "example3": "AigoGrossaBrot hat meine Bewässerung gerettet 🚰",
    },
    "fr": {
      "title": "🌱 SocialBrot - Communauté",
      "welcome": "Partagez vos cultures avec la communauté",
      "newPost": "Nouvelle publication",
      "example1": "Mes tomates sont en fleurs 🌸🍅",
      "example2": "Test de NutriBrot, résultats incroyables !",
      "example3": "AigoGrossaBrot a sauvé mon arrosage 🚰",
    },
  };

  @override
  Widget build(BuildContext context) {
    final t = texts[lang] ?? texts["es"]!;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(t["title"]!),
        backgroundColor: Colors.indigo[800],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              t["welcome"]!,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white70,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _postCard("JuanGrow", t["example1"]!, Colors.green),
                _postCard("HydroAna", t["example2"]!, Colors.blue),
                _postCard("CarlosHidro", t["example3"]!, Colors.orange),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () {
                // lógica de añadir post
              },
              icon: const Icon(Icons.add_comment),
              label: Text(t["newPost"]!),
            ),
          ),
        ],
      ),
    );
  }

  Widget _postCard(String user, String content, Color avatarColor) {
    return Card(
      color: Colors.grey[900],
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: avatarColor,
                  child: Text(user[0], style: const TextStyle(color: Colors.white)),
                ),
                const SizedBox(width: 10),
                Text(user,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 10),
            Text(content,
                style: const TextStyle(color: Colors.white, fontSize: 16)),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.favorite, color: Colors.red, size: 20),
                SizedBox(width: 5),
                Text("23", style: TextStyle(color: Colors.white70)),
                SizedBox(width: 20),
                Icon(Icons.comment, color: Colors.blue, size: 20),
                SizedBox(width: 5),
                Text("5", style: TextStyle(color: Colors.white70)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
