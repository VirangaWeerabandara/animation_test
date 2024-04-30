import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<ImplicitAnimation> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Implicit Animation'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            width: _isExpanded ? 200 : 100,
            height: _isExpanded ? 200 : 100,
            color: Colors.blue,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: const Text('Toggle Size'),
            ),
          ),
        ),
      ),
    );
  }
}
