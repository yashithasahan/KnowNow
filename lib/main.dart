import 'package:flutter/material.dart';
import 'package:knownow/screens/register/register.dart';
import 'package:knownow/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Know now',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}
