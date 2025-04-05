import 'package:cw_animations/animation_demo_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animations',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AnimationDemoPage(),
    );
  }
}
