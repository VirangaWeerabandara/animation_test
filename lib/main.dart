import 'package:animation_test/Explicit%20Animation.dart';
import 'package:animation_test/HeroAnimation.dart';
import 'package:animation_test/ImplicitAnimation.dart';
import 'package:animation_test/PhysicsBasedAnimation.dart';
import 'package:animation_test/TweenAnimation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HeroAnimation());
  }
}
