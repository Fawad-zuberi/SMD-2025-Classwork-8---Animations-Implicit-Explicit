// Explicit Animation
import 'package:flutter/material.dart';

class FadeInLogo extends StatefulWidget {
  const FadeInLogo({super.key});

  @override
  State<FadeInLogo> createState() => _FadeInLogoState();
}

class _FadeInLogoState extends State<FadeInLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    _controller.forward(); // Starts animation
  }

  @override
  void dispose() {
    _controller.dispose(); // Clean up
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: FlutterLogo(size: 100),
    );
  }
}
