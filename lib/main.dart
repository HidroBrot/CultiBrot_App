import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Importamos pantallas
import 'screens/dashboard.dart';
import 'screens/login.dart';

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
      title: 'HidroBrot App',
      theme: ThemeData.dark(), // Tema oscuro por defecto
      home: const AuthGate(),
    );
  }
}

// Puerta de entrada -> decide login o dashboard
class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (snapshot.hasData) {
          return const DashboardScreen(); // Usuario logueado
        }
        return const LoginScreen(); // Usuario no logueado
      },
    );
  }
}
