import 'package:flutter/material.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hero Animation'),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondScreen()),
            );
          },
          child: const Hero(
            tag: 'hero-tag',
            child: FlutterLogo(size: 100.0),
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Hero(
          tag: 'hero-tag',
          child: FlutterLogo(size: 200.0),
        ),
      ),
    );
  }
}
