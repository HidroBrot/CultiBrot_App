import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  final String lang;
  const LoginScreen({super.key, this.lang = 'es'});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _errorMessage = "";

  void _login() {
    setState(() => _errorMessage = "");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen(lang: widget.lang)),
    );
  }

  void _loginAnon() {
    setState(() => _errorMessage = "");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => DashboardScreen(lang: widget.lang)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("🔑 HidroBrot - Login"), backgroundColor: Colors.grey[900]),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(controller: _emailController, decoration: const InputDecoration(labelText: "Email")),
          TextField(controller: _passwordController, obscureText: true, decoration: const InputDecoration(labelText: "Contraseña")),
          const SizedBox(height: 20),
          ElevatedButton(onPressed: _login, child: const Text("Iniciar sesión")),
          ElevatedButton(onPressed: _loginAnon, child: const Text("Entrar como invitado")),
          if (_errorMessage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(_errorMessage, style: const TextStyle(color: Colors.red)),
            ),
        ]),
      ),
    );
  }
}
