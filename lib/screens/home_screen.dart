import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 202, 202),
      appBar: AppBar(
        elevation: 0,
        title: Center(
          child: Image.asset('assets/sketchess_logo.png', height: 150),
        ),
        backgroundColor: Color.fromARGB(255, 88, 67, 67),
      ),
      body: const Center(child: Text("Carreira")),
    );
  }
}
