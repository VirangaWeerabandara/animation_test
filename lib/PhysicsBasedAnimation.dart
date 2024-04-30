import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class PhysicsBasedAnimation extends StatefulWidget {
  const PhysicsBasedAnimation({super.key});

  @override
  State<PhysicsBasedAnimation> createState() => _PhysicsBasedAnimationState();
}

class _PhysicsBasedAnimationState extends State<PhysicsBasedAnimation>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Physics-based Animation'),
        ),
        body: Center(
          child: Draggable(
            feedback: const FlutterLogo(size: 100.0),
            childWhenDragging: Container(),
            onDragEnd: (details) {
              final Offset velocity = details.velocity.pixelsPerSecond;
              final simulation = SpringSimulation(
                  SpringDescription.withDampingRatio(
                      mass: 1.0, stiffness: 100.0, ratio: 1.0),
                  0.0,
                  300.0,
                  velocity as double);
              final controller = AnimationController.unbounded(vsync: this)
                ..animateWith(simulation);
              controller.addListener(() {});
              controller.forward();
            },
            child: const FlutterLogo(size: 100.0),
          ),
        ),
      ),
    );
  }
}
