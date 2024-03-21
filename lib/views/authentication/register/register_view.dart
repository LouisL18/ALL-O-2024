import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Nom',
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Prenom',
            ),
          ),
          PasswordField(), // Utilisation du PasswordField à la place du TextField pour le mot de passe
          ElevatedButton(
            onPressed: () {
              // Enregistrer l'utilisateur
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: _passwordController,
        obscureText: true, // Masque le texte entré
        decoration: InputDecoration(
          hintText: 'Password',
          labelText: 'Password',
        ),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }
}
