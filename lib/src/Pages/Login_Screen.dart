import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Text(
          "Login Screen",
          style: TextStyle(
            color: Theme.of(context).colorScheme.tertiary,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontFamily: "Inkfree",
          ),
        ),
      ),
    );
  }
}
