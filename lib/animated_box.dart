// Explicit
import 'package:flutter/material.dart';

class AnimatedBox extends StatefulWidget {
  const AnimatedBox({super.key});

  @override
  State<AnimatedBox> createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> {
  bool _isBig = false;

  void _toggleBoxSize() {
    setState(() {
      _isBig = !_isBig;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleBoxSize,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        width: _isBig ? 200 : 100,
        height: _isBig ? 200 : 100,
        decoration: BoxDecoration(
          color: _isBig ? Colors.blue : Colors.amber,
          borderRadius: BorderRadius.circular(_isBig ? 20 : 5),
        ),
        child: const Center(child: Text('Tap me')),
      ),
    );
  }
}
