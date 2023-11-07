import 'package:flutter/material.dart';

class FontScreen extends StatelessWidget {
  const FontScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "The Marvel",
        style: TextStyle(
          fontFamily: 'Action_Man',
          fontSize: 50,
        ),
      ),
    );
  }
}
