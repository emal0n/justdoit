import 'package:flutter/material.dart';
import 'initialp.dart';

void main() {
  runApp(const Justdoit());
}

class Justdoit extends StatelessWidget {
  const Justdoit({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InitialPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}