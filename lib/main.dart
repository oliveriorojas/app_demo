import 'package:flutter/material.dart';
import 'windgets/youtube/barra_superior_youtube.dart';
import 'windgets/youtube/menu_lateral_youtube.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Estructura YouTube',
      home: Scaffold(body: Column()),
    );
  }
}
