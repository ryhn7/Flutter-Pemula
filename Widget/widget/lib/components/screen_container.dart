import 'package:flutter/material.dart';

class ScreenContainer extends StatelessWidget {
  const ScreenContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 14, 147, 208),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        child: const Text(
          'Rayhan Jago Flutter',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ));
  }
}
