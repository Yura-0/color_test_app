import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

class ColorApp extends StatelessWidget {
  const ColorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
