import 'package:flutter/material.dart';

class TweenAnimation extends StatelessWidget {
  const TweenAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tween Animation'),
        ),
        body: Center(
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 200),
            duration: const Duration(seconds: 2),
            builder: (context, double value, child) {
              return Container(
                width: value,
                height: value,
                color: Colors.blue,
              );
            },
          ),
        ),
      ),
    );
  }
}
