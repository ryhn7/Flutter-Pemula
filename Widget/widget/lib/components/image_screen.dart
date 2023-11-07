import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      // From url
      // Image.network(
      //   'https://picsum.photos/200/300',
      //   width: 200,
      //   height: 200,
      //   ),
      // From assets
      Image.asset(
        'assets/image/superman.jpg',
        ),
    );
  }
}