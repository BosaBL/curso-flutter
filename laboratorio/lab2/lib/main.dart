// INTEGRANTES
// Alvaro Ibáñez
// Christopher Sepúlveda

import 'package:flutter/material.dart';
import 'package:lab2/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratorio 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        backgroundColor: Colors.lightBlue,
        body: LoginPage(),
      ),
    );
  }
}
