import 'package:flutter/material.dart';

class ExplicitAnimation extends StatelessWidget {
  const ExplicitAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Explicit Animation'),
        ),
        body: const Center(
          child: MyAnimatedWidget(),
        ),
      ),
    );
  }
}

class MyAnimatedWidget extends StatefulWidget {
  const MyAnimatedWidget({super.key});

  @override
  _MyAnimatedWidgetState createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 0, end: 200).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _animation.value,
      height: _animation.value,
      color: Colors.blue,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
