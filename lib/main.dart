import 'package:animation_demo/Screens/AnaSayfa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Animation Demo",
      home: AnaSayfa(),
    );
  }
}