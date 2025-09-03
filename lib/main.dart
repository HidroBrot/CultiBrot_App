import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/splash.dart'; // ✅ Importamos el splash

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
      title: 'HidroBrot App',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.greenAccent,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const SplashScreen(), // ✅ Splash como pantalla inicial
    );
  }
}
