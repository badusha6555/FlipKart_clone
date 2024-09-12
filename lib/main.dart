import 'package:flutter/material.dart';
import 'package:kart_app/bottombar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Bottombar(),
        backgroundColor: Color.fromARGB(255, 0, 50, 251),
      ),
    );
  }
}
