import 'package:cw_animations/animated_box.dart';
import 'package:cw_animations/fade_in_logo.dart';
import 'package:flutter/material.dart';

class AnimationDemoPage extends StatelessWidget {
  const AnimationDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explicit & Implicit Animations')),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FadeInLogo(), // Explicit animation
          AnimatedBox(), // Implicit animation
        ],
      ),
    );
  }
}
