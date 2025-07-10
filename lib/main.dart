import 'package:flutter/material.dart';
import 'package:notepad/src/Components/OnBoardScreen.dart';
import 'package:notepad/src/Pages/Login_Screen.dart';
import 'package:notepad/src/Theme/theme.dart';
import 'package:notepad/src/Theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      theme: lightMode,
      darkTheme: darkMode,
      themeMode: Provider.of<ThemeProvider>(context).themeMode,
    );
  }
}
