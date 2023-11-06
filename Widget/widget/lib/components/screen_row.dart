import 'package:flutter/material.dart';

class ScreenRow extends StatelessWidget {
  const ScreenRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.share),
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down),
        ],
      ),
    );
  }
}
